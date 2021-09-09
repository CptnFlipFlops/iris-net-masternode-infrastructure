# iris-net-masternode-infrastructure

Commands :

# Build Image:

``
docker build . -t irus_hub:<version>
``

# Push
    Tag
``
docker tag irus_hub:<version> <docker-registry>>/<repo>/irus_hub:<version>
``
    
    e.g:
``
docker tag irus_hub:v1.1.1 registry.digitalocean.com/ccg-image-hub/irus_hub:v1.1.1
``
    
    Push
``
docker push <docker-registry>>/<repo>/irus_hub:<version>
``

    e.g
``
docker push registry.digitalocean.com/ccg-image-hub/irus_hub:v1.1.1
``

# Run Container/Image :

``
docker run --name irus_hub -v <path_to_mount_on_vps>:/app/iris/ irus_hub
``

    E.g
``
#Using the Digital Ocean Droplet mounted volumes, do note the sync with the mainet takes long. 200GB+ 
docker run -d --name irus_hub_v1.1.1 -v /mnt/volume_lon1_01/iris/data:/app/iris/ irus_hub:v1.1.1
``



