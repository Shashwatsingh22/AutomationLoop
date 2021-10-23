# AutomationLoop
If we need to configure the Web-server, Dockers, K8s, Load Balancer, Nginx, Zimbra (Mail Server), To the Private Cloud Machine or Public Cloud Servers then it can easily be done by Our AutomationLoop.

# Q) What is the purpose of this App? <br>
Ans-> It is very difficult and time taking task to configure a 100 and 1000 of machines at one time, So here this AutomationLoop's role comes in play
thorugh this application you do not need to write a single piece of code as this application provides a grpahical user interface to complete the task .

Q) What type of data centres can be configured through this app?
Ans->1 Private data centres
2 public data cloud

Q) What are the Inputs requird for private data centre.
Ans-> this app requires certain input like- no of machines to be configured,ip,Authentication details,software you want to configure  

Q) What are the Inputs requird for public cloud machines.
Ans-> this app requires certain input like- virtual machine tags,secret key, Access key

Q) How this application works?
Ans-> step1- you need to select the type of data centre you want to configured.
      
      s2-choose the software you want to configure(ex-Docker,load balancer,hadoop,e.t.c)
      s3-enter the number of machines you want to configure
      s4-enter the details of macchine(ip,User name , Password)
      s5-click on the execute button
      s6-machines which are in the process of configuring will be displayed on the shell below

Q) How this application works for public cloud?
Ans->step1- you need to select the type of data centre you want to configure.
     s2-give the access key and secret key to this application
     s3-choose the software you want to configure
     
Q) Softwares which can configure currently by our app
Ans->Doakcer,Web Server(Apache, nginx), Mail Server(Zimbra),Load Balancer(HAproxy)

Q) Currently the cloud service we use.
Ans->At this time we use Amazon Web Service but we We will also work on microsoft Azure,Google cloud platform in coming future.

Q)What are the future updates 
Ans->	Currently our client has to give there ip details so to overcome this we willintegragte ip scanning tool through which user has to give only CIDR value(range).
        To tackle same problem there is another solution provide by us in which user has to provide a excel file with details of ip and authentication throught this we can scan this file and maintin out inventory.
