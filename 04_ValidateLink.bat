@echo off
setlocal EnableDelayedExpansion

set "MYSQL_USER=root"
set "MYSQL_PASSWORD=root"
set "MYSQL_HOST=localhost"
set "DATABASE_NAME=favouritemanager"

for /f "tokens=1,2" %%a in ('mysql -u %MYSQL_USER% -p%MYSQL_PASSWORD% -h %MYSQL_HOST% %DATABASE_NAME% -e "SELECT `id`, `Link` FROM favourite;"') do (
    set "id=%%a"
    set "link=%%b"
    
    echo ID: !id!, Link: !link!
    
    curl --head --silent --fail --show-error --output NUL !link!
    if errorlevel 1 (
        mysql -u %MYSQL_USER% -p%MYSQL_PASSWORD% -h %MYSQL_HOST% %DATABASE_NAME% -e "UPDATE favourite SET IsValid=false WHERE `id`='!id!';"
    ) else (
        echo "good"
        
    )
)
