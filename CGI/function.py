def writeToFileList(fileVar,List):
    for List_1 in List:
        fileVar.write(List_1[0]+" ansible_ssh_user="+List_1[1]+" asible_ssh_pass="+List_1[2]+"ansible_connection=ssh\n")

    

def writeToFileDic(fileVar,keyname,Dic):
    for Dic in Dic[keyname]:
        fileVar.write(Dic[0]+"  ansible_user="+Dic[1]+"  asible_ssh_pass="+ Dic[2]+"  ansible_connection=ssh\n")