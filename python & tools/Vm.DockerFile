FROM ubuntu:20.04

#setting the maintainer
RUN rm /bin/sh && ln -s /bin/bash /bin/sh

#update the package
RUN apt-get update

#Installing Python to Ubuntu
RUN apt-get install -y python3.9

RUN ln -s /usr/bin/python3.9 /usr/bin/python

#installing python package manager pip
RUN apt-get install -y python3-pip

#installing python venv
RUN pip install virtualenv

#installing sqlite3
RUN apt-get install -y sqlite3

#copy the projects files into the working directory
COPY ./projects /projects

# Copy all files from your custom scripts directory to /usr/local/bin/
COPY ./customScripts/* /usr/local/bin/

# Make all files in /usr/local/bin/ executable
RUN chmod +x /usr/local/bin/*

#set the working directory
WORKDIR /projects

# changing the default shell to bash
SHELL ["/bin/bash", "-c"]

#running the docker ubuntu image until the container is stopped
CMD ["tail", "-f", "/dev/null"]




