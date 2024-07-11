set -e

ascii_logo='
______  ______         ____    _____                _____         
\     \|\     \    ____\_  \__|\    \             /      |_       
 |     |\|     |  /     /     \\\    \           /         \      
 |     |/____ /  /     /\      |\\    \         |     /\    \     
 |     |\     \ |     |  |     | \|    | ______ |    |  |    \    
 |     | |     ||     |  |     |  |    |/      \|     \/      \   
 |     | |     ||     | /     /|  /            ||\      /\     \  
/_____/|/_____/||\     \_____/ | /_____/\_____/|| \_____\ \_____\ 
|    |||     | || \_____\   | / |      | |    ||| |     | |     | 
|____|/|_____|/  \ |    |___|/  |______|/|____|/ \|_____|\|_____| 
                  \|____|                                         
'

echo -e "$ascii_logo"
echo "=> ONLY for FRESH installations of Ubuntu 24.04"
echo -e "\nUpdating (ctrl+c to abort)...\n"

sudo apt-get update >/dev/null
sudo apt-get install git -y >/dev/null

echo -e "Downloading Bola...\n"
rm -rf ~/.local/share/bola
git clone --quiet https://github.com/coltiq/bola.git ~/.local/share/bola >/dev/null 2>&1

# TESTING ONLY
mkdir -p ~/.local/share/bola/bin >/dev/null
cp /media/sf_bin/bola ~/.local/share/bola/bin/bola >/dev/null

# Prompt user before starting the Go app
while true; do
    read -p "Are you sure you want to start the installation? [y/n]: " yn
    case $yn in
        [Yy]* ) 
            # Start Go app 
            exec ~/.local/share/bola/bin/bola 
            ;;
        [Nn]* ) 
            echo "Exiting without installing Bola."
            exit 0
            ;;
        * ) echo "Please answer yes [y] or no [n].";;
    esac
done

