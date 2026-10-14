Write-Host "================================================================" -ForegroundColor Cyan
Write-Host "  PUSH VERCEL WRAPPER KE GITHUB (Pesantren Darul Aman Gombara)" -ForegroundColor Green
Write-Host "  Portal Resmi & Pendaftaran Santri Baru (PSB Online)" -ForegroundColor Yellow
Write-Host "================================================================" -ForegroundColor Cyan
Write-Host ""

git add .
git commit -m "feat: vercel wrapper for Pesantren Darul Aman Gombara" 2>$null
git push -u origin main

Write-Host ""
Write-Host "================================================================" -ForegroundColor Cyan
Write-Host "  Selesai! Push telah dijalankan." -ForegroundColor Green
Write-Host "================================================================" -ForegroundColor Cyan
