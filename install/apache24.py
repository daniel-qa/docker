import os,sys
'''
commit : install apache 2.4
Author : Daniel
Time   : 2020.01.20
'''

# Step 1: Add Third-party PPA
if(0):
        os.system('apt-get install python-software-properties -y')  # python package
        os.system('apt-get install software-properties-common -y')          # python packag
        os.system('add-apt-repository ppa:ondrej/apache2')
        os.system('apt update -y')
        os.system('apt install apache2 -y')

# Step 2: Managing Apache2 server
'''

systemctl stop apache2.service
systemctl start apache2.service
systemctl restart apache2.service
systemctl reload apache2.service  # Reload config changes no stops

#Enable a module:
sudo a2enmod  module_name
#Disballe a module:
sudo a2dismod  module_name

'''
