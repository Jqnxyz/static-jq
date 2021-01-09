# Create Windows Installer USB on macOS
## Get ISO file
[Download Windows 10 ISO](https://www.microsoft.com/software-download/windows10)

## Determine target disk path
Use the following command
```sh
diskutil list

```
Note down the path
*e.g. /dev/disk2*

## Format disk
Replace `/dev/disk2` with your target drive.
```sh
diskutil eraseDisk MS-DOS "WIN10" GPT /dev/disk2
```

## Mount Windows 10 ISO
*Note: File name will differ based on release version.*

```sh
# This assumes the file is located in your working directory.
hdiutil mount Win10_1903_V1_English_x64.iso
```

## Copy ISO files except install.wim

```sh
rsync -vha --exclude=sources/install.wim /Volumes/CCCOMA_X64FRE_EN-US_DV9/* /Volumes/WIN10
```

## Copy install.wim
*Note: Homebrew should be installed*
```sh
brew install wimlib
mkdir /Volumes/WIN10/sources
wimlib-imagex split /Volumes/CCCOMA_X64FRE_EN-US_DV9/sources/install.wim /Volumes/WIN10/sources/install.swm 3800
```

## Enjoy!
Eject drive, and you're done.
