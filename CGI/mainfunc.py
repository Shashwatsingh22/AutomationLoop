import playsfunc

def main_1(pl,de,mydata):
    #<---------pl_FOR_Webserver------>

    #DefultWeb 
    if pl=="defaultweb":
        
        playsfunc.prepInvList("webserver",de)
        playsfunc.DefaultWeb()

    #WebAuth    
    elif pl=="webAuth":
        
        playsfunc.prepInvList("webserver",de)
        playsfunc.WebAuth(mydata.getvalue("user"),mydata.getvalue("pass"))

    #CustomizeWeb
    elif pl=="CustomWeb":
        
        playsfunc.prepInvList("webserver",de)
        playsfunc.CustomWeb(mydata.getvalue("port"),mydata.getvalue("foldName"))


    #<-------pl_For_LoadBalancer------>
    elif pl=="LoadBal":

        playsfunc.preInvDic("loadb",de)
        playsfunc.loadbal()

    #<----------pl_For_Hadoop------->
    elif pl=="hmaster":

        playsfunc.prepInvList("hmaster",de)
        playsfunc.hmaster()

    elif pl=="hslave":
        
        playsfunc.prepInvList("hslave",de)
        playsfunc.hslave()



    #<-------Docker_Setup------------>
    elif pl=="dockerConfig":

        playsfunc.prepInvList("dockerConfig",de)
        playsfunc.dockerC()