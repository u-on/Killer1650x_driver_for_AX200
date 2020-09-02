@echo off
mode con lines=15 cols=70
color 27
echo off

echo 清除签名证书
reg delete "HKLM\SOFTWARE\Microsoft\SystemCertificates\ROOT\Certificates\A1586ECB289E75CD938CD6A4026B74D93DAF08B7" /f
if ERRORLEVEL 1 echo 签名证书清理失败
if ERRORLEVEL 0 echo 签名证书清理成功

ping -n 3 127.1>nul
exit