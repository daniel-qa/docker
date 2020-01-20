import os,sys

'''
commit : some docker hub useful command
Author : daniel
Time   : 2020.01.20
'''

# login
if(0):
        os.system('docker login')
        # daniel7lin
# tag
if(0):
        cmd = 'docker tag hello-world:latest daniel7lin/hello-world:v1'
        print(cmd)
        os.system(cmd)
# push
if(0):
        os.system('docker push daniel7lin/hello-world:v1')

# pull
if(1):
        os.system('docker pull daniel7lin/hello-world:v1')
