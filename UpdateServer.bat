@echo off
start "" steamcmd.exe +login %1 %2 +force_install_dir %3 +app_update 1110990 validate +quit