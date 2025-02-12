@echo off

REM Check if cargo is installed
where cargo >nul 2>&1
if %errorlevel% neq 0 (
    echo Error: Cargo is not installed. Please install Rust and Cargo.
    exit /b 1
)

cargo run --bin ricky-redis-cli %*

if %errorlevel% neq 0 (
    echo Error: Failed to execute ricky-redis-cli
    exit /b %errorlevel%
)