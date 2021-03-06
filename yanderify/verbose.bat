@color a0

@if not defined sane echo Please use the shortcut instead of the batch file. && pause && exit

@set CONDA_DLL_SEARCH_MODIFICATION_ENABLE=1

@cd ..
@set MINICONDA_LOCATION=%CD%\miniconda
@set FOMM_LOCATION=%CD%\fomm
@cd yanderify

@call %MINICONDA_LOCATION%\Scripts\activate.bat

call conda.bat activate yanderify

@set PYTHONPATH=%PYTHONPATH%;%FOMM_LOCATION%

python -v yanderify.py debug verbose

@color

@powershell

@pause

