
## Index

* [Project Title and Introduction](#Title)
* [Screenshots](#Screenshots)
* [Motivation-to-Make-this-Tool](#Motivation-to-Make-this-Tool)
* [Tools-that-install](#Tools-that-install)
* [Installation](#Installation)
* [Contributing](#Contributing)

### Title

BugHunterKit 
🚀 Your Ultimate Bug Bounty Reconnaissance Toolkit Setup 🌐

The BugHunterKit tool facilitates the installation of multiple enumeration tools, enhancing capabilities for Bug Bounty programs or Vulnerability Assessment and Penetration Testing (VAPT) initiatives.

____
### Screenshots

![App Screenshot](https://img.playbook.com/3N_q45wL0FA6IAmAoXKNHnDvxsDckOA5KacwHL2cwuU/Z3M6Ly9wbGF5Ym9v/ay1hc3NldHMtcHVi/bGljL2M0N2ViYzMy/LTE3YjYtNDM5ZC1h/ODM2LTNlZDE5ODlm/NTM5Ng)


### Motivation-to-Make-this-Tool


In the realm of cybersecurity, time is of the essence, and efficiency is paramount. Recognizing this need, we present a versatile tool designed to streamline the installation and configuration of multiple enumeration tools. This tool seamlessly integrates subdomain enumeration, URL enumeration, and directory enumeration, providing a robust suite for security professionals.

**Key Features:**

1. **Cross-Platform Compatibility:**
   - *Linux:* Compatible with Debian, Red Hat, and Arch-based distributions.
   - *macOS:* Ensuring functionality on Apple's operating system.
   - *Windows (WSL):* Seamlessly integrating with Windows Subsystem for Linux, extending support to the Windows environment.

2. **Time-Saving Installation:**
   - By automating the installation process, our tool eliminates the need for manual setup, saving valuable time.
   - Deploys dependencies effortlessly, ensuring a hassle-free experience.

3. **Configuration Made Simple:**
   - Streamlines configuration files to guarantee optimal performance.
   - Provides clear instructions on customization to meet specific needs.

4. **Boosting Productivity:**
   - Empowers cybersecurity professionals to focus on analysis and mitigation rather than wrestling with tool setup.
   - Centralizes multiple enumeration tools for a comprehensive approach to security assessments.

In an era where every second counts, our enumeration tool stands as a testament to efficiency, enabling practitioners to fortify their security posture with ease. Elevate your productivity, embrace simplicity, and stay ahead in the ever-evolving landscape of cybersecurity.

---

### Tools-that-install


SUBDMIN-ENUMEATION | URL-ENUMERATION | Directory-ENUMERATION | 🌐 | 🚀 |
|---|---|---|---|---|
| [subfinder](https://github.com/projectdiscovery/subfinder.git) | [Gauplus](https://github.com/bp0lr/gauplus.git) | [DirSearch](https://github.com/maurosoria/dirsearch.git) |
| [Subscraper](https://github.com/m8sec/subscraper.git) | [Waybackurls](https://github.com/tomnomnom/waybackurls.git)  | [FFUF](https://github.com/ffuf/ffuf.git) |
| [Findomain](https://github.com/Findomain/Findomain.git) | [Arjun](https://github.com/s0md3v/Arjun.git)  |
| [Amass](https://github.com/owasp-amass/amass.git) | [paramspider](https://github.com/devanshbatham/ParamSpider.git)  | 
| [Github-Subdomains](https://github.com/gwen001/github-subdomains.git) | [Gf tools](https://github.com/gogf/gf.git)  |
| [httpx](https://github.com/projectdiscovery/httpx.git) |   

### Installation

* [Install in Debian Based Linux](#Install-in-Debian-Based-Linux)
* [Install in RedHat Based Linux](#Installation-RedHat-Based-Linux)
* [Install in Arch Based Linux](#Installation-Arch-Based-Linux)
* [Install in MacOS](#Installation-MacOS)






### Install-in-Debian-Based-Linux

Install dependency

```bash
sudo apt-get install git curl wget
sudo apt-get install golang
```
Add these lines to your shell profile file (e.g., ~/.bashrc, ~/.zshrc, or ~/.bash_profile):
```bash
nano ~/.bashrc 
```
Set Go Environment Variables . copy the following lines at the end of the file and Save it..

```bash
export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
```
Create a Go Workspace
```bash
mkdir -p ~/go/src
mkdir -p ~/go/bin
```
Installing Rust :- 
```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```
![](https://img.playbook.com/51c2YBFnKFWU1F2Lr3QLq2WlyTE9hdMN9SF3eWsPjss/Z3M6Ly9wbGF5Ym9v/ay1hc3NldHMtcHVi/bGljLzNmYzFjNmFh/LWQwZjMtNDhhMi1i/OTUyLWY5ZTJjZTIx/YzZjOA)

Reboot system to load the file properly :- 
```bash
sudo reboot -f
```
Install BugHunterKit tool
```bash
git clone https://github.com/balwantyadav1/BugHunterKit.git
cd BugHunterKit
chmod +x *
./install_all.sh 
```
copy the file into /usr/local/bin
```bash
./linux_ch.sh
```
Installation Complete

### Installation-RedHat-Based-Linux 

Install dependency

```bash
sudo dnf install git curl wget
sudo dnf install golang 
```
Add these lines to your shell profile file (e.g., ~/.bashrc, ~/.zshrc, or ~/.bash_profile):
```bash
nano ~/.bashrc 
```
Set Go Environment Variables . copy the following lines at the end of the file and Save it..

```bash
export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
```
Create a Go Workspace
```bash
mkdir -p ~/go/src
mkdir -p ~/go/bin
```
Installing Rust :- 
```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```


Reboot system to load the file properly :- 
```bash
sudo reboot -f
```
Install BugHunterKit tool
```bash
git clone https://github.com/balwantyadav1/BugHunterKit.git
cd BugHunterKit
chmod +x *
./install_all.sh 
```
copy the file into /usr/local/bin
```bash
./linux_ch.sh
```
Installation Complete

### Installation-Arch-Based-Linux 
Working on it 

### Installation-MacOS 
Installing Rust :- 
```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```
```bash
brew install git curl wget
```
install BugHunterKit tool
```bash
git clone https://github.com/balwantyadav1/BugHunterKit.git
cd BugHunterKit
chmod +x *
./install_all.sh 
```
copy the file into /usr/local/bin
```bash
./mac_ch.sh
```
Installation Complete

Watch the video installing in MacOS CLICK -TO_WATCH
[![Watch the video](https://img.playbook.com/BYS6t0SAEWVul9KEyJPmMZnD0DD7uXIDNuSr3uaXTZ8/Z3M6Ly9wbGF5Ym9v/ay1hc3NldHMtcHVi/bGljL2Y1NjQ2OWEy/LTM1ZDgtNGJmMi05/MGJiLTQzZDg3Mzlh/NzYzOA)](https://youtu.be/pHHNd5rXzVM)

### Contributing

Contributions are always welcome!


[Balwant](https://github.com/balwantyadav1)  - Developer

[Himanshu](https://github.com/Himanshu-sahare)  - Tester

[Akash](https://github.com/guru024)  - Tester