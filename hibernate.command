# Command line tool to hibernate properly in Macs.
# Needs sudo to change power management settings. Commented by ChatGPT.
echo Command line tool to hibernate properly in Macs. Needs sudo.

# Change the power management settings to enable true hibernation.
sudo pmset -a hibernatemode 25 standbydelay 1 standby 1 sleep 0 highstandbythreshold 100 ttyskeepawake 0 tcpkeepalive 0 proximitywake 0 powernap 0 womp 0 acwake 0 lidwake 0 disksleep 0 displaysleep 0

# Turn off Wi-Fi.
networksetup -setairportpower en0 off

# Turn off Bluetooth.
blueutil -p 0

# Inform the user that the computer is hibernating.
echo Hibernating...

# Wait for 1 second before hibernating.
sleep 1

# Hibernate the computer.
pmset sleepnow

# Ask the user if they want to turn on Wi-Fi and Bluetooth.
read -r -p "Do you want to turn on wifi and BT? [y/N] " response

# Check the user's response.
if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]
then
  # If the user wants to turn on Wi-Fi and Bluetooth, restore the default power management settings and turn on Wi-Fi and Bluetooth.
  sudo pmset restoredefaults
  networksetup -setairportpower en0 on
  blueutil -p 1
else
  # If the user doesn't want to turn on Wi-Fi and Bluetooth, restore the default power management settings.
  sudo pmset restoredefaults    
  # Inform the user that Wi-Fi and Bluetooth won't be turned on.
  echo Oh that's sad! 
fi

# Inform the user that the script is complete.
echo Bye!

# Wait for 1 second before ending the script.
sleep 1
