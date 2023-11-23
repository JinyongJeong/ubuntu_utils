# This script automatically install drivers for ubuntu environment

source ./../../common/color.sh

sudo ubuntu-drivers autoinstall

echo -e "${GREEN}If additional packages are installed, please reboot PC"
