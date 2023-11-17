#!/bin/bash

# Function to display bold text
bold_text() {
  echo -e "\033[1m$1\033[0m"
}

# Function to install packages on macOS using Homebrew
install_macos_packages() {
  clear
  bold_text "Installing packages on macOS..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
  brew update
  bold_text "Installing Go..."
  sleep 2
  brew install go
  bold_text "Installing Python..."
  sleep 2
  brew install python
  bold_text "Installing pip..."
  sleep 2
  python -m ensurepip --default-pip
  bold_text "Upgrading pip..."
  sleep 2
  python -m pip install --upgrade pip
  bold_text "Installing subfinder..."
  sleep 3
  go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
  bold_text "Installing subscraper..."
  sleep 3
  git clone https://github.com/m8sec/subscraper
  sleep 2
  cd subscraper
  pip install -r requirements.txt
  python3 setup.py install
  sleep 3
  sudo cp -r subscraper /usr/local/bin
  sudo cp subscraper.py /usr/local/bin
  sudo chmod +x /usr/local/bin/subscraper.py
  sudo chown your_username:your_group /usr/local/bin/subscraper.py
  cd ..
  bold_text "Installing findomain..."
  sleep 2
  brew install findomain
  bold_text "Installing Amass..."
  sleep 3
  brew tap owasp-amass/amass
  sleep 3
  brew install amass
  bold_text "Installing github-subdomain..."
  sleep 3
  go install github.com/gwen001/github-subdomains@latest
  bold_text "Installing httpx..."
  sleep 3
  go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest
  bold_text "Installing Gauplus..."
  sleep 3
  go install github.com/bp0lr/gauplus@latest
  bold_text "Installing waybackurl..."
  sleep 2
  go install github.com/tomnomnom/waybackurls@latest
  bold_text "Installing Arjun..."
  sleep 3
  git clone https://github.com/s0md3v/Arjun.git
  cd Arjun
  pip3 install arjun
  sleep 2
  python3 setup.py install
  bold_text "Installing paramspider..."
  sleep 3
  cd ..
  git clone https://github.com/devanshbatham/paramspider
  cd paramspider
  pip install .
  sleep 2
  sudo cp -r paramspider /usr/local/bin
  cd ..
  bold_text "Installing GF tools..."
  sleep 3
  # Installing gf tools
  go install github.com/tomnomnom/gf@latest && cp ~/go/bin/gf /usr/bin/ && gf -h
  # Cloning gf_patterns and setting it up
  mkdir ~/.gf
  git clone https://github.com/Sherlock297/gf_patterns.git && cd gf_patterns/ && cp *.json ~/.gf && gf -list
  bold_text "Installing dirsearch..."
  sleep 3
  pip3 install dirsearch || pip install dirsearch
  sleep 3
  bold_text "Installing FFUF..."
  go install github.com/ffuf/ffuf/v2@latest
  sleep 2
  sudo chmod +x /usr/local/bin/subscraper.py
  # Run your_script.sh
  ./mac_ch.sh
  # End of your script
}

# Function to install packages on Debian-based Linux (e.g., Ubuntu)
install_debian_packages() {
  clear
  bold_text "Installing packages on Debian-based Linux..."
  sudo apt-get update
  sudo apt-get install -y git python3 python3-pip
  sleep 2
  #pip3 install subfinder dirsearch ffuf # Add more Debian-based tools here
  bold_text "Installing subfinder..."
  go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
  bold_text "Installing subscraper..."
  git clone https://github.com/m8sec/subscraper
  cd subscraper
  pip install -r requirements.txt
  python3 setup.py install
  sudo cp subscraper.py /usr/local/bin/
  sudo cp -r subscraper /usr/local/bin
  cd ..
  bold_text "Installing findomain..."
  #curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
  sudo apt install perl
  ./findomai.sh
  #git clone https://github.com/findomain/findomain.git
  #cd findomain
  #cargo build --release
  #sudo cp target/release/findomain /usr/local/bin
  #cd ..
  bold_text "Installing Amass..."
  #sudo apt install amass || go install -v github.com/owasp-amass/amass/v4/...@master
  go install -v github.com/owasp-amass/amass/v4/...@master
  bold_text "Installing GitHub-subdomains..."
  go install github.com/gwen001/github-subdomains@latest
  bold_text "Installing httpx..."
  #sudo apt install httpx-toolkit || go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest
  go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest
  bold_text "Installing Gauplus..."
  go install github.com/bp0lr/gauplus@latest
  bold_text "Installing Waybackurl..."
  go install github.com/tomnomnom/waybackurls@latest
  bold_text "Installing Arjun..."
  sudo apt install arjun || pip3 install arjun
  bold_text "Installing Paramspider..."
  git clone https://github.com/devanshbatham/paramspider
  cd paramspider
  pip install .
  sudo cp -r paramspider /usr/local/bin
  cd ..
  bold_text "Installing Gf tools..."
  #go install github.com/tomnomnom/gf@latest
  # Installing gf tools
go install github.com/tomnomnom/gf@latest && cp ~/go/bin/gf /usr/bin/ && gf -h
# Cloning gf_patterns and setting it up
mkdir ~/.gf
git clone https://github.com/Sherlock297/gf_patterns.git && cd gf_patterns/ && cp *.json ~/.gf && gf -list
  bold_text "Installing Dirsearch..."
  sudo apt install dirsearch || pip3 install dirsearch || pip install dirsearch
  bold_text "Installing FFUF..."
  go install github.com/ffuf/ffuf/v2@latest || sudo apt install ffuf 
  sleep 2
  sudo chmod +x /usr/local/bin/subscraper.py
  ./linux_ch.sh
  ./linux_cp.sh
  
  bold_text "Installation completed successfully."
}

