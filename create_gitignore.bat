@echo off
:: ======================================================
:: GENERATING .GITIGNORE FOR BRAIN SEGMENTATION PROJECT
:: ======================================================

:: 1. Create/Overwrite file with Data and Output folders
echo # Data and Output > .gitignore
echo data/ >> .gitignore
echo output/ >> .gitignore

:: 2. Ignore specific heavy image extensions
echo *.png >> .gitignore
echo *.jpg >> .gitignore
echo *.jpeg >> .gitignore
echo *.tif >> .gitignore
echo *.tiff >> .gitignore

:: 3. Ignore Python and Jupyter temporary files
echo # Python/Jupyter internals >> .gitignore
echo __pycache__/ >> .gitignore
echo .ipynb_checkpoints/ >> .gitignore
echo .virtual_documents/ >> .gitignore

:: 4. Ignore OS-specific junk
echo # System files >> .gitignore
echo .DS_Store >> .gitignore
echo Thumbs.db >> .gitignore

echo .gitignore has been successfully generated.
pause