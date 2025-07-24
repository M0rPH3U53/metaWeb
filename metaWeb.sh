#!/bin/bash

ascii() {
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

ascii

# Couleur ASCII
BLEU='\e[34m'
ROUGE='\033[0;31m'
VERT='\033[0;32m'
GRIS='\033[0;37m'
JAUNE='\e[0;33m'
RESET='\033[0m'
BLANC='\033[1;37m'


echo -ne "${BLEU}[i]${RESET} ${BLANC}Scan IP:${RESET} "
read IP

echo -ne "${BLEU}[i]${RESET} ${BLANC}Nom du scan:${RESET} "
read name
echo " "
 
# Cree le dossier de scan
mkdir -p ${name}/nuclei ${name}/nikto ${name}/wapiti ${name}/skipfish ${name}/ZAP $HOME/metaWeb

# Nuclei
nuclei_cmd() {

    echo -ne "⚛️ ${VERT}[+]${RESET} ${BLANC}Nuclei${RESET} ${VERT}${IP}${RESET}..."
    nuclei -u http://${IP} -o ${name}/nuclei/${name}-rapport.txt > /dev/null 2>&1
    echo -e "${JAUNE}100%${RESET}"
}

# Nikto
nikto_cmd() {

    echo -ne "👽 ${VERT}[+]${RESET} ${BLANC}Nikto${RESET} ${VERT}${IP}${RESET}..."
    nikto -url http://${IP} -C all -Format htm -o ${name}/nikto/${name}-rapport.html > /dev/null 2>&1
    echo -e "${JAUNE}100%${RESET}"
}

# Wapiti
wapiti_cmd() {

    echo -ne "🐂 ${VERT}[+]${RESET} ${BLANC}Wapiti${RESET} ${VERT}${IP}${RESET}..."
    wapiti -u http://${IP} --flush-session -o ${name}/wapiti/${name}-rapport.txt --format txt > /dev/null 2>&1
    echo -n "${JAUNE}100%${RESET}"
}

# Skipfish
skipfish_cmd() {

    echo -ne "🐟 ${VERT}[+]${RESET} ${BLANC}Skipfish${RESET} ${VERT}${IP}${RESET}..."
    skipfish -o ${name}/skipfish http://${IP} > /dev/null 2>&1
    echo -e "${JAUNE}100%${RESET}"
}

# ZAP-OWASP a ajuster 
ZAP_cmd() {

    echo -ne "⚡ ${VERT}[+]${RESET} ${BLANC}ZAP${RESET} ${VERT}${IP}${RESET}..."
    sh ZAP_2.16.0/zap.sh -cmd -quickurl http://${IP} -quickout $HOME/${name}/ZAP/${name}-rapport.html -quickprogress > /dev/null 2>&1
    #/usr/share/zaproxy/zap.sh -cmd -quickurl http://${IP} -quickout $HOME/${name}/ZAP/${name}-rapport.html -quickprogress > /dev/null 2>&1
    echo -e "${JAUNE}100%${RESET}"
}

# Deplace les rapports
move_rapports() {

	mv ${name} $HOME/metaWeb
}

# Affiche les rapports 
view_rapports() {

    echo " "
    printf "============================================================\n"
    echo -e "|${BLANC}                         Rapport                         ${RESET}|"
    printf "============================================================\n"
    printf "| %-06s:%-40s |\n" "Rendu" "$HOME/metaWeb/${name}
    printf "============================================================\n"

}

# Appel des fonctions
nuclei_cmd &&

nikto_cmd &&

wapiti_cmd &&

skipfish_cmd &&

ZAP_cmd &&

move_rapports &&

view_rapports
