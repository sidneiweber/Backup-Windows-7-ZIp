# backup.bat
Script backup para Windows utilizando 7-zip

Dependências: 7-Zip

Ainda podemos acresentar o envio do arquivo para outro local (LINUX) com WinSCP estando instalado no computador, basta antes do EXIT adicionar:
```bat
"C:\Program Files (x86)\WinSCP\WinSCP.com" /command "open sftp://user:senha@destino/" "put c:\backup_orcamento.7z /mnt/backup/" "option confirm on" "exit" del "c:\backup_orcamento.7z.tmp*" 
```
