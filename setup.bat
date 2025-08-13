@echo off

echo 🚀 Setting up VIQ Tech Blog...

:: Check if Python is installed
python --version >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
    echo ❌ Python is not installed. Please install Python 3.8 or higher.
    pause
    exit /b 1
)

echo ✅ Python found
python --version

:: Create virtual environment
echo 📦 Creating virtual environment...
python -m venv venv

:: Activate virtual environment
echo 🔧 Activating virtual environment...
call venv\Scripts\activate.bat

:: Install dependencies
echo 📚 Installing dependencies...
pip install -r requirements.txt

echo ✅ Setup complete!
echo.
echo 🎉 Next steps:
echo 1. Activate the virtual environment:
echo    venv\Scripts\activate.bat
echo 2. Start the development server:
echo    mkdocs serve
echo 3. Open http://localhost:8000 in your browser
echo.
echo Happy blogging! 📝

pause
