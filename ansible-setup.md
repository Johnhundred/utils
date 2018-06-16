##### Install

ssh-keygen
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install -y ansible

###### Test Commands

ansible --version
ansible -c local 127.0.0.1 -m shell -a 'hostname'

###### Copy Base Config

sudo cp -R /etc/ansible .
nano ansible.cfg - set inventory to relative path (just hosts)

##### Getting Started (Simple)
nano hosts - add servers (shortnames/IPs, ports if non-standard)
