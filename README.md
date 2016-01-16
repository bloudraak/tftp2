# TFTP

I have a Synology device that can act as a TFTP device. Every now and then, I reset the device and found it to be tedious to configure TFTP, iPXE and the respective ISO images.

## Create a Shared Folder 

We need to create a shared folder where we’ll boot from

1. Select “Control Panel”
2. Select “Shared Folder”
3. Select “Create”
4. Enter “tftp” in as the “Name”
5. Select “Hide this shared-folder in My Network Places”
6. Select “Hide folders and files for users without permissions”
7. Select “OK”
8. Select “OK”

## Enable TFTP

1. Select “Control Panel”
2. Select “File Services”
3. Select “TFTP/PXE”
4. Select “Enable TFTP service”
5. Select “Apply”

## Install Git Server

You need to install “Git Server” to run the git commands on the Synology server.

## Getting Bootstrap

cd ~/
git clone https://github.com/wernerstrydom/tftp.git
cd tftp/scripts/
./bootstrap.sh -v /volume1/tftp 
