# 1. Establecer la política de ejecución
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser

# 2. Definir la URL del script de instalación de Zabbix Agent
$install_script = "https://raw.githubusercontent.com/wuilber002/Zabbix-Scripts/master/install/install-zbxAgent2_windows-x86_64.ps1"

# 3. Descargar el script de instalación
Invoke-WebRequest -Uri $install_script -OutFile "$env:TEMP\zabbix_agent_install.ps1"

# 4. Cambiar al directorio temporal
cd $env:TEMP

# 5. Ejecutar el script de instalación con el servidor Zabbix especificado
.\zabbix_agent_install.ps1 -server 192.168.0.61

# 6. Restaurar la política de ejecución original
Set-ExecutionPolicy Undefined -Scope CurrentUser
