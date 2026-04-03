@echo off
color 0A
echo ==========================================
echo      DIAGNOSTIC AUTOMATIQUE - DEPANNAGE
echo ==========================================
echo.
echo 1. Verification des fichiers systeme (SFC)
sfc /scannow
echo.
echo 2. Verification de l'image disque (DISM)
DISM /Online /Cleanup-Image /CheckHealth
echo.
echo 3. Nettoyage IP et DNS
ipconfig /flushdns
echo.
echo 4. Generation du rapport batterie (si portable)
powercfg /batteryreport /output "C:\Users\%username%\Desktop\Rapport_Batterie.html"
echo.
echo ==========================================
echo TERMINÉ ! Le rapport batterie est sur le bureau.
pause