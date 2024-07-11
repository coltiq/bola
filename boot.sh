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

echo "Downloading Bola..."
rm -rf ~/.local/share/bola
git clone https://github.com/coltiq/bola.git ~/.local/share/bola >/dev/null

# TESTING ONLY
mkdir -p ~/.local/share/bola/bin
cp /media/sf_bin/bola ~/.local/share/bola/bin/bola

# Start Go app
exec ~/.local/share/bola/bin/bola