# This script install kakaotalk with wine in ubuntu 22.04 env

source ./../../common/color.sh

# enable i386 archtecture
sudo dpkg --add-architecture i386

sudo apt install -y wget
sudo mkdir -pm755 /etc/apt/keyrings
sudo wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key
sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/ubuntu/dists/jammy/winehq-jammy.sources
sudo apt-get update
sudo apt install -y --install-recommends winehq-stable

echo -e "${GREEN}Set window version to 'Windows 10'"
echo -e "${GREEN}In the library tab, select 'd3dx11_43' and add"
echo -e "${GREEN}After download kakaotalk install file, run following command"
echo -e "${GREEN}LANG="ko_KR.UTF-8" wine KakaoTalk_Setup.exe${NC}"

winecfg

