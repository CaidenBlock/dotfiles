#!/bin/sh
# caiden block 2026
# nerd font installer
# # must match the zip files on: https://github.com/ryanoasis/nerd-fonts/releases/
#FONTS="JetBrainsMono Iosevka RobotoMono"
FONTS="JetBrainsMono"

install_nerd_fonts() {
    for font in $FONTS; do
        FONT_DIR="$HOME/.local/share/fonts/$font"
        
        if [ ! -d "$FONT_DIR" ] || [ -z "$(ls -A "$FONT_DIR")" ]; then
            echo "--- Installing $font Nerd Font ---"
            mkdir -p "$FONT_DIR"
            
            # download to tmp
            URL="https://github.com/ryanoasis/nerd-fonts/releases/latest/download/${font}.zip"
            TEMP_ZIP="/tmp/${font}.zip"
            
            if curl -fLo "$TEMP_ZIP" "$URL"; then
                unzip -o "$TEMP_ZIP" "*.ttf" "*.otf" -d "$FONT_DIR"
                rm "$TEMP_ZIP"
            else
                echo "Failed to download $font"
            fi
        else
            echo "--- $font already exists, skipping ---"
        fi
    done

    # Refresh the system font cache
    echo "Refreshing font cache..."
    fc-cache -f
}

# Run the function
install_nerd_fonts

echo "done"
