## Script para ejecutar el backup en Windows - PowerShell
Get-Content .\backup.sql | docker exec -i rentabilidad_db mysql -u root -prootpassword rentabilidad