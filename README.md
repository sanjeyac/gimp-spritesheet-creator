# GIMP Spritesheet Creator

This GIMP script automates the process of creating a spritesheet from multiple layers in an image. It arranges all the layers in a single row and merges them into one final layer, making it easy to create spritesheets for game development or other creative projects.

## Features

- Arranges all layers in the current image into a single row.
- Merges all layers into one, creating a final unified spritesheet.
- Supports images with layers of varying sizes.

## Installation

To install and use this script in GIMP, follow these steps:

### Step 1: Download the Script

Download the script file `spritesheet-from-layers.scm` from this repository.

### Step 2: Copy the Script to the GIMP Scripts Folder

Locate your GIMP scripts folder based on your operating system:

- **Linux**: `~/.config/GIMP/2.10/scripts/` or `~/.gimp-2.10/scripts/`
- **Windows**: `C:\Users\[YourUserName]\AppData\Roaming\GIMP\2.10\scripts\`
- **macOS**: `~/Library/Application Support/GIMP/2.10/scripts/`

Copy the `spritesheet-from-layers.scm` file into the appropriate folder.

### Step 3: Restart GIMP

After copying the script, restart GIMP to load the new script.

## Usage

Once the script is installed, you can easily create a spritesheet from your layers:

1. **Open Your Image**: Open an image with multiple layers in GIMP.

2. **Run the Script**: 
   - Go to `File > Create > Create Spritesheet from Layers`.
   - The script will arrange all layers in a single row and merge them into one final layer.

3. **Save Your Spritesheet**: After the script finishes, save your new spritesheet image.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Contributing

Contributions are welcome! If you have suggestions, improvements, or bug fixes, feel free to open an issue or submit a pull request.

## Acknowledgments

Special thanks to the GIMP and open-source communities for their support and contributions to making tools like this possible.
