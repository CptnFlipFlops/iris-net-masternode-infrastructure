# iris-net-masternode-infrastructure

Commands :

#Build Image:

docker build . -t irus_hub


#Run Container/Image :
 
docker run --name irus_hub -v <path_to_mount_on_vps>:/app/iris/ irus_hub

