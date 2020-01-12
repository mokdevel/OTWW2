@echo off
@rem http://media.steampowered.com/installer/steamcmd.zip
SETLOCAL ENABLEDELAYEDEXPANSION

:: DEFINE the following variables where applicable to your install

SET STEAMLOGIN=AddYourSteamUserNameHere 
SET A3serverRoot=C:\ArmaOverthrowWW2

:: _________________________________________________________

SET Arma3SteamID=107410
SET A3serverPath=%A3serverRoot%\server
SET STEAMPATH=%A3serverRoot%\Steamcmd
SET WORKSHOPPATH=%A3serverPath%\steamapps\workshop\content\107410
SET SERVERMODPARAM=

:: _________________________________________________________

echo.
echo     You are about to update/install ArmA 3 Overthrow WW2 serverside mods
echo        Dir: %A3serverPath%
echo        Branch: %A3serverBRANCH%
echo.
echo     Key "ENTER" to proceed
::pause

::If noo parameters were given, continue with normal install
if [%1]==[] goto :normal_install
goto :justone

::--------------------------------------------------------------------------
:: The installation 

:normal_install
::@ace - http://steamcommunity.com/sharedfiles/filedetails/?id=463939057
call :install @ace 463939057
::@acex - http://steamcommunity.com/sharedfiles/filedetails/?id=708250744
call :install @acex 708250744
::@cba_a3 - http://steamcommunity.com/sharedfiles/filedetails/?id=450814997
call :install @cba_a3 450814997
::@7th armoured division - tank reskins - http://steamcommunity.com/sharedfiles/filedetails/?id=1521008163
call :install @7th_arm_div_tank_reskins 1521008163
::@bthbc terrains core - objects and shared definitions - http://steamcommunity.com/sharedfiles/filedetails/?id=1086746833
call :install @bthbc_terrains_core_objs_defs 1086746833
::@bthbc arma 3 editor models and functions - http://steamcommunity.com/sharedfiles/filedetails/?id=1126690691
call :install @bthbc_editor_models 1126690691
::@eam-dse , greek partizans & democratic army of greece - https://steamcommunity.com/sharedfiles/filedetails/?id=1511564772
call :install @eam_greek_partizans 1511564772
::@csa38 ace compatibility - http://steamcommunity.com/sharedfiles/filedetails/?id=1380911275
call :install @csa38_ace_comp 1380911275
::@csa38 mod - czechoslovak army 1938 (munich crisis) - http://steamcommunity.com/sharedfiles/filedetails/?id=641305739
call :install @csa38_czech_army_1938 641305739
::@csa38-fow-ifa3 weapons compatibility - http://steamcommunity.com/sharedfiles/filedetails/?id=1380910978
call :install @csa38-fow-ifa3_wep_comp 1380910978
::@cup terrains - core - http://steamcommunity.com/sharedfiles/filedetails/?id=583496184
call :install @cup_terrains_core 583496184
::@faces of war - http://steamcommunity.com/sharedfiles/filedetails/?id=891433622
call :install @faces_of_war 891433622
::@faces of war- german voices config - http://steamcommunity.com/sharedfiles/filedetails/?id=1096794089
call :install @faces_of_war_ger_voice_conf 1096794089
::@geist-a3 lite - http://steamcommunity.com/sharedfiles/filedetails/?id=773314286
call :install @geist-a3_lite 773314286
::@geist-a3 lite fow - http://steamcommunity.com/sharedfiles/filedetails/?id=1146976852
call :install @geist-a3_lite_fow 1146976852
::@grad trenches - http://steamcommunity.com/sharedfiles/filedetails/?id=1224892496
call :install @grad_trenches 1224892496
::@ifa3 liberation - http://steamcommunity.com/sharedfiles/filedetails/?id=950999958
call :install @ifa3_liberation 950999958
::@ifa3 liberation ace - http://steamcommunity.com/sharedfiles/filedetails/?id=952761380
call :install @ifa3_liberation_ace 952761380
::@ifa3 liberation compatibility fow - http://steamcommunity.com/sharedfiles/filedetails/?id=1482560453
call :install @ifa3_liberation_comp_fow 1482560453
::@ifa3 liberation compatibility fow ace - http://steamcommunity.com/sharedfiles/filedetails/?id=1482570558
call :install @ifa3_liberation_comp_fow_ace 1482570558
::@ifa3_aio_lite - http://steamcommunity.com/sharedfiles/filedetails/?id=660460283
call :install @ifa3_aio_lite 660460283
::@ifa3_revertchangestogui - http://steamcommunity.com/sharedfiles/filedetails/?id=1088237324
call :install @ifa3_revertchangestogui 1088237324
::@immersion cigs - http://steamcommunity.com/sharedfiles/filedetails/?id=753946944
call :install @immersion_cigs 1088237324
::@iron front arma 3 - ace 3 compatibility patch - http://steamcommunity.com/sharedfiles/filedetails/?id=773759919
call :install @ifa3_ace_comp 773759919
::@iron front arma 3 - faces of war compatibility patch - http://steamcommunity.com/sharedfiles/filedetails/?id=828493030
call :install @ifa3_fow_comp 828493030
::@iron front firearms recoil modifier - http://steamcommunity.com/sharedfiles/filedetails/?id=687398869
call :install @ifa3_firearms_recoil 687398869
::@len aio - http://steamcommunity.com/sharedfiles/filedetails/?id=1226354395
call :install @len_aio 1226354395
::@mod 6pdp - http://steamcommunity.com/sharedfiles/filedetails/?id=1462619926
call :install @6pdp 1462619926
::@niarms c96 pistols - http://steamcommunity.com/sharedfiles/filedetails/?id=1729907725
call :install @niarms_c96_pistols 1729907725
::@niarms core - http://steamcommunity.com/sharedfiles/filedetails/?id=667454606
call :install @niarms_core 667454606
::@secret weapons - http://steamcommunity.com/sharedfiles/filedetails/?id=756352410
call :install @secret_weapons 756352410
::@sab secret weapons - ace3 compatibility - http://steamcommunity.com/sharedfiles/filedetails/?id=1436492232
call :install @secret_weapons_ace_comp 1436492232
::@ww2_objects - http://steamcommunity.com/sharedfiles/filedetails/?id=937438041
call :install @ww2_objs 937438041
::@no more aircraft bouncing - http://steamcommunity.com/sharedfiles/filedetails/?id=1770265310
call :install @nmab 1770265310
::@overthrow_ww2
::@nss admin console