# Function to install Burp Suite Pro (Mac only)
install_burp_suite_pro() {
  bold_text "Installing Burp Suite Pro..."
  # Add Burp Suite Pro installation steps for Mac here
}

# Function to install tools on Mac and Debian Linux
install_tools() {
  clear
  display_banner() {
    clear
    cat << "EOF"
    ███████╗ ██╗   ██╗ ██████╗ ██╗  ██╗██╗   ██╗███╗   ██╗████████╗███████╗██████╗ ██╗  ██╗██╗████████╗
    ██╔══██╗██║   ██║██╔════╝ ██║  ██║██║   ██║████╗  ██║╚══██╔══╝██╔════╝██╔══██╗██║ ██╔╝██║╚══██╔══╝
    ██████╔╝██║   ██║██║  ███╗███████║██║   ██║██╔██╗ ██║   ██║   █████╗  ██████╔╝█████╔╝ ██║   ██║   
    ██╔══██╗██║   ██║██║   ██║██╔══██║██║   ██║██║╚██╗██║   ██║   ██╔══╝  ██╔══██╗██╔═██╗ ██║   ██║   
    ██████╔╝╚██████╔╝╚██████╔╝██║  ██║╚██████╔╝██║ ╚████║   ██║   ███████╗██║  ██║██║  ██╗██║   ██║   
    ╚═════╝  ╚═════╝  ╚═════╝ ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═══╝   ╚═╝   ╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝   ╚═╝   
                                                                                                  
EOF
    echo -e "\nWelcome to  Reconnaissance Tool\n"
}

# Display the banner when the script starts
display_banner
 bold_text() {
  echo -e "\033[1m$1\033[0m"
}

# Display a starting headline
bold_text "🚀 Your Ultimate Bug Bounty Reconnaissance Toolkit Setup 🌐"
echo "Start setting up your reconnaissance environment"
  echo "Select your operating system:"
  echo "1) Mac"
  echo "2) Linux"
  read -p "Enter your choice: " os_choice

  case "$os_choice" in
    1)
      # macOS selected
      install_macos_packages
      ;;

    2)
      # Linux selected
      clear
      echo "Select your Linux distribution:"
      echo "1) Debian-based Linux (e.g., Ubuntu,Debian,Kali,Parrot,Windows(WSL,WSL2)etc..)"
      echo "2) Arch Linux"
      echo "3) Redhat-based Linux (e.g., CentOS,Fedora,Windows(WSL,WSL2)etc..)"
      read -p "Enter your choice: " linux_choice

      case "$linux_choice" in
        1)
          # Debian-based Linux selected (e.g., Ubuntu)
          install_debian_packages
          ;;

        2)
          # Arch Linux selected
          xdg-open "https://github.com/balwantyadav1/BugHunterKit#Installation-Arch-Based-Linux"
          ;;

        3)
          # Redhat-based Linux selected (e.g., CentOS)
          
          bash Redhat-based-Linux-install.sh
          ;;

        *)
          bold_text "Invalid choice. Exiting."
          exit 1
          ;;
      esac
      ;;

    *)
      bold_text "Invalid choice. Exiting."
      exit 1
      ;;
  esac

  bold_text "Installation completed successfully."
}

# Main script
install_tools
