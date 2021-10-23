import subprocess
import function


def prepInvList(filename,detail):
    
    print("Preparing the Inventory File for"+ filename + " . . . .")
    
    file= open("~/InventFiles/"+filename,mode="r+")
    function.writeToFileList(file,detail)
    file.close()

    print("Pinging To the Given Machines Details. . . .")
    output=subprocess.getoutput("ansible-playbook httpd.yml")
    print(output)


def preInvDic(filename,detail):
    
    print("Preparing the Inventory File . . . .")
    
    file= open("~/InventFiles/"+filename,mode="r+")
    file.write("[loadb]\n")
    function.writeToFileDic(file,"loadb",detail)
    file.write("[apps]\n")
    function.writeToFileDic(file,"apps",detail)
    file.close()

    print("Pinging To the Given Machines Details. . . .")
    output=subprocess.getoutput("ansible-playbook httpd.yml")
    print(output)

#-------Function WebServer-----------
def DefaultWeb():
    
    print("Running the Playbook !!\n")
    output=subprocess.getoutput("ansible-playbook /root/Desktop/DefultWeb/web.yml")
    print(output)

def WebAuth(u,p):
    
    print("Running the Playbook !!\n")
    output=subprocess.getoutput("ansible-playbook /root/Desktop/Playbook/WebAuth/web.yml --extra-vars '{""user"":" + str(u) +", ""pass"":" +str(p) + "}'")
    print(output)

def CustomWeb(port,fold):
    
    print("Running the Playbook !!\n")
    output=subprocess.getoutput("ansible-playbook /root/Desktop/Playbook/CustomWeb/web.yml --extra-vars '{""port"":" + str(port)+"/tcp" +", ""foldName"":" + "/var/www/"+str(fold) + "}'")
    print(output)


#----------Fuction For LoadBalancer----------
def loadbal():
    
    print("Running the Playbook !!\n")
    output=subprocess.getoutput("ansible-playbook /root/Desktop/Playbook/LoadBal/loadbal.yml")
    print(output)


#----------Function For Hadoop ---------
def hmaster():

    print("Running the Playbook !!\n")
    output=subprocess.getoutput("ansible-playbook /root/Desktop/Playbook/hadoop/master.yml")
    print(output)

def hslave():
    
    print("Running the Playbook !!\n")
    output=subprocess.getoutput("ansible-playbook /root/Desktop/Playbook/hadoop/slave.yml")
    print(output)

#-------------Docker Functions ----------
def dockerC():
    
    print("Running the Playbook !!\n")
    output=subprocess.getoutput("ansible-playbook /root/Desktop/Playbook/Docker/DockerConfig/docker.yml")
    print(output)