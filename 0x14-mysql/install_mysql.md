Installing MySQL 5.7 and MySQL 8.0 on Ubuntu 18.04, 20.04, or Later
Installing MySQL 5.7 on Ubuntu 20.04 LTS
Step 1: Add MySQL 5.7 APT Repository
Download the MySQL repository package:
wget https://dev.mysql.com/get/mysql-apt-config_0.8.12-1_all.deb
Install the MySQL repository package:
sudo dpkg -i mysql-apt-config_0.8.12-1_all.deb
Select Ubuntu Bionic, then MySQL Server & Cluster, followed by mysql-5.7, and confirm.
Update the APT repository:
sudo apt update
If encountering a signature verification error, import the missing GPG key:

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 467B942D3A79BD29
(Replace this "467B942D3A79BD29" with your recv keys that will be display alongside with the error message)

Update APT again:
sudo apt update
Step 2: Install MySQL 5.7
Install MySQL 5.7 using the following command:
sudo apt install -f mysql-client=5.7* mysql-community-server=5.7* mysql-server=5.7*
Proceed with installation and set the root password when prompted.
Step 3: Secure your MySQL root user account
Run the security installation command:

sudo mysql_secure_installation
Step 4: Check MySQL version
Log in to MySQL and execute:

mysql -u root -p
SELECT VERSION();
Step 5: Add MySQL user and set privileges
Create a MySQL user account and grant privileges.

Step 6: Test MySQL 5.7
Verify MySQL service status:

sudo systemctl status mysql
Installing MySQL 8.0 on Ubuntu 20.04 LTS
Step 1: Download and Install MySQL 8.0 APT Repository
Download the MySQL 8.0 repository package:
wget https://dev.mysql.com/get/mysql-apt-config_0.8.12-1_all.deb
Install the repository package:
sudo dpkg -i mysql-apt-config_0.8.15-1_all.deb
Select options as prompted to configure the repository.
Step 2: Install MySQL 8.0
Install MySQL 8.0:
sudo apt install -f mysql-client=8.0* mysql-community-server=8.0* mysql-server=8.0*
Set the root password during installation.
Step 3: Check MySQL version
Check the installed MySQL version:

mysql –V
mysqladmin -u root -p version
Step 4: Create a MySQL user
Create a new MySQL user account
