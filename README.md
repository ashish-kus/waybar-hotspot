# Waybar-Hotspot
Tiny Waybar module to monitor and manage Wi-Fi hotspot status. This module displays the current state of the hotspot and provides notifications and interaction options.

### Features
- Hotspot Status Display: Shows whether the Wi-Fi hotspot is active or inactive.
- Notifications: Sends notifications about the hotspot status changes.
- Customizable Icons: Supports different icons for active and inactive states.
- Clickable Actions: Allows toggling the hotspot state via click.
- Configurable Interval: Set the interval for status checks.

### Instalation
1. Clone the Repository
``` sh
git clone https://github.com/yourusername/waybar-hotspot.git
cd waybar-hotspot
```

2. Copy the Configuration Files
``` sh
cp -r ..waybar-hotspot ~/.config/waybar/
```

3. Ensure Scripts Are Executable
```sh
chmod +x ~/.config/waybar/waybar-hotspot
```sh

4. Install Dependencies
``` sh
    Ensure you have the required dependencies installed.
```

### Dependencies
- create_ap
- linbnotify
- jq
- Zenity

### Usage
Waybar Configuration

Add the custom module to your Waybar configuration file:

~/.config/waybar/config.json

```json
"modules-left": [
  ...
  "custom/hotspot",
  ...
],

...

"custom/hotspot": {
  "format": "{icon} Hotspot",
  "return-type": "json",
  "format-icons": {
    "active": "󱜠",
    "inactive": "󱜡"
  },
  "exec": "~/.config/waybar/waybar-hotspot -a watch",
  "interval": 10,
  "on-click": "~/.config/waybar/waybar-hotspot -a toggle"
}

```

### waybar Style
Add custom styles to your Waybar CSS file for better visual representation:
```css
@keyframes blink-active {
  to {
    background-color: lightgreen;
  }
}

#custom-hotspot.active {
  animation: blink-active 3s linear infinite alternate;
}
```

### Command-line Options
The script supports the following options:

- status: Start a new create_ap and display the current status of the Wi-Fi hotspot.
- stop: Stop all create_ap if any and display status of Wi-Fi Hotspot.
- toggle: Toggle the Wi-Fi hotspot on or off.


### License
This project is licensed under the MIT License. See the LICENSE file for details.
