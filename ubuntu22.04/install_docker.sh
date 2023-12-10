# Ref: https://cloudcone.com/docs/article/how-to-install-docker-on-ubuntu-22-04-20-04/

# Update the system
sudo apt update
# Install dependencies
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y

# Install docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
sudo apt update
sudo apt install docker-ce docker-ce-cli containerd.io -y
sudo usermod -aG docker $USER
newgrp docker
docker version

# Install docker compose
sudo apt install docker-compose-plugin
