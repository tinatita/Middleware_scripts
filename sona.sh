#Author : Group 19
    #Date : feb 2022

echo -e "\n Installation and Configuration of SonarQube on CentOS 7\n"
echo

if
    [ $USER != root ]
    then 
    echo -e "\nYou need root access to run this\n"
    exit 2
    fi

#Step 1: Java 11 installation
sudo yum update -y
sudo yum install java-11-openjdk-devel -y
sudo yum install java-11-openjdk -y
echo
#Step 2: Download SonarQube latest versions on your server
cd /opt
sudo yum install wget -y
sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.3.0.51899.zip
echo
#Step 3: Extract packages
sudo yum install unzip -y
sudo unzip /opt/sonarqube-9.3.0.51899.zip
echo
#Step 4: Change ownership to the user and Switch to Linux binaries directory to start service
sudo chown -R vagrant:vagrant /opt/sonarqube-9.3.0.51899
cd /opt/sonarqube-9.3.0.51899/bin/linux-x86-64
./sonar.sh start

echo "Sonarqube installed successfully!:"
sleep 3