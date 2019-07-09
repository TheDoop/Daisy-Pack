#!/bin/bash
echo    "-------------------------------------------"
echo    "1. Enable Pixel Theme"
echo    "2. Disable Pixel Theme"
echo    "3. Enable Network acitivity indicators"
echo    "4. disable Network acitivity indicators"
echo    "5. Enable Notch Killer"
echo    "6. Disable Notch Killer "
echo    "-------------------------------------------"
echo    "---------------------------------"
echo               "Enter choose : "
echo    "---------------------------------"
read $secenek
case $secenek in
        1)
		  clear
          echo Enabling Pixel Theme...
		  su -c "cmd overlay enable com.google.android.theme.pixel"
          echo Done!
          clear
          ;;
        2)
		  clear
          echo Enabling Pixel Theme...
		  su -c "cmd overlay disable com.google.android.theme.pixel"
          echo Done!
          clear
          ;;
        3)
		  clear
          echo Enabling Network acitivity indicators...
		  su -c "cmd overlay disable com.keypressure.disable_network_activity_indicator"
          echo Done!
          clear
          ;;
        4)
		  clear
          echo Disabling Network acitivity indicators...
		  su -c "cmd overlay enable com.keypressure.disable_network_activity_indicator"
          echo Done!
          clear
          ;;
        5)
		  clear
          echo Enabling Notch Killer...
		  su -c "cmd overlay disable com.keypressure.disable_network_activity_indicator"
          echo Done!
          clear
          ;;
        6)
		  clear
          echo DisablingNotch Killer...
		  su -c "cmd overlay disable com.android.internal.display.cutout.emulation.zigafide"
          echo Done!
          clear
          ;;
        *)
		  clear
          echo Wrong choose!
		  bash tool
		  ;;
esac