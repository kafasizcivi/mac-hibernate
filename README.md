# mac-hibernate
Command line tool to hibernate properly in Macbooks.

Changes pmset values to allow deep sleep (hibernate) option and disables all possible wake up triggers. Then disables Wi-Fi and Bluetooth to ensure no wake up trigger is invoked. 

It needs 1 second to go from sleep to standby mode and that is set by the ```standbydelay 1``` setting. You can increase that. Practically I saw hibernation around 30 seconds after this script is executed. 

After waking up, you can have the options to keep Wi-Fi and Bluetooth closed or turn them open. Then it reverts the pmset settings to their original values so you can keep using the machine as usual. 

## Installation

You need blueutils for this script. To install blueutils, you can use Homebrew:

```
brew install blueutils
```
Then make it executable by:
```
chmod u+x [Your download path]/hibernate.command
```

## Usage
Download hibernate.command and double click it 
in the terminal. 

## License
MIT
