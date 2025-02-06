#!/bin/bash


titre() {
    cat <<"EOF"

__________________________________________________________________/\\\______________/\\\_________________/\\\________        
 _________________________________________________________________\/\\\_____________\/\\\________________\/\\\________       
  ________________________________________/\\\_____________________\/\\\_____________\/\\\________________\/\\\________      
   ____/\\\\\__/\\\\\_______/\\\\\\\\___/\\\\\\\\\\\__/\\\\\\\\\____\//\\\____/\\\____/\\\______/\\\\\\\\__\/\\\________     
    __/\\\///\\\\\///\\\___/\\\/////\\\_\////\\\////__\////////\\\____\//\\\__/\\\\\__/\\\_____/\\\/////\\\_\/\\\\\\\\\__    
     _\/\\\_\//\\\__\/\\\__/\\\\\\\\\\\_____\/\\\________/\\\\\\\\\\____\//\\\/\\\/\\\/\\\_____/\\\\\\\\\\\__\/\\\////\\\_   
      _\/\\\__\/\\\__\/\\\_\//\\///////______\/\\\_/\\___/\\\/////\\\_____\//\\\\\\//\\\\\_____\//\\///////___\/\\\__\/\\\_  
       _\/\\\__\/\\\__\/\\\__\//\\\\\\\\\\____\//\\\\\___\//\\\\\\\\/\\_____\//\\\__\//\\\_______\//\\\\\\\\\\_\/\\\\\\\\\__ 
        _\///___\///___\///____\//////////______\/////_____\////////\//_______\///____\///_________\//////////__\/////////___
        
 by M0rPH3U53

      
EOF
}

titre

read -p "Entrer une IP scanner: " IP
read -p "Entrer le nom de votre scan: " name

# Cree le dossier de scan
mkdir -p ${name}/nuclei ${name}/nikto ${name}/wapiti ${name}/skipfish ${name}/ZAP metaWeb

# Nuclei
nuclei_cmd() {

    echo "Scan ${IP} nuclei.."
    nuclei -u http://${IP} -o ${name}/nuclei/${name}-rapport.txt > /dev/null 2>&1
    echo "Scan ${IP} nuclei termniner"
}

# Nikto
nikto_cmd() {

    echo "Scan ${IP} Nikto..."
    nikto -url http://${IP} -C all -Format htm -o ${name}/nikto/${name}-rapport.html > /dev/null 2>&1
    echo "Scan ${IP} Nikto termniner"
}

# Wapiti
wapiti_cmd() {

    echo "Scan ${IP} Wapiti..."
    wapiti -u http://${IP} --flush-session -o ${name}/wapiti/${name}-rapport.txt --format txt > /dev/null 2>&1
    echo "Scan ${IP} Wapiti terminer"
}

# Skipfish
skipfish_cmd() {

    echo "Scan ${IP} Skipfish..."
    skipfish -o ${name}/skipfish http://${IP} > /dev/null 2>&1
    echo "Scan ${IP} Skipfish terminer"
}

# ZAP-OWASP a ajuster 
ZAP_cmd() {

    echo "Scan ${IP} ZAP..."
    sh ZAP_2.16.0/zap.sh -cmd -quickurl http://${IP} -quickout $HOME/Documents/${name}/ZAP/${name}-rapport.html -quickprogress > /dev/null 2>&1
    #zap.sh -cmd -quickurl http://${IP} -quickout $HOME/Documents/${name}/ZAP/${name}-rapport.html -quickprogress
    echo "Scan ${IP} ZAP terminer"
}

# Deplace les rapport
move_rapports() {

	mv ${name} metaWeb
}

# Appel des fonctions
nuclei_cmd &&

nikto_cmd &&

wapiti_cmd &&

skipfish_cmd &&

#move_rapports &&

ZAP_cmd

