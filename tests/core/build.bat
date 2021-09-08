@echo off
set COMMON=-show-timings -no-bounds-check -vet -strict-style
set PATH_TO_ODIN==..\..\odin
python3 download_assets.py
echo ---
echo Running core:image tests
echo ---
%PATH_TO_ODIN% test image    %COMMON%
del image.exe

echo ---
echo Running core:compress tests
echo ---
%PATH_TO_ODIN% test compress %COMMON%
del compress.exe

echo ---
echo Running core:strings tests
echo ---
%PATH_TO_ODIN% test strings %COMMON%
del strings.exe