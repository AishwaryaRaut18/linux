#! /bin/bash
echo "+-------------------------------+"
echo "|    LOCAL LINUX ENUMERATION    |"
echo "+-------------------------------+"
read -p "1. MANUAL  2. AUTO: " option
case "$option" in

	1)
	   echo "1. GETTING BASIC SYSTEM INFO "
	   read -p "2. ENUMERATING USER AND ENVIRONMENTAL INFO  " choice
           case "$choice" in
		   1)
			   echo "--------------------------------------"
			   echo "[+] GETTING BASIC SYSTEM INFORMATION |"
			   echo "--------------------------------------"
		           uname -r | xargs echo "[+] Kernel: "
                           hostname | xargs echo "[+] Hostname: "
                           cat /etc/os-release | grep "PRETTY_NAME" | xargs echo "[+] OS: " 
                           echo "---------------------------------"
			   echo "[+] GETTING NETWORK INFORMATION |"
			   echo "---------------------------------"
                           ip addr | xargs echo "[+] Interfaces: "
                           ;;

		   2)
		           echo "------------------------------------------------"
			   echo "| ENUMERATING USER AND ENVIRONMENTAL INFORMATION |"
			   echo "------------------------------------------------"                    
		          cat /etc/passwd | xargs echo "[+] All Users: " |jq
                          echo "------------------------------------"
                          whoami | xargs echo "[+] Current User: "
                           ;;
	   esac
	   ;;
	   
        2)
         

                echo "--------------------------------------------"

                   for usrid in `awk -F : '{print $3}' /etc/passwd`
                  do
                             if (("$usrid" >= 1000))
			     then
                                echo "all users are: " : `cat /etc/passwd |grep $usrid | awk -F : '{print $1,$3}'`
			       
				if( `cat /etc/passwd | grep $usrid | awk -F : '{print $1}'` == `cat /etc/shadow | awk  -F : '{print $1}'`)
			       	then
                                   
	         	        if ("$pas" == "!!")
			       	then
                                        echo "users without password: " : `cat /etc/shadow | awk -F : '{print $1}'`
                                else
                                        echo "users and their passwords are: " : `cat /etc/shadow | awk -F : '{print $1,$2}'`
                                fi
			      fi
	                     fi
       	          done

   esac
