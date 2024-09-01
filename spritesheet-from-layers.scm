(define (create-spritesheet image drawable)
  (let* (
          (layers (vector->list (cadr (gimp-image-get-layers image))))
          (num-layers (length layers))
          (max-width (apply max (map (lambda (layer) (car (gimp-drawable-width layer))) layers)))
          (max-height (apply max (map (lambda (layer) (car (gimp-drawable-height layer))) layers)))
          (spritesheet-width (* max-width num-layers))
          (spritesheet-height max-height)
          (spritesheet (car (gimp-image-new spritesheet-width spritesheet-height RGB)))
          (spritesheet-layer (car (gimp-layer-new spritesheet spritesheet-width spritesheet-height RGBA-IMAGE "Spritesheet" 100 NORMAL-MODE)))
        )

    ;; Add the transparent layer to the new image
    (gimp-image-add-layer spritesheet spritesheet-layer -1)

    ;; For each layer, copy it and position it in the new spritesheet
    (let loop ((current-layers layers) (i 0))
      (unless (null? current-layers)
        (let* ((layer (car current-layers))
               (layer-copy (car (gimp-layer-new-from-drawable layer spritesheet)))
               (x-offset (* i max-width)))

          ;; Move the copied layer to the correct position
          (gimp-layer-set-offsets layer-copy x-offset 0)

          ;; Add the layer to the new spritesheet
          (gimp-image-add-layer spritesheet layer-copy -1)

          ;; Repeat for the next layer
          (loop (cdr current-layers) (+ i 1))
        )
      )
    )

    ;; Merge all layers into a single layer
    (gimp-image-merge-visible-layers spritesheet CLIP-TO-IMAGE)

    ;; Display the new spritesheet image
    (gimp-display-new spritesheet)
  )
)

(script-fu-register
 "create-spritesheet"
 "Create Spritesheet from Layers"
 "Creates a spritesheet by arranging all layers in a single row and merges them into one layer."
 "sanjeyac" "sanjeyac" "2024"
 "RGB*, GRAY*"
 SF-IMAGE "Image" 0
 SF-DRAWABLE "Drawable" 0
)

(script-fu-menu-register "create-spritesheet" "<Image>/Tools/Spritesheet Tools")

