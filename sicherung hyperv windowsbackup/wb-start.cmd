@echo off

wbadmin start backup -backupTarget:\\localhost\desaster-backup -hyperv:serv12-dc,serv-oviva -quiet

exit