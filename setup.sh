#Update Repos
sudo apt-get update

#add Java repo
sudo add-apt-repository ppa:webupd8team/java -y
#Install Java
sudo apt install -y oracle-java8-installer
#Set environment Variables
sudo apt install oracle-java8-set-default
#Configure Java Home Variable
sudo echo "JAVA_HOME=/usr/lib/jvm/java-8-oracle/jre/bin/java" >> /etc/environment
#Source Variable
source /etc/environment
#Install Maven
sudo apt-get install -y maven
# Create an environment variable for the correct distribution
export CLOUD_SDK_REPO="cloud-sdk-$(lsb_release -c -s)"
# Add the Cloud SDK distribution URI as a package source
echo "deb http://packages.cloud.google.com/apt $CLOUD_SDK_REPO main" | sudo tee -a /etc/apt/sources.list.d/google-c
loud-sdk.list
# Import the Google Cloud Platform public key
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
# Update the package list and install the Cloud SDK
sudo apt-get update && sudo apt-get install google-cloud-sdk
#Intiate Gcloud Init
gcloud init
