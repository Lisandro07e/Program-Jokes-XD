sudo mkdir -pm755 /etc/apt/keyrings
sudo wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key
sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/debian/dists/trixie/winehq-trixie.sources
sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/debian/dists/bookworm/winehq-bookworm.sources
sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/debian/dists/bullseye/winehq-bullseye.sources
sudo apt install --install-recommends winehq-stable
sudo apt install --install-recommends winehq-devel
sudo apt install --install-recommends winehq-staging
sudo apt install libpoppler-glib8:{i386,amd64}=22.02.0-2ubuntu0.3
sudo sed -i s@/usr/share/keyrings/@/etc/apt/keyrings/@ /etc/apt/sources.list.d/winehq-focal.sources
sudo apt-key del "D43F 6401 4536 9C51 D786 DDEA 76F1 A20F F987 672F"Update apt
sudo apt install --install-recommends winehq-stable
sudo apt install --install-recommends wine-staging
wine program.exe
WINEPREFIX=~/wine-staging /opt/wine-staging/bin/wine program.exe
sudo apt install winehq-staging=7.12~bookworm-1
sudo apt install winehq-staging=7.12~bookworm-1 wine-staging=7.12~bookworm-1 wine-staging-amd64=7.12~bookworm-1 wine-staging-i386=7.12~bookworm-1
sudo apt-get clean
sudo apt-get --download-only install winehq-<branch>
sudo apt-get --download-only dist-upgrade
cp -R /var/cache/apt/archives/ /media/usb-drive/deb-pkgs/
cd /media/usb-drive/deb-pkgs sudo dpkg -i *.deb
dpkg --print-architecture
dpkg --print-foreign-architectures
sudo dpkg --add-architecture i386
sudo mkdir -pm755 /etc/apt/keyrings
sudo wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/win...
sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/ubu...
sudo apt update
sudo apt install --install-recommends winehq-stable
wine winecfg
