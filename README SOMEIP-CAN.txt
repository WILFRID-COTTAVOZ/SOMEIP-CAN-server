Sur les Raspi

mdp root = rustSII

Pour executer
cd /home/ubuntu/vsomeip/build/example
./request-sample

Les sources sont sous /home/ubuntu/vsomeip/examples

Pour compiler
cd /home/ubuntu/vsomeip/build/examples
cmake ..
make
make install

Raspi serveur :
sudo hostnamectl set-hostname Server

Raspi client :
sudo hostnamectl set-hostname Client

Pour installer can-utils sur la Raspi serveur
*********************************************
cd /home/Ubuntu
mkdir sdv_can
cd sdv_can
git clone https://github.com/linux-can/can-utils
cd can-utils
make

sudo ip link set can0 up type can bitrate 1000000
sudo ip link set can1 up type can bitrate 1000000
sudo ifconfig can0 txqueuelen 65536
sudo ifconfig can1 txqueuelen 65536
sudo ifconfig can0 up
sudo ifconfig can1 up
ifconfig      # Pour vérifier la présence des interfaces réseau can0 et can1


Pour exporter les fichiers de la VM Server
******************************************
Vi /etc/resolv.conf
spécfier nameserver 1.1.1.1

Utiliser le GUI web Github pour uploader puis commiter les 3 fichiers (.cpp, .sh et .json)

Merger le code cansend.c dans response-sample.cpp

cp /home/ubuntu/sdv_can/can_utils/lib.h /usr/include

remplacer le fichier /usr/include/linux/can/raw.h par le fichier include/linux/can/raw.h du répertoire can-utils 
Les lignes manquent sinon
CAN_RAW_XL_VCID_OPTS,	/* CAN XL VCID configuration options */ 
#define CAN_RAW_XL_VCID_TX_PASS		0x02


