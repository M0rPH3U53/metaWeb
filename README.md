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

# 👁️ Demo

https://github.com/user-attachments/assets/a2b18531-d7f0-432f-8392-b6a1c98fe501


