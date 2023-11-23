# This script is to install pipewire instead of pulseaudio
# pipewire have function to change bluetooth audio profile automatically depending on the applications
source ./../../common/color.sh

# install essential packages
sudo apt install pipewire-audio-client-libraries libspa-0.2-bluetooth libspa-0.2-jack
sudo apt install wireplumber pipewire-media-session-
# copy configuration for alsa
sudo cp /usr/share/doc/pipewire/examples/alsa.conf.d/99-pipewire-default.conf /etc/alsa/conf.d/
# copy configuration for jack client
sudo cp /usr/share/doc/pipewire/examples/ld.so.conf.d/pipewire-jack-*.conf /etc/ld.so.conf.d/

sudo ldconfig

sudo apt remove pulseaudio-module-bluetooth
systemctl --user --now enable wireplumber.service

echo -e "${GREEN} ============================"
echo -e "${GREEN}Reboot PC and run 'pactl info' command to check if pipewire is installed"
echo -e "${GREEN}You should be able to see 'Server Name: PulseAudio (on PipeWire xxx)'"
