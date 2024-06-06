say_hello:
	@echo "Use install flag to perform installation."
	@echo "Use uninstall flag to perform uninstallation."

install:
	@echo "copying binary to /usr/local/bin.."
	@mkdir -p /usr/local/bin/
	cp ./src/waybar-hotspot /usr/local/bin/
		@echo "waybar-hotspot installed"

uninstall:
	@echo "Uninstalling ..."
	rm /usr/local/bin/waybar-hotspot
	@echo "waybar-hotspot uninstalled"
