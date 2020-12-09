#!/bin/bash
#
# __author__     : @mrblackx
# __version__    : v1.6
# __description__: burpsuite pro setup
# __support__    : https://t.me/burp_chat
# __burpsuite__  : v2020.11.3
# __changelog__  : Added Z-Shell Support, Kill Shell For Restart, Fixed Errors (2)
# 

r="\e[31m"
g="\e[32m"
y="\e[33m"
b="\e[34m"
m="\e[35m"
c="\e[36m"
w="\e[37m"
bl="\e[1m"
rs="\e[0m"
path=$(pwd)
ueuid=$(cat /etc/passwd | grep "$USER" | cut -d":" -f3)

banner(){
	figlet -f slant "BurpSuite";figlet -f slant "Installer"
	echo -e "\t\t\t\t    ${r}@mrblackx\n\n\n\n"
}


run(){
	for i in {1..3}
	do
		echo -ne "${l:0:$i}";sleep 0.1
	done
}

update(){
	git config pull.rebase false
	git stash &>/dev/null

	up=$(git pull 2>/dev/null)
	echo -e "${g}[*] ${w}Checking if you up-to-date";run
	sleep 0.5
	if [[ "$up" == "Already up to date." ]]; then
		echo -e "${g}[i] ${w}Already on the latest version :-)${rs}"
	elif [[ "$up" == "Already up-to-date." ]]; then
		echo -e "${g}[i] ${w}Already on the latest version :-)${rs}"
	elif [[ "$up" == "Bereits aktuell." ]]; then
		echo -e "${g}[i] ${w}Already on the latest version :-)${rs}"
	else
		echo -e "${r}[!] ${w}Outdated, updating wait...."
		git pull -q &>/dev/null
		echo -e "${g}[*] ${w}Updated to the newest version :-)${rs}"
	fi

}

main(){
	echo -e "${bl}${b}[${g}*${b}] ${w}I will start Burpsuite, all you have to do is activate it manually.\nAfter activation, you can go back here and i will make the rest.${rs}"
	xterm -e java -javaagent:BurpSuiteLoader_v2020.11.3.jar -noverify -jar burpsuite_pro_v2020.11.3.jar &
	xterm -e java -jar burploader-old.jar &
	echo -ne "${bl}${b}[${g}*${b}] ${w}Hit enter if you have activated the burpsuite correctly> ${rs}"
	read enter
#	ps aux | grep xterm | sed 's/   / /g' | cut -d\  -f2 | head -n2 | xargs kill -9 &>/dev/null
#   if the command down below not work try the commented command as well
	ps aux | grep xterm | sed 's/    / /g' | cut -d\  -f2 | head -n2 | xargs kill -9 &>/dev/null
	ls *.burp &>/dev/null
	if [ $? -eq 0 ]; then
		echo -ne "${bl}${b}[${g}*${b}] ${w}Finishing setup${rs}"; run
		laste=$(cat ~/.bashrc | tail -1 | awk '{print $2}')
		laste_=$(cat ~/.zshrc | tail -1 | awk '{print $2}')
		
		path=$(pwd)
		
		if [[ "${laste}" == "burpy='cd" ]]; then
			echo -e "\n${bl}${b}[${g}*${b}] ${w}Already setuped as ${g}burpy ${w}command.${rs}"
			fix_errors
		else
			echo -e "\n${bl}${b}[${g}*${b}] ${w}Adding ${g}burpy ${w}command.${rs}"
			echo -e "alias burpy='cd ${path}; java -javaagent:BurpSuiteLoader_v2020.11.3.jar -noverify -jar burpsuite_pro_v2020.11.3.jar&'" >> ~/.bashrc
			fix_errors
		fi

		if [[ "${laste_}" == "burpy='cd" ]]; then
			echo -e "\n${bl}${b}[${g}*${b}] ${w}Already setuped as ${g}burpy ${w}command.${rs}"
			fix_errors
		else
			echo -e "\n${bl}${b}[${g}*${b}] ${w}Adding ${g}burpy ${w}command.${rs}"
			echo -e "alias burpy='cd ${path}; java -javaagent:BurpSuiteLoader_v2020.11.3.jar -noverify -jar burpsuite_pro_v2020.11.3.jar&'" >> ~/.zshrc
			fix_errors
		fi
	#elif [ $? -eq 2 ]; then
	else
		echo -e "${bl}${b}[${r}!${b}] ${w}You didn't followed the instructions, can't find burp project file!${rs}"
		exit 1
	

	fi
}

