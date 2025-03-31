sudo apt update
sudo apt autoremove man-db -y
sudo apt install musl-tools -y --no-install-recommends
repo=oksh
echo $repo > repo
git clone --depth=1 https://github.com/ibara/oksh
cd $repo
export CC=musl-gcc
export CFLAGS="-std=c99 -static -Os -fPIE -pipe -Wextra -Wall"
export LDFLAGS="-s -static -static-pie"
./configure --no-thanks
make 



