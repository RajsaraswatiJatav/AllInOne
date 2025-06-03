# JATAV CyberHub Permissions

JATAV CyberHub requires specific Android permissions for full functionality. Below are the required permissions and how to enable them.

## Required Permissions
1. **Storage**:
   - **Purpose**: Access `/sdcard` for saving files (e.g., videos, scans, logs).
   - **Enable**:
     ```bash
     termux-setup-storage
     ```
     - Go to Settings > Apps > Termux > Permissions > Storage > Allow.
2. **Wi-Fi**:
   - **Purpose**: Network scanning and connectivity (e.g., nmap, crypto tracker).
   - **Enable**: Enable Wi-Fi in Android settings. No additional Termux permission needed.
3. **Termux:API** (Optional):
   - **Purpose**: Voice commands, TTS, battery status, vibrations, toasts.
   - **Enable**:
     ```bash
     pkg install termux-api
     ```
     - Grant permissions via Android settings for microphone, notifications, etc.
4. **Termux:X11** (Optional):
   - **Purpose**: Desktop Environment (XFCE) and GUI tools (e.g., Maltego).
   - **Enable**:
     ```bash
     pkg install termux-x11 xfce4
     ```
     - Install Termux:X11 app from F-Droid and grant display permissions.
5. **Root Access** (Optional):
   - **Purpose**: Tools like Aircrack-ng, Kali Nethunter.
   - **Enable**: Root device using Magisk or similar (not covered here).

## Notes
- **Granting Permissions**: Run `termux-setup-storage` first to avoid storage errors.
- **GUI Setup**: Termux:X11 requires the Termux:X11 app and a compatible Android version.
- **Ethical Use**: Ensure permissions are used responsibly, respecting privacy laws.
