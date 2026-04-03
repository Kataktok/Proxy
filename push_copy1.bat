@echo off
chcp 65001 >nul
echo ==================================
echo Добавляем файлы...
git add .
echo Готово!

echo.
echo Делаем коммит...
git commit -m "commit"
echo Готово!

echo.
echo Отправляем на GitHub...
git push --force git@github.com:Kataktok/Proxy.git
echo Готово!

echo.
echo ==================================
echo ВСЁ ЗАПИСАЛОСЬ!
echo ==================================
echo.
pause