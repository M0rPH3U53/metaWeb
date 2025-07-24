# ![metaWeb_zeus](https://github.com/user-attachments/assets/794ab03e-834b-4c7f-b6fd-407c2b281135)



Automatisation des scanner de vulns

<span style="color: #dddddd;">⚡</span> ZAP-OWASP --> https://www.zaproxy.org  
<span style="color: #dddddd;">⚛️</span> Nuclei --> https://github.com/projectdiscovery/nuclei  
<span style="color: #dddddd;">🐂</span> Wapiti --> https://wapiti-scanner.github.io  
<span style="color: #dddddd;">👽</span> Nikto --> https://cirt.net/nikto2  
<span style="color: #dddddd;">🐟</span> Skipfish --> https://github.com/spinkham/skipfish

# <span style="color: #dddddd;">🔧</span> Installation

```
┌─[m0rph3u5@parrot]─[~]
└──╼ $ sudo apt install skipfish wapiti zaproxy nikto nuclei
```
# ⚠️ Script ZAP
A modifier selon votre installation

```
# ZAP-OWASP a ajuster 
ZAP_cmd() {

    echo -ne "${VERT}[+]${RESET} ${BLANC}Scan ZAP${RESET} ${VERT}${IP}${RESET}..."
    sh ZAP_2.16.0/zap.sh -cmd -quickurl http://${IP} -quickout $HOME/${name}/ZAP/${name}-rapport.html -quickprogress > /dev/null 2>&1
    #/usr/share/zaproxy/zap.sh -cmd -quickurl http://${IP} -quickout $HOME/Documents/${name}/ZAP/${name}-rapport.html -quickprogress > /dev/null 2>&1
    echo -e "${JAUNE}100%${RESET}"
}
```

# 👁️ Prévisualisation

```
┌─[m0rph3u5@parrot]─[~/Documents]
└──╼ $./metaWeb.sh


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

⚛️ Nuclei 192.168.56.74...100%
👽 Nikto 192.168.56.74...100%
🐂 Wapiti 192.168.56.74...100%
🐟 Skipfish 192.168.56.74...100%
⚡ ZAP 192.168.56.74...100%
                                                             
====================================
|             Rapports             |
====================================
| /home/m0rph3u5/metaWeb/test/     |
====================================
```
