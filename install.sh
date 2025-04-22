#!/bash/bash
# Installation Script

# Create Videos directory
mkdir /home/pi/Videos

# Replace rc.local
echo "Replacing /etc/rc.local..."
rm -rf /etc/rc.local
cp /home/pi/SimplePiVideoLooper/assets/rc.local /etc/

# Make file executable
chmod +x /etc/rc.local
echo "Done."

# Add a line to .bashrc if it doesn't already exist
LINE_TO_ADD="bash /home/pi/SimplePiVideoLooper/playback.sh"
BASHRC_FILE="/home/pi/.bashrc"

# Check if the line already exists, then append if not
if ! grep -Fxq "$LINE_TO_ADD" "$BASHRC_FILE"; then
    echo "$LINE_TO_ADD" >> "$BASHRC_FILE"
    echo "Added script to .bashrc"
else
    echo "Script already in .bashrc"
fi

# Reboot Pi
echo "Rebooting Pi..."
sleep 3
sudo reboot
