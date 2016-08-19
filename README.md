# Setup for a new machine

Partially forked and inspired by https://github.com/danyshaanan/.home


### Let's Get Things Setup

Install Homebrew

```bash 
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install git
```

clone this repo and deploy symbolic links:

```bash
git clone https://github.com/javinor/momento.git ~/.momento

ln -s ~/.momento/.bash_profile ~/.bash_profile
ln -s ~/.momento/.bashrc ~/.bashrc

touch ~/.hushlogin
```
