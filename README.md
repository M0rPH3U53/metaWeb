# metaWeb

Automatisation des scanner de vulns

<span style="color: #dddddd;">⚡</span> ZAP-OWASP --> https://www.zaproxy.org  
<span style="color: #dddddd;">⚛️</span> Nuclei --> https://github.com/projectdiscovery/nuclei  
<span style="color: #dddddd;">🐂</span> Wapiti --> https://wapiti-scanner.github.io  
<span style="color: #dddddd;">👽</span> Nikto --> https://cirt.net/nikto2  
<span style="color: #dddddd;">🐟</span> Skipfish --> https://github.com/spinkham/skipfish

# <span style="color: #dddddd;">🔧</span> Installation

```
┌─[parrot@parrot]─[~]
└──╼ $ sudo apt install skipfish wapiti zaproxy nikto nuclei
```
/!\ Regler selon votre installation & config


```
# ZAP-OWASP a ajuster 
ZAP_cmd() {

    echo -ne "${VERT}[+]${RESET} ${BLANC}Scan ZAP${RESET} ${VERT}${IP}${RESET}..."
    sh ZAP_2.16.0/zap.sh -cmd -quickurl http://${IP} -quickout $HOME/${name}/ZAP/${name}-rapport.html -quickprogress > /dev/null 2>&1
    #zap.sh -cmd -quickurl http://${IP} -quickout $HOME/Documents/${name}/ZAP/${name}-rapport.html -quickprogress
    echo -e "${JAUNE}100%${RESET}"
}
```

# 👁️ Prévisualisation

```
┌─[parrot@parrot]─[~/Documents]
└──╼ $sh metaWeb.sh


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
      
[i] Scan IP: 192.168.56.74
[i] Nom du scan: test

[+] Scan 192.168.56.74 Nuclei...100%
[+] Scan 192.168.56.74 Nikto...100%
[+] Scan 192.168.56.74 Wapiti...100%
[+] Scan 192.168.56.74 Skipfish...100%
[+] Scan 192.168.56.74 ZAP...100%
                                                             
=============================================================
|                         Rapports                          |
=============================================================
| Nuclei:/home/parrot/metaWeb/test/nuclei/test-rapport.txt  |
| Nikto:/home/parrot/metaWeb/test/nikto/test-rapport.html   |
| Wapiti:/home/parrot/metaWeb/test/wapiti/test-rapport.txt  |
| Skipfish:/home/parrot/metaWeb/test/skipfish/index.html    |
| ZAP:/home/parrot/metaWeb/test/ZAP/test-rapport.html       |
=============================================================
```
