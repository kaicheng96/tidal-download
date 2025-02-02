@echo off
set APP_NAME=tidal-download
set BUILD_DIR=build

mkdir %BUILD_DIR%

:: macOS Intel
set GOOS=darwin
set GOARCH=amd64
go build -o %BUILD_DIR%\%APP_NAME%-%GOOS%-%GOARCH% main.go

:: macOS Apple Silicon
set GOOS=darwin
set GOARCH=arm64
go build -o %BUILD_DIR%\%APP_NAME%-%GOOS%-%GOARCH% main.go

:: Linux AMD64
set GOOS=linux
set GOARCH=amd64
go build -o %BUILD_DIR%\%APP_NAME%-%GOOS%-%GOARCH% main.go

echo Build completed!
pause
