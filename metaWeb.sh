#!/bin/bash

read -p "Entrer une IP scanner: " IP
read -p "Entrer le nom de votre scan: " name

# Cree le dossier de scan
mkdir -p ${name}/nuclei ${name}/nikto ${name}/wapiti ${name}/skipfish metaWeb/${name}/ZAP

# Nuclei
nuclei_cmd() {

	echo "Scan ${IP} nuclei.."
    nuclei -u http://${IP} -o ${name}/nuclei/${name}-rapport.txt
    echo "Scan ${IP} nuclei termniner"
}

# Nikto
nikto_cmd() {

	echo "Scan ${IP} Nikto..."
    nikto -url http://${IP} -C all -Format htm -o ${name}/nikto/${name}-rapport.html
    echo "Scan ${IP} Nikto termniner"
}

# Wapiti
wapiti_cmd() {

	echo "Scan ${IP} Wapiti..."
    wapiti -u http://${IP} -o ${name}/wapiti/${name}-rapport.txt --format txt
    echo "Scan ${IP} Wapiti terminer"
}

# Skipfish
skipfish_cmd() {

	echo "Scan ${IP} Skipfish..."
    skipfish -o ${name}/skipfish http://${IP}
	echo "Scan ${IP} Skipfish terminer"
}

# ZAP-OWASP
ZAP_cmd() {

    sh ZAP_2.16.0/zap.sh -daemon -quickurl http://${IP} -quickout $HOME/Documents/metaWeb/${name}/ZAP/${name}-rapport.html -quickprogress
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
