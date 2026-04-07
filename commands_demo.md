# Linux Terminal Əmrləri (Nümunələr)

Bu faylda tapşırığa uyğun olaraq grep, awk, sed və curl əmrlərinin istifadəsini göstərirəm.
### 1. grep (Mətn Axtarışı)
`/etc/passwd` faylında "root" sözü olan sətirləri tapmaq:
[root@hidden ~]# grep "root" /etc/passwd
root:x:0:0:root:/root:/bin/bash
operator:x:11:0:operator:/root:/sbin/nologin
[root@hidden ~]#
##########################################
2. awk
/etc/passwd faylından yalnız istifadəçi adlarını (1-ci sütun) çap etmək:

[root@hidden ~]# awk -F: '{print $1}' /etc/passwd | head -n 5
root
bin
daemon
adm
lp
###########################################
3. sed
[root@hidden ~]# echo "Salam dünya köhnə" > test.txt
[root@hidden ~]# cat test.txt
Salam dünya köhnə  --- Gorduyumuz kimi test.txt icerisinde Salam dunya kohne yazdiq indi sed ile icini deyise bilirik.

[root@hidden ~]# sed 's/köhnə/yeni/g' test.txt
Salam dünya yeni
############################################
4.curl(Bir veb saytın başlıq (header) məlumatlarını əldə etmək:)
[root@hidden ~]# curl -I https://google.com
HTTP/2 301
location: https://www.google.com/
content-type: text/html; charset=UTF-8
content-security-policy-report-only: object-src 'none';base-uri 'self';script-src 'nonce-L2GPyaH30Kg4Hli66NHF1A' 'strict-dynamic' 'report-sample' 'unsafe-eval' 'unsafe-inline' https: http:;report-uri https://csp.withgoogle.com/csp/gws/other-hp
date: Tue, 07 Apr 2026 05:28:01 GMT
expires: Thu, 07 May 2026 05:28:01 GMT
cache-control: public, max-age=2592000
server: gws
content-length: 220
x-xss-protection: 0
x-frame-options: SAMEORIGIN
alt-svc: h3=":443"; ma=2592000,h3-29=":443"; ma=2592000
################################################
5. Permissions
mkdir -p scripts
vi scripts/backup.sh
#!/bin/bash

SOURCE="/root"
DEST="/root/backups"
DATE=$(date +%Y-%m-%d_%H-%M-%S)

mkdir -p $DEST
tar -czf $DEST/backup_$DATE.tar.gz $SOURCE

echo "Backup tamamlandı: backup_$DATE.tar.gz"
[root@BKSRINZTAPPVP01 ~]# ll
total 8
-rw-------. 1 root root 1082 Feb 27 10:36 anaconda-ks.cfg
drwxr-xr-x. 2 root root   47 Apr  7 10:49 backups
drwxr-xr-x. 2 root root   23 Apr  7 10:49 scripts
-rw-r--r--. 1 root root   21 Apr  7 09:24 test.txt
[root@hidden ~]# vi scripts/backup.sh
[root@hidden ~]# ./scripts/backup.sh
tar: Removing leading `/' from member names
Backup tamamlandı: backup_2026-04-07_10-51-49.tar.gz
[root@hidden ~]# ls /root/backups
backup_2026-04-07_10-49-45.tar.gz  backup_2026-04-07_10-51-49.tar.gz


