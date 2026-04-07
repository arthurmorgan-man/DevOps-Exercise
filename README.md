# Linux & Scripting Tapşırığı - Dərs 2

## Mövzu
Linux fayl sistemi, permissions, process management və bash scripting əsasları.

## Repo Strukturu
| Fayl/Qovluq | Təsvir |
|---|---|
| `commands_demo.md` | grep, awk, sed, curl nümunələri və çıxışları |
| `scripts/backup.sh` | Avtomatik backup skripti |
| `scripts/log_rotation.sh` | Köhnə logları silən skript |
| `configs/crontab.txt` | Cron job nümunəsi |
| `configs/my_backup.service` | Systemd servis konfiqurasiyası |
| `proof/terminal_runs.txt` | Skriptlərin işləmə sübutu |

## İstifadə olunan əmrlər
- `grep` — Faylda mətn axtarışı
- `awk` — Mətn emalı və sütun çıxarışı
- `sed` — Mətni əvəz etmə
- `curl` — Veb sorğuları

## Skriptləri Necə İşə Salmaq
```bash
chmod +x scripts/backup.sh
./scripts/backup.sh

chmod +x scripts/log_rotation.sh
./scripts/log_rotation.sh
