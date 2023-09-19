sudo apt install openvpn easy-rsa

sudo mv -r /usr/share/easy-rsa /etc/openvpn/server/

cd /etc/openvpn/server/easy-rsa

sudo ./easy-rsa clean-all
sudo ./easy-rsa build-ca nopass

./easyrsa build-server-full server_name nopass
./easyrsa build-client-full client_name nopass

./easyrsa gen-dh nopass