[root@hidden ~]# vi scripts/log_rotation.sh
#!/bin/bash

# Log Rotation Skripti
LOG_DIR="/var/log"
MAX_DAYS=7
BACKUP_DIR="/root/log_backups"
DATE=$(date +%Y-%m-%d_%H-%M-%S)

# Backup qovluğunu yarat
mkdir -p $BACKUP_DIR

echo "=== Log Rotation Başladı: $DATE ==="

# 7 gündən köhnə .log fayllarını tap və sil
echo "Köhnə loglar axtarılır..."
find $LOG_DIR -name "*.log" -mtime +$MAX_DAYS -type f

echo "Yuxarıdakı fayllar silinir..."
find $LOG_DIR -name "*.log" -mtime +$MAX_DAYS -type f -exec rm -f {} \;

echo "✅ $MAX_DAYS gündən köhnə loglar silindi."
echo "=== Log Rotation Tamamlandı ==="
[root@hidden ~]# chmod +x scripts/log_rotation.sh
[root@hidden ~]# ./scripts/log_rotation.sh
=== Log Rotation Başladı: 2026-04-07_11-35-49 ===
Köhnə loglar axtarılır...
/var/log/anaconda/anaconda.log
/var/log/anaconda/X.log
/var/log/anaconda/program.log
/var/log/anaconda/packaging.log
/var/log/anaconda/storage.log
/var/log/anaconda/lvm.log
/var/log/anaconda/dnf.librepo.log
/var/log/anaconda/hawkey.log
/var/log/anaconda/dbus.log
/var/log/anaconda/ks-script-di22efjl.log
/var/log/anaconda/ks-script-g3grt18m.log
/var/log/anaconda/ks-script-j1rodpnv.log
/var/log/anaconda/journal.log
/var/log/anaconda/lorax-packages.log
/var/log/vmware-vmtoolsd-root.log
Yuxarıdakı fayllar silinir...
✅ 7 gündən köhnə loglar silindi.
=== Log Rotation Tamamlandı ===
