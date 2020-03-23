clear

stage=0
part=0
obas=$HOME/OBAS

#Stage 0
echo -e "\e[1m\e[31m[\e[97m$stage.$part\e[31m] \e[32m Creating directories  \e[0m"
cd $HOME
mkdir .programs
mkdir -p .vim/plugged
mkdir Downloads Documents Desktop Videos Pictures Music Projects
mkdir Pictures/Wallpapers
part=$((part+1))

echo -e "\e[1m\e[31m[\e[97m$stage.$part\e[31m] \e[32m Copying dot files  \e[0m"
cp -r $obas/dotfiles/.* .
part=$((part+1))

echo -e "\e[1m\e[31m[\e[97m$stage.$part\e[31m] \e[32m Copying wallpaper\e[0m"
cp $obas/green_wallpaper.jpg $HOME/Pictures/Wallpapers
part=0 && stage=$((stage+1))

#Stage 1
echo -e "\e[1m\e[31m[\e[97m$stage.$part\e[31m] \e[32m Downloading and installing firefox  \e[0m"
cd .programs
wget --quiet "https://download-installer.cdn.mozilla.net/pub/firefox/nightly/latest-mozilla-central/firefox-76.0a1.en-US.linux-x86_64.tar.bz2" -O firefox.tar.bz2
tar -xf firefox.tar.bz2
rm firefox.tar.bz2
cd $HOME
part=$((part+1))

echo -e "\e[1m\e[31m[\e[97m$stage.$part\e[31m] \e[32m Updating package lists that need upgrade  \e[0m"
sudo apt-get update -yy >/dev/null
part=$((part+1))

echo -e "\e[1m\e[31m[\e[97m$stage.$part\e[31m] \e[32m Installing X11 stuff  \e[0m"
sudo apt-get install xinit xorg -yy >/dev/null
part=$((part+1))

echo -e "\e[1m\e[31m[\e[97m$stage.$part\e[31m] \e[32m Installing openbox and obconf  \e[0m"
sudo apt-get install openbox obconf -yy >/dev/null
part=$((part+1))

echo -e "\e[1m\e[31m[\e[97m$stage.$part\e[31m] \e[32m Installing lightdm with greeter and greeter settings  \e[0m"
sudo apt-get install lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings -yy >/dev/null
part=$((part+1))

echo -e "\e[1m\e[31m[\e[97m$stage.$part\e[31m] \e[32m Installing obmenu  \e[0m"
sudo apt-get install obmenu -yy >/dev/null
part=$((part+1))

echo -e "\e[1m\e[31m[\e[97m$stage.$part\e[31m] \e[32m Installing vim  \e[0m"
sudo apt-get install vim -yy >/dev/null
part=$((part+1))

echo -e "\e[1m\e[31m[\e[97m$stage.$part\e[31m] \e[32m Installing feh (image viewer)  \e[0m"
sudo apt-get install feh -yy >/dev/null
part=$((part+1))

echo -e "\e[1m\e[31m[\e[97m$stage.$part\e[31m] \e[32m Installing urxvt (terminal)  \e[0m"
sudo apt-get install rxvt-unicode -yy >/dev/null
part=$((part+1))

echo -e "\e[1m\e[31m[\e[97m$stage.$part\e[31m] \e[32m Installing arandr (resolution manager)  \e[0m"
sudo apt-get install arandr -yy >/dev/null
part=$((part+1))

echo -e "\e[1m\e[31m[\e[97m$stage.$part\e[31m] \e[32m Installing sxhkd (hotkey daemon)  \e[0m"
sudo apt-get install sxhkd -yy >/dev/null
part=$((part+1))

echo -e "\e[1m\e[31m[\e[97m$stage.$part\e[31m] \e[32m Installing pcmanfm (file manager)  \e[0m"
sudo apt-get install pcmanfm -yy >/dev/null
part=$((part+1))

echo -e "\e[1m\e[31m[\e[97m$stage.$part\e[31m] \e[32m Installing xfce4-panel with plugins (taskbar)  \e[0m"
sudo apt-get install xfce4-panel xfce4-battery-plugin xfce4-pulseaudio-plugin xfce4-whiskermenu-plugin -yy >/dev/null
part=$((part+1))

