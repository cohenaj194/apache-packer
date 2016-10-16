# Apache Packer

**Install packer if you dont already have it:**


    #!/bin/bash
    sudo apt-get update -y
    sudo apt-get install -y unzip git
    #checks that ssh key id_rsa.pub exists
    if [ -z "$(ls ~/.ssh/ -1 | grep id_rsa.pub)" ]; then
    	# makes ssh key if none exists
    	ssh-keygen -f /home/ubuntu/.ssh/id_rsa -t rsa -N ''
    else
    	echo "ssh key already exists"
    fi
    
    #installing packer
    cd /usr/bin/
    sudo apt-get install unzip wget -y
    sudo wget https://releases.hashicorp.com/packer/0.10.1/packer_0.10.1_linux_amd64.zip
    sudo unzip packer_0.10.1_linux_amd64.zip && sudo rm packer_0.10.1_linux_amd64.zip
    cd ~


**Clone the repo:**

    git clone http://github.com/cohenaj194/apache-packer.git 

**Edit vars.json with your AMI info:**

    {
        "aws_access_key": "enterkeyhere",
        "aws_secret_key": "enterkeyhere",
        "region": "us-east-1"
    }

**Last run packer:**

    packer build -var-file=./vars.json ./example.json

**This command is also in `run.sh` so you could run this instead:**

    sh run.sh