@echo off
chcp 65001 > nul
echo ================================================================
echo   PUSH VERCEL WRAPPER KE GITHUB (Pesantren Darul Aman Gombara)
echo   Portal Resmi & Pendaftaran Santri Baru (PSB Online)
echo ================================================================
echo.

git add .
git commit -m "feat: vercel wrapper for Pesantren Darul Aman Gombara" 2>nul
git push -u origin main

echo.
echo ================================================================
echo   Selesai! Jika muncul popup login GitHub, silakan lakukan login.
echo ================================================================
pause
