import os,sys

'''
commit : some docker useful docker command
Author : daniel
Time   : 2020.01.16
'''

os.system('echo "hello"')

# Build
if(0):
        cmd = 'docker run -t -i -p 6080:80 -p 6021:21 -p 6022:22 -p 6020:20 -p 6036:3306 '
        cmd = cmd + ' --name ies2-app ubuntu:16.04 /bin/bash'

        print(cmd)

        os.system(cmd)

# Commit
if(0):
        cmd = 'docker commit '
        containerID = 'd76a8089301f' + ' '
        imageName = 'ies2-app:v1'
        cmd =cmd +  containerID + imageName

        print(cmd)

        os.system(cmd)


