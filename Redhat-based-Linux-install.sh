  #Redhat-based Linux :- 
  clear
  bold_text "Installing packages on Redhat-based Linux..."
  sudo dnf update
  sudo dnf install -y golang git python3 python3-pip
  sleep 2
  pip3 install subfinder dirsearch ffuf 
  sleep 2
  bold_text "Installing subfinder..."
  go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
  sleep 2
  bold_text "Installing subscraper..."
  sleep 2
  git clone https://github.com/m8sec/subscraper
  cd subscraper
  pip install -r requirements.txt
  python3 setup.py install
  sudo cp subscraper.py /usr/local/bin/
  sudo cp -r subscraper /usr/local/bin
  cd ..
  sleep 4
  bold_text "Installing findomain..."
  ./findomai.sh
  sleep 2
  bold_text "Installing Amass..."
  go install -v github.com/owasp-amass/amass/v4/...@master
  bold_text "Installing GitHub-subdomains..."
  sleep 2
  go install github.com/gwen001/github-subdomains@latest
  sleep 2
  bold_text "Installing httpx..."
  sleep 2
  go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest
  bold_text "Installing Gauplus..."
  sleep 2
  go install github.com/bp0lr/gauplus@latest
  bold_text "Installing Waybackurl..."
  sleep 2
  go install github.com/tomnomnom/waybackurls@latest
  bold_text "Installing Arjun..."
  sleep 2
  pip3 install arjun 
  sleep 2
  bold_text "Installing Paramspider..."
  git clone https://github.com/devanshbatham/paramspider
  cd paramspider
  pip install .
  sudo cp -r paramspider /usr/local/bin
  cd ..
  sleep 2
  bold_text "Installing Gf tools..."
  # Installing gf tools
  go install github.com/tomnomnom/gf@latest && cp ~/go/bin/gf /usr/bin/ && gf -h
  # Cloning gf_patterns and setting it up
  mkdir ~/.gf
  git clone https://github.com/Sherlock297/gf_patterns.git && cd gf_patterns/ && cp *.json ~/.gf && gf -list
  bold_text "Installing Dirsearch..."
  sleep 2
  pip3 install dirsearch || pip install dirsearch
  bold_text "Installing FFUF..."
  go install github.com/ffuf/ffuf/v2@latest || sudo apt install ffuf 
  bash linux_ch.sh
  ./linux_cp.sh
  bold_text "Installation completed successfully."
