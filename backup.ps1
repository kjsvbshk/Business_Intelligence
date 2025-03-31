# Configuración
$backupDir = "./backups"  # Directorio en raíz del proyecto
$containerName = "rentabilidad_db"
$dbName = "rentabilidad"
$dbUser = "root"
$dbPass = "rootpassword"
$timestamp = Get-Date -Format "yyyyMMdd_HHmmss"

# Crear directorio de backups si no existe
New-Item -ItemType Directory -Path $backupDir -Force | Out-Null

# Nombre del archivo de backup
$backupFile = "$backupDir/${dbName}_${timestamp}.sql"
$backupFileComp = "$backupDir/${dbName}_${timestamp}.sql.gz"

# Ejecutar mysqldump y redireccionar salida directamente al host
docker exec $containerName sh -c "mysqldump -u $dbUser -p$dbPass $dbName" > $backupFile

# Generar backup comprimido
docker exec $containerName sh -c "mysqldump -u $dbUser -p$dbPass $dbName | gzip -9" > $backupFileComp


# Verificar creación del archivo
if (Test-Path $backupFile) {
    Write-Host "Backup creado en: $backupFile" -ForegroundColor Green
    Write-Host "Backup creado en: $backupFileComp" -ForegroundColor Green
    Write-Host "Tamaño del backup: $((Get-Item $backupFile).Length / 1MB) MB" -ForegroundColor Cyan
} else {
    Write-Host "Error al generar el backup" -ForegroundColor Red
}