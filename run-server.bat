@echo off
set RUST_LOG=debug

REM Check if cargo is installed
where cargo >nul 2>&1
if %errorlevel% neq 0 (
    echo Error: Cargo is not installed. Please install Rust and Cargo.
    exit /b 1
)

echo Starting ricky-redis-server with debug logs...
cargo run --bin ricky-redis-server

if %errorlevel% neq 0 (
    echo Error: Failed to start ricky-redis-server
    exit /b %errorlevel%
)

echo ricky-redis-server started successfully.