echo -e "\e[1m\e[31m[\e[97m$stage.$part\e[31m] \e[32m Installing zathura (pdf viewer)  \e[0m"
sudo apt-get install zathura -yy >/dev/null
part=$((part+1))

echo -e "\e[1m\e[31m[\e[97m$stage.$part\e[31m] \e[32m Installing zsh with syntax highlighting  \e[0m"
sudo apt-get install zsh zsh-syntax-highlighting -yy >/dev/null
part=$((part+1))

echo -e "\e[1m\e[31m[\e[97m$stage.$part\e[31m] \e[32m Installing rofi (app launcher)  \e[0m"
sudo apt-get install rofi -yy >/dev/null
part=$((part+1))

echo -e "\e[1m\e[31m[\e[97m$stage.$part\e[31m] \e[32m Installing compton (compositor)  \e[0m"
sudo apt-get install compton -yy >/dev/null
part=$((part+1))

echo -e "\e[1m\e[31m[\e[97m$stage.$part\e[31m] \e[32m Installing libreoffice  \e[0m"
sudo apt-get install libreoffice -yy >/dev/null
part=$((part+1))

echo -e "\e[1m\e[31m[\e[97m$stage.$part\e[31m] \e[32m Installing leafpad (gui text editor)  \e[0m"
sudo apt-get install leafpad -yy >/dev/null
part=$((part+1))

#echo -e "\e[1m\e[31m[\e[97m$stage.$part\e[31m] \e[32m Installing wicd (wifi manager)  \e[0m"
#sudo apt-get install wicd -yy >/dev/null
#part=$((part+1))

echo -e "\e[1m\e[31m[\e[97m$stage.$part\e[31m] \e[32m Installing lxappearance (customizer)  \e[0m"
sudo apt-get install lxappearance -yy >/dev/null
part=$((part+1))

echo -e "\e[1m\e[31m[\e[97m$stage.$part\e[31m] \e[32m Installing htop (terminal task manager)  \e[0m"
sudo apt-get install htop -yy >/dev/null
part=$((part+1))

echo -e "\e[1m\e[31m[\e[97m$stage.$part\e[31m] \e[32m Installing thunderbird (email client)  \e[0m"
sudo apt-get install thunderbird -yy >/dev/null
part=$((part+1))

echo -e "\e[1m\e[31m[\e[97m$stage.$part\e[31m] \e[32m Installing mpv (video viewer)  \e[0m"
sudo apt-get install mpv -yy >/dev/null
part=$((part+1))

echo -e "\e[1m\e[31m[\e[97m$stage.$part\e[31m] \e[32m Installing noto-color-emoji (emoji font)  \e[0m"
sudo apt-get install fonts-noto-color-emoji -yy >/dev/null
part=$((part+1))

echo -e "\e[1m\e[31m[\e[97m$stage.$part\e[31m] \e[32m Installing network-manager and the applet  \e[0m"
sudo apt-get install network-manager network-manager-gnome -yy >/dev/null
part=$((part+1))

echo -e "\e[1m\e[31m[\e[97m$stage.$part\e[31m] \e[32m Installing drivers \e[0m"
sudo apt-get install ubuntu-drivers-common -yy >/dev/null
sudo ubuntu-drivers autoinstall >/dev/null
part=$((part+1))

echo -e "\e[1m\e[31m[\e[97m$stage.$part\e[31m] \e[32m Installing software-properties-common \e[0m"
sudo apt-get install software-properties-common -yy >/dev/null
part=$((part+1))

echo -e "\e[1m\e[31m[\e[97m$stage.$part\e[31m] \e[32m Upgrading softwares  \e[0m"
sudo apt-get upgrade -yy >/dev/null
part=$((part+1))

echo -e "\e[1m\e[31m[\e[97m$stage.$part\e[31m] \e[32m Installing vim plugin manager\e[0m"
curl -sfLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim >/dev/null
part=$((part+1))

cd $HOME/.programs

