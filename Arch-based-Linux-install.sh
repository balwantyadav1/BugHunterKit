#!/bin/bash

bold_text() {
    echo -e "\e[1m$1\e[0m"
}

bold_text "Installing packages on Arch Linux..."
sudo pacman -Syu --noconfirm
sudo pacman -S --noconfirm git python python-pip go perl

bold_text "Installing subfinder..."
go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest

bold_text "Installing subscraper..."
git clone https://github.com/m8sec/subscraper
cd subscraper
pip install -r requirements.txt
python setup.py install
sudo cp subscraper.py /usr/local/bin/
sudo cp -r subscraper /usr/local/bin/
cd ..

bold_text "Installing findomain..."
curl -O https://static.findomain.com/latest/findomain-linux
chmod +x findomain-linux
sudo mv findomain-linux /usr/local/bin/findomain

bold_text "Installing Amass..."
go install -v github.com/owasp-amass/amass/v4/...@master

bold_text "Installing GitHub-subdomains..."
go install github.com/gwen001/github-subdomains@latest

bold_text "Installing httpx..."
go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest

bold_text "Installing Gauplus..."
go install github.com/bp0lr/gauplus@latest

bold_text "Installing Waybackurl..."
go install github.com/tomnomnom/waybackurls@latest

bold_text "Installing Arjun..."
pip install arjun

bold_text "Installing Paramspider..."
git clone https://github.com/devanshbatham/paramspider
cd paramspider
pip install .
sudo cp -r paramspider /usr/local/bin/
cd ..

bold_text "Installing Gf tools..."
go install github.com/tomnomnom/gf@latest && cp ~/go/bin/gf /usr/bin/ && gf -h

bold_text "Installing Dirsearch..."
git clone https://github.com/maurosoria/dirsearch
cd dirsearch
python3 setup.py install
cd ..

bold_text "Installing FFUF..."
go install github.com/ffuf/ffuf/v2@latest

sleep 2
./linux_ch.sh
./linux_cp.sh

bold_text "Installation completed successfully."
