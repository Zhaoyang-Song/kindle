@echo off
echo RUNING MyClippingsTool.py
python MyClippingsTool.py
echo search.py run complete

echo RUNING search_main/search.py
cd search_main
python search.py
cd ..
echo search_main/search.py run complete

echo Open the generated local web page
start "" index.html

echo Deleting unnecessary files and folders...
for /d %%d in (*) do if /I not "%%d"=="books" if /I not "%%d"=="search_main" if /I not "%%d"=="style" rd /s /q "%%d"
for %%f in (*) do if /I not "%%f"=="clippings.json" if /I not "%%f"=="date.json" if /I not "%%f"=="index.html" del /f /q "%%f"

pause