# thinkpad_x230
Collection of tweaks for my Lenovo Thinkpad X230.

acpi/
Contains simple ACPI scripts for Lenovo Thinkpad hardware buttons.
These works even if you do not run a desktop environment.

reset/
Contains shell scripts to manually reset parts of the USB subsystems.
After wakeup with the default Jessie kernel my Logitech MX518 mouse
would not initialize properly.
Occasionally the entire USB subsystem would freeze, requiring a reboot.
These scripts could sometimes salvage these situations.
