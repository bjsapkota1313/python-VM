# Ubuntu Docker Image to run the python projects in the container
### This image is based on the Ubuntu 18.04 image and has the following packages installed:
#- Python 3.6
#- Pip3

#To build the image, run the following command:
docker-compose up --build

# all the scripts under custom scripts folder will be copied to the container
# The container will be started and the script will be executed
