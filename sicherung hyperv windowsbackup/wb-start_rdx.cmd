@echo off

:: Datenträger per Bitlocker entsperren
:: hier für jedes mögliche Laufwerk eine Zeile anlegen

manage-bde -unlock f: -rp 000000-111111-222222-333333-444444-555555-666666-777777
manage-bde -unlock f: -rp 222222-333333-444444-555555-666666-777777-888888-999999
timeout /T 10 /nobreak

:: Alte Backups löschen

rd f:\desaster-backup /s /q
md f:\desaster-backup
timeout /T 10 /nobreak

:: Backup starten

wbadmin start backup -backupTarget:\\localhost\desaster-backup -include:c: -systemstate -hyperv:<vm-eins>,<vm-zwei>,<vm-drei> -allowDeleteOldBackups -quiet

exit
