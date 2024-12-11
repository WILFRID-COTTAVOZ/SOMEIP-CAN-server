export LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH
export VSOMEIP_CONFIGURATION=../../config/vsomeip-udp-service.json
export VSOMEIP_APPLICATION_NAME=service-sample
sudo route add -nv 224.224.224.245 dev enp0s8
./response-sample