::
::-serverMod="workshop\@Advanced Rappelling;workshop\@Advanced Urban Rappelling" 

::@[fox] ace³ grass cutter - http://steamcommunity.com/sharedfiles/filedetails/?id=1391461759
::@rested weapon movement - http://steamcommunity.com/sharedfiles/filedetails/?id=1181731794
::@gc's low grass - no apex - http://steamcommunity.com/sharedfiles/filedetails/?id=891019537
::@mrb air visibility - http://steamcommunity.com/sharedfiles/filedetails/?id=929396506
::@mrb sea vessel visibility - http://steamcommunity.com/sharedfiles/filedetails/?id=1845100804
::@enhanced movement - http://steamcommunity.com/sharedfiles/filedetails/?id=333310405
::@outlawled magrepack v3.1.3 - http://steamcommunity.com/sharedfiles/filedetails/?id=1593431569
::@ch view distance - https://steamcommunity.com/sharedfiles/filedetails/?id=837729515
::@ladder tweak 2x - https://steamcommunity.com/sharedfiles/filedetails/?id=1804716719

goto: :end

::--------------------------------------------------------------------------
:: The installation for just one mod. 
:: call :justone %1
::
:: NOTE: This is currently broken! The MODNAME is not known and the :install routine will mklink to wrong directory
 
:justone
SET MODNAME=%1
SET MOD=%2
echo ------------------------------------------------------------------------
echo ---Installing just ONE mod: %MODNAME% (ID: %MOD%)
call :install %MODNAME% %MOD%
echo.
goto :end 

::--------------------------------------------------------------------------
:: The installation subroutine. 
:: call :install ModName SteamModID 
::
:: Params:
::  ModName : The name to use for the mod in server directory
::  SteamModID : ID of the workshop item defined by Steam
::
:: Example:
::  call :install @ACE 463939057

:install
SET MODNAME=%1
SET MOD=%2
echo ------------------------------------------------------------------------
echo ---Installing: %MODNAME% (ID: %MOD%)
%STEAMPATH%\steamcmd.exe +login %STEAMLOGIN% +force_install_dir %A3serverPath% +"workshop_download_item %Arma3SteamID% %MOD%" validate +quit
if not exist %A3serverPath%\%MODNAME% goto NO_RMDIR
rmdir %A3serverPath%\%MODNAME%
:NO_RMDIR
echo.
mklink /j %A3serverPath%\%MODNAME% "%WORKSHOPPATH%\%MOD%"
SET SERVERMODPARAM=%SERVERMODPARAM%%MODNAME%;
echo.
exit /b

::--------------------------------------------------------------------------
:: The End 

:end
echo.
echo     Your ArmA 3 Overthrow WW2 server is now up to date
echo 	-mod=%SERVERMODPARAM%
echo     key "ENTER" to exit
::pause
exit /b
