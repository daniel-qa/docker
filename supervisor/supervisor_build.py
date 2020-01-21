mport os,sys
'''
commit : build supervisor image
Author : daniel
Time   : 2020.01.21
'''

# build image
if(1):
        os.system('docker build -t supervisor:v1 .')

