sudo apt update
sudo apt-get install openjdk-11-jdk
sudo apt install maven -y
sudo apt-get install git -y
if [ -d "addressbook-1" ]
then
 echo "repo is cloned and exists"
 cd /home/ubuntu/addressbook-1 
 git pull origin master
else
 echo "repo is not existed and cloning now.."
 git clone  https://github.com/nandaganesh/addressbook-1.git
fi
mvn package
 