echo -e "\e[1m\e[31m[\e[97m$stage.$part\e[31m] \e[32m Installing bitwarden (password manager) \e[0m"
wget --quiet "https://vault.bitwarden.com/download/?app=desktop&platform=linux" -O bitwarden.AppImage >/dev/null
sudo chmod +x bitwarden.AppImage
part=$((part+1))

echo -e "\e[1m\e[31m[\e[97m$stage.$part\e[31m] \e[32m Installing zsh LS file extension colors  \e[0m"
git clone https://github.com/trapd00r/LS_COLORS >/dev/null
mkdir -p $HOME/.local/green
cd LS_COLORS
./install.sh
part=0 && stage=$((stage+1))

cd $HOME

sudo chmod +x $HOME/.scripts/*

echo -e "Do you need the extra files? [y/n]"
read choice
case $choice in
	"y")
		cd $HOME

		echo -e "\e[1m\e[31m[\e[97m$stage.$part\e[31m] \e[32m Installing moc (music player on console)  \e[0m"
		sudo apt-get install moc -yy >/dev/null
		part=$((part+1))

		echo -e "\e[1m\e[31m[\e[97m$stage.$part\e[31m] \e[32m Installing transmission (torrent client)  \e[0m"
		sudo apt-get install transmission-common transmission-gtk -yy >/dev/null
		part=$((part+1))

		echo -e "\e[1m\e[31m[\e[97m$stage.$part\e[31m] \e[32m Installing gdebi (package installer)  \e[0m"
		sudo apt-get install gdebi -yy >/dev/null
		part=$((part+1))

		echo -e "\e[1m\e[31m[\e[97m$stage.$part\e[31m] \e[32m Installing steam  \e[0m"
		sudo apt-get install steam -yy >/dev/null
		part=$((part+1))

		echo -e "\e[1m\e[31m[\e[97m$stage.$part\e[31m] \e[32m Installing curl\e[0m"
		sudo apt-get install curl -yy >/dev/null
		part=$((part+1))

		echo -e "\e[1m\e[31m[\e[97m$stage.$part\e[31m] \e[32m Installing syncthing\e[0m"
		sudo apt-get install syncthing -yy >/dev/null
		part=$((part+1))

		echo -e "\e[1m\e[31m[\e[97m$stage.$part\e[31m] \e[32m Installing java 8\e[0m"
		sudo apt-get install openjdk-8-jre-headless -yy >/dev/null
		part=$((part+1))

		echo -e "\e[1m\e[31m[\e[97m$stage.$part\e[31m] \e[32m Installing krita (image editor)\e[0m"
		sudo apt-get install krita -yy >/dev/null
		part=$((part+1))

		echo -e "\e[1m\e[31m[\e[97m$stage.$part\e[31m] \e[32m Installing calibre (ebook viewer)\e[0m"
		sudo apt-get install calibre -yy >/dev/null
		part=$((part+1))

		echo -e "\e[1m\e[31m[\e[97m$stage.$part\e[31m] \e[32m Installing discord\e[0m"
		wget --quiet "https://discordapp.com/api/download?platform=linux&format=deb" -O discord.deb >/dev/null
		sudo gdebi discord.deb --n >/dev/null
		rm discord.deb
		part=$((part+1))

		echo -e "\e[1m\e[31m[\e[97m$stage.$part\e[31m] \e[32m Installing multimc (minecraft mod manager)\e[0m"
		wget --quiet "https://files.multimc.org/downloads/multimc_1.4-1.deb" -O multimc.deb >/dev/null
		sudo gdebi multimc.deb >/dev/null
		rm multimc.deb
		part=$((part+1))

		echo -e "\e[1m\e[31m[\e[97m$stage.$part\e[31m] \e[32m Installing retroarch (retro console emulation software)\e[0m"
		sudo add-apt-repository ppa:libretro/stable >/dev/null
		sudo apt-get update -yy >/dev/null
		sudo apt-get install retroarch* -yy >/dev/null ;;

	*) echo -e "Extra softwares will not be installed" ;;
esac

echo -e "\e[32m Changing zsh to default shell  \e[0m"
chsh -s $(which zsh)