file_check(){
	i=0
	if [ -f BurpSuiteLoader_v2020.11.3.jar ]; then
		echo -e "${bl}${b}[${g}✓${b}] ${w}Found ${c}BurpSuiteLoader_v2020.11.3.jar${rs}"
		i=$(( $i + 1 ))
	elif [ ! -f BurpSuiteLoader_v2020.11.3.jar ]; then
		echo -e "${bl}${b}[${r}✗${b}] ${w}Not found ${c}BurpSuiteLoader_v2020.11.3.jar${rs}"
		exit 1
	fi
	if [ -f burploader-old.jar ]; then
		echo -e "${bl}${b}[${g}✓${b}] ${w}Found ${c}burploader-old.jar${rs}"
		i=$(( $i + 1 ))
	elif [ ! -f burploader-old.jar ]; then
		echo -e "${bl}${b}[${r}✗${b}] ${w}Not found ${c}burploader-old.jar${rs}"
		exit 1
	fi
	if [ -f burpsuite_pro_v2020.11.3.jar ]; then
		echo -e "${bl}${b}[${g}✓${b}] ${w}Found ${c}burpsuite_pro_v2020.11.3.jar${rs}"
		i=$(( $i + 1 ))
	elif [ ! -f burpsuite_pro_v2020.11.3.jar ]; then
		echo -e "${bl}${b}[${r}✗${b}] ${w}Not found ${c}burpsuite_pro_v2020.11.3.jar${rs}"
		exit 1
	fi

	if [ "${i}" -eq 3 ]; then
		main
	else
		echo -e "${bl}${b}[${r}✗${b}] ${w}Sorry, some files are missing and i can't continue!${rs}"
		exit 1
	fi
}

getinfo(){
	l="."
	
	packets=(openjdk-14-dbg openjdk-14-demo openjdk-14-doc openjdk-14-jdk openjdk-14-jdk-headless openjdk-14-jre openjdk-14-jre-zero openjdk-14-source)
	cmd=$(sudo apt list --installed ${item} | grep -o "installed\|installed" &>/dev/null)
	for item in ${packets[@]}
	do
		if [ ! ${cmd} ]; then
			echo -ne "${bl}${b}[${r}!${b}] ${w}Package ${r}${item} ${w}not found.\nInstalling it for you${rs}"; run
			sudo apt install ${item} -y
		fi
	done
	os=$(uname -s) # temp | no use
	dis=$(uname -s) # temp | no use
	file_check
}


fix_errors(){
	echo -e "\n${bl}${b}[${g}*${b}] ${w}Fixing common errors, please give root password if required.${rs}"
	sudo sysctl -w kernel.unprivileged_userns_clone=1
	x=$(java --version | head -1 | cut -d\  -f2 | cut -d"." -f1)
	if [[ "${x}" == "14" ]]; then
		echo -e "${bl}${b}[${g}*${b}] ${w}Up-To-Date."
		sleep 1; kill -9 $$
	else
		echo -e "${bl}${b}[${g}*${b}] ${w}Re-Fixing";run
		getinfo
	fi
}

check(){
	clear;banner
	if [[ "${EUID}" == 0 ]]; then
		update
		echo -e "${bl}${b}[${r}!${b}] ${w}Warning!\n\nYou are running this script as ${r}root ${w}user.\nNormally this has ${r}no influence${w}, but please be careful and enter the super-user password manually.${rs}"; sleep 0.5
		echo -ne "${bl}${b}[${y}?${b}] ${w}Do you want to start anyway?[${g}Y${w}/${r}N${w}]:${b} "
		read t
		if [[ "${t}" == "y" || "${t}" == "Y" ]]; then
			xterm=$(which xterm)
			if [[ "${xterm}" == "" ]]; then
				echo -e "${bl}${b}[${r}!${b}] ${g}xterm ${w}is not installed yet, let me install.${rs}${y}"
				sudo apt install xterm -y
				getinfo
			elif [[ "${xterm}" == "/usr/bin/xterm" ]]; then
				echo -e "${bl}${b}[${g}*${b}] ${g}xterm ${w}found, continue${rs}";run
				getinfo
			fi
		elif [[ "${t}" == "n" || "${t}" == "N" ]]; then
			exit 1
		fi
	elif [[ "${ueuid}" == 1000 ]]; then
		update
		echo -e "${bl}${b}[${g}*${b}] ${w}Well you are running the script as common user, please wait.${rs}"; sleep 0.5
		xterm=$(which xterm)
			if [[ "${xterm}" == "" ]]; then
				echo -e "${bl}${b}[${r}!${b}] ${g}xterm ${w}is not installed yet, let me install.${rs}${y}"
				sudo apt install xterm -y
				getinfo
			elif [[ "${xterm}" == "/usr/bin/xterm" ]]; then
				echo -e "${bl}${b}[${g}*${b}] ${g}xterm ${w}found, continue${rs}";run
				getinfo
			fi
	fi

}



check
