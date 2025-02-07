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
      
Entrer une IP scanner: 192.168.56.74
Entrer le nom de votre scan: test
[+]Scan 192.168.56.74 Nuclei...termniner
[+]Scan 192.168.56.74 Nikto...terminer
[+]Scan 192.168.56.74 Wapiti...terminer
[+]Scan 192.168.56.74 Skipfish...terminer
[+]Scan 192.168.56.74 ZAP...terminer
                                                             
=============================================================
|                         Rapports                          |
=============================================================
| Nuclei: /home/parrot/metaWeb/test/nuclei/test-rapport.txt |
| Nikto: /home/parrot/metaWeb/test/nikto/test-rapport.html  |
| Wapiti: /home/parrot/metaWeb/test/wapiti/test-rapport.txt |
| Skipfish: /home/parrot/metaWeb/test/skipfish/index.html   |
| ZAP: /home/parrot/metaWeb/test/ZAP/test-rapport.html      |
=============================================================
```
