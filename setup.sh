---

### 3. Setup Script
**File**: `setup.sh`

```bash
#!/bin/bash

echo "Setting up JATAV CyberHub..."

# Check Termux environment
if ! command -v pkg >/dev/null; then
    echo "Error: Termux not detected. Install Termux from F-Droid."
    exit 1
fi

# Grant storage permission
echo "Granting storage permission..."
termux-setup-storage
sleep 2
if ! -d "$HOME/storage/shared"; then
    echo "Error: Storage permission denied. Go to Settings > Apps > Termux > Permissions > Storage > Allow."
    exit 1
fi

# Create directories
mkdir -p "$HOME/.allinone" "$HOME/storage/shared/sounds" "$HOME/storage/shared/soundtracks" \
         "$HOME/storage/shared/notes" "$HOME/storage/shared/wallpapers" "$HOME/storage/shared/vr_scenes" \
         "$HOME/storage/shared/sound_library" "$HOME/.shortcuts/jatav_tools" 2>/dev/null
if [ $? -ne 0 ]; then
    echo "Error: Failed to create directories. Check storage access."
    exit 1
fi

# Download resources
echo "Fetching resources..."
wget -q -O "$HOME/storage/shared/startup.wav" "https://freesound.org/data/previews/316/316899_5121236-lq.mp3" || echo "Warning: Failed to download startup sound."
wget -q -O "$HOME/storage/shared/wallpapers/hacker1.jpg" "https://raw.githubusercontent.com/termux/termux-styling/master/wallpapers/hacker.jpg" || echo "Warning: Failed to download wallpaper."
wget -q -O "$HOME/storage/shared/soundtracks/cyber.mp3" "https://freesound.org/data/previews/387/387347_7142602-lq.mp3" || echo "Warning: Failed to download soundtrack."

echo "Setup complete! Run './install.sh' to install dependencies."
