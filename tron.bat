#############
# CHANGELOG #
#############
# Legend:
 + Addition    - Removal   
 ! Bug fix     * Update/fix/improvement
 . No change   / Change (non bug-fix)

# Version number increment legend:
x.x.x
| | |
| | program/definition updates or minor bug fix/change
| minor feature add/remove OR critical bug fix
major feature add/remove


########################
# v3.3.0 // 2014-09-xx #
########################
tron.bat                         v3.3.0


STAGE 0: Prep
 . Rkill                         v2.6.8.0
 
STAGE 1: Tempclean
 . CCLeaner                      v4.17.4808
 . Bleachbit                     v1.2

STAGE 2: Disinfect
 * Sophos Virus Removal Tool     v2.5, updated defs
 * Vipre Rescue Scanner          v7.0.7.8, updated defs
 . Malwarebytes Anti-Malware     v2.0.2.1012.exe
 
STAGE 3: De-bloat, programs specified in: \resources\stage_3_de-bloat\programs_to_target.txt
 - some redundant entries removed

STAGE 4: Patch
 . 7-zip                         v9.20         (multi-language)
 . Adobe Flash Player            v14.0.0.179   (language ignored)
 . Adobe Reader                  v11.0.08      (English-only; replace with your langauge version if necessary)
 . Java Runtime Environment      8u20          (language ignored)
 * Notepad++                     v6.6.9        (multi-language)
 . Windows updates               <pulled down live>
 
STAGE 5: Optimize
 . smartctl                      v6.2 2013-07-26 r3841
 . Defraggler                    v2.18.0.945
 
STAGE 6: Manual tools
 . ADSSpy                        v1.11.0.0
 . AdwCleaner                    v3.3.0.9
 . aswMBR                        v1.0.1.2041
 . autoruns                      v12.01
 . ComboFix                      v14.8.31.1
 . gmer                          v2.1.19357
 . Junkware Removal Tool         v6.1.4
 . TDSSKiller                    v3.0.0.40
 . TempFileCleaner               v3.1.9.0
 . VirusTotal uploader tool      v2.2


########################
# v3.2.1 // 2014-09-05 #
########################
 * checksums.txt now uses SHA-256 for integrity verification instead of MD5. Thanks to reddit.com/user/abcot

tron.bat                         v3.2.1
 ! stage_0_prep:check_update: Minor bug fix in update checker - don't set REPO_SCRIPT_VERSION and REPO_SCRIPT_DATE if we can't reach the update server. Thanks to reddit.com/user/A999
 / stage_3_de-bloat:          Moved programs_to_target.txt and "note - read this.txt" to their own job subfolder ("oem") and updated tron.bat and instructions file to reflect changes


########################
# v3.2.0 // 2014-09-03 #
########################
tron.bat                         v3.2.0
 * tron.bat: Convert many references to internal Windows utilities to absolute paths to avoid relying on SYSTEM path to be correct. Thanks to reddit.com/user/tastyratz
 * tron.bat: Replace all references to %WinDir% with %SystemRoot% since it is a 'core' variable and defined earlier in the OS lifetime (at OS installation) whereas %WINDIR% is a regular variable set to the value of %SystemRoot%
 * tron.bat: Update links to reflect new Adobe Flash installers
 ! tron.bat: Fix references to WMIC - we were mistakenly still relying on SYSTEM path and not using the absolute path set in the WMIC variable

STAGE 0: Prep
 . Rkill                         v2.6.8.0
 
STAGE 1: Tempclean
 * CCLeaner                      v4.17.4808
 . Bleachbit                     v1.2

STAGE 2: Disinfect
 * Sophos Virus Removal Tool     v2.5, updated defs
 * Vipre Rescue Scanner          v7.0.7.8, updated defs
 . Malwarebytes Anti-Malware     v2.0.2.1012.exe
 
STAGE 3: De-bloat, programs specified in: \resources\stage_3_de-bloat\programs_to_target.txt
 - some redundant entries removed

STAGE 4: Patch
 . 7-zip                         v9.20         (multi-language)
 * Adobe Flash Player            v14.0.0.179   (language ignored)
 . Adobe Reader                  v11.0.08      (English-only; replace with your langauge version if necessary)
 . Java Runtime Environment      8u20          (language ignored)
 . Notepad++                     v6.6.8        (multi-language)
 . Windows updates               <pulled down live>
 
STAGE 5: Optimize
 . smartctl                      v6.2 2013-07-26 r3841
 . Defraggler                    v2.18.0.945
 
STAGE 6: Manual tools
 . ADSSpy                        v1.11.0.0
 * AdwCleaner                    v3.3.0.9
 . aswMBR                        v1.0.1.2041
 . autoruns                      v12.01
 * ComboFix                      v14.8.31.1
 . gmer                          v2.1.19357
 . Junkware Removal Tool         v6.1.4
 . TDSSKiller                    v3.0.0.40
 . TempFileCleaner               v3.1.9.0
 . VirusTotal uploader tool      v2.2
 

########################
# v3.1.0 // 2014-08-28 #
########################
tron.bat                         v3.1.0
 * stage_0_prep:  Improve Event Log clearing routine; now save all Event Logs to %LOGPATH%\event_log_backups before clearing.
                  Thanks to reddit.com/user/meandertothehorizon, reddit.com/user/-pANIC- and reddit.com/user/tethercat
                  I'm open to code block improvements on this section, the current method feels clumsy somehow.
 / stage_4_patch: Update Java installer links to reflect new paths				 

STAGE 0: Prep
 . Rkill                         v2.6.8.0
 
STAGE 1: Tempclean
 . CCLeaner                      v4.16.4763
 . Bleachbit                     v1.2

STAGE 2: Disinfect
 * Sophos Virus Removal Tool     v2.5, updated defs
 * Vipre Rescue Scanner          v7.0.7.8, updated defs
 . Malwarebytes Anti-Malware     v2.0.2.1012.exe
 
STAGE 3: De-bloat, programs specified in: \resources\stage_3_de-bloat\programs_to_target.txt
 . no changes

STAGE 4: Patch
 . 7-zip                         v9.20         (multi-language)
 . Adobe Flash Player            v14.0.0.176   (language ignored)
 . Adobe Reader                  v11.0.08      (English-only; replace with your langauge version if necessary)
 * Java Runtime Environment      8u20          (language ignored)
 . Notepad++                     v6.6.8        (multi-language)
 . Windows updates               <pulled down live>
 
STAGE 5: Optimize
 . smartctl                      v6.2 2013-07-26 r3841
 . Defraggler                    v2.18.0.945
 
STAGE 6: Manual tools
 . ADSSpy                        v1.11.0.0
 . AdwCleaner                    v3.3.0.8
 . aswMBR                        v1.0.1.2041
 . autoruns                      v12.01
 * ComboFix                      v14.8.28.1
 . gmer                          v2.1.19357
 . Junkware Removal Tool         v6.1.4
 . TDSSKiller                    v3.0.0.40
 . TempFileCleaner               v3.1.9.0
 . VirusTotal uploader tool      v2.2


########################
# v3.0.1 // 2014-08-23 #
########################

STAGE 0: Prep
 * check_update: Replaced wget binary with standalone version. Thanks to reddit.com/user/Olonzac


########################
# v3.0.0 // 2014-08-23 #
########################
tron.bat                         v3.0.0
 + wrap-up:           Collect Vipre and MBAM logs (deposit them in LOGPATH directory). Thanks to reddit.com/user/swtester
 + tron.bat:          Add rudimentary update check. Will notify you if a newer version is available on the official repo server
 - tron.bat:          Remove outdated reference to Emsisoft's a2cmd in welcome screen. Thanks to reddit.com/user/swtester
 / tron.bat:          Rename SCRIPT_UPDATED to SCRIPT_DATE
 * prep and checks:   Beef up OS detection routine to support various improvements
 * stage_2_disinfect: Switch order of Vipre and Sophos to prevent Sophos deleting Vipre's quarantine, preventing recovery. Thanks to reddit.com/user/swtester
 + stage_3_de-bloat:  Add removal of default Metro apps (Windows 8/8.1 only). Thanks to https://keybase.io/exabrial

STAGE 0: Prep
 . Rkill                         v2.6.8.0
 
STAGE 1: Tempclean
 . CCLeaner                      v4.16.4763
 . Bleachbit                     v1.2

STAGE 2: Disinfect
 * Sophos Virus Removal Tool     v2.5, updated defs
 * Vipre Rescue Scanner          v7.0.7.8, updated defs
 . Malwarebytes Anti-Malware     v2.0.2.1012.exe
 
STAGE 3: De-bloat, programs specified in: \resources\stage_3_de-bloat\programs_to_target.txt

STAGE 4: Patch
 . 7-zip                         v9.20         (multi-language)
 . Adobe Flash Player            v14.0.0.176   (language ignored)
 . Adobe Reader                  v11.0.08      (English-only; replace with your langauge version if necessary)
 . Java Runtime Environment      8u11          (language ignored)
 . Notepad++                     v6.6.8        (multi-language)
 . Windows updates               <pulled down live>
 
STAGE 5: Optimize
 . smartctl                      v6.2 2013-07-26 r3841
 . Defraggler                    v2.18.0.945
 
STAGE 6: Manual tools
 . ADSSpy                        v1.11.0.0
 . AdwCleaner                    v3.3.0.8
 . aswMBR                        v1.0.1.2041
 . autoruns                      v12.01
 * ComboFix                      v14.8.21.1
 . gmer                          v2.1.19357
 . Junkware Removal Tool         v6.1.4
 . TDSSKiller                    v3.0.0.40
 . TempFileCleaner               v3.1.9.0
 . VirusTotal uploader tool      v2.2
 
 
########################
# v2.2.1 // 2014-08-21 #
########################
tron.bat                         v2.2.1
 ! prep and checks:   Fix admin rights check; net session doesn't work in Safe Mode, but all command prompts launched in Safe Mode are admin-privileged by default, so we simply skip the Admin rights check if we're already in safe mode.
 * stage_3_disinfect: Integrate SFC's log into main tron.log. Thanks to reddit.com/user/adminhugh
 - stage_3_disinfect: Remove Emsisoft's a2cmd scanner since it seems to crash and stall the script more often than it does anything else
 ! stage_4_patch:     Fix incorrect call to "jre-8u11-x86.bat" (should be "jre-8u11-i586.bat"). Thanks to reddit.com/user/swtester

STAGE 0: Prep
 . Rkill                         v2.6.8.0
 
STAGE 1: Tempclean
 . CCLeaner                      v4.16.4763
 . Bleachbit                     v1.2

STAGE 2: Disinfect
 * Sophos Virus Removal Tool     v2.5, updated defs
 * Vipre Rescue Scanner          v7.0.7.8, updated defs
 - Emsisoft Commandline Scanner  v9.0.0.4183 -- REMOVED
 . Malwarebytes Anti-Malware     v2.0.2.1012.exe
 
STAGE 3: De-bloat, programs specified in: \resources\stage_3_de-bloat\programs_to_target.txt
 + Added a couple new entries

STAGE 4: Patch
 . 7-zip                         v9.20         (multi-language)
 . Adobe Flash Player            v14.0.0.176   (language ignored)
 . Adobe Reader                  v11.0.08      (English-only; replace with your langauge version if necessary)
 . Java Runtime Environment      8u11          (language ignored)
 . Notepad++                     v6.6.8        (multi-language)
 . Windows updates               <pulled down live>
 
STAGE 5: Optimize
 . smartctl                      v6.2 2013-07-26 r3841
 . Defraggler                    v2.18.0.945
 
STAGE 6: Manual tools
 . ADSSpy                        v1.11.0.0
 * AdwCleaner                    v3.3.0.8
 . aswMBR                        v1.0.1.2041
 . autoruns                      v12.01
 * ComboFix                      v14.8.19.1
 . gmer                          v2.1.19357
 . Junkware Removal Tool         v6.1.4
 . TDSSKiller                    v3.0.0.40
 . TempFileCleaner               v3.1.9.0
 . VirusTotal uploader tool      v2.2
 

########################
# v2.1.0 // 2014-08-13 #
########################
tron.bat                         v2.1.0
 ! prep and checks:  Fix admin check. Thanks to reddit.com/user/agent-squirrel
 / prep and checks:  Admin check color change. Will now be more alarming and hopefully reduce number of people who try to run as non-Admin
 * stage_4_patch:    Updated links to reflect new Flash and Reader installers
 * tron.bat:         Misc snarky comments about MS products removed
 
STAGE 0: Prep
 * Rkill                         v2.6.8.0
 
STAGE 1: Tempclean
 . CCLeaner                      v4.16.4763
 . Bleachbit                     v1.2

STAGE 2: Disinfect
 * Sophos Virus Removal Tool     v2.5, updated defs
 * Vipre Rescue Scanner          v7.0.7.8, updated defs
 * Emsisoft Commandline Scanner  v9.0.0.4183, updated defs
 . Malwarebytes Anti-Malware     v2.0.2.1012.exe
 
STAGE 3: De-bloat, programs specified in: \resources\stage_3_de-bloat\programs_to_target.txt

STAGE 4: Patch
 . 7-zip                         v9.20
 * Adobe Flash Player            v14.0.0.176
 * Adobe Reader                  v11.0.08
 . Java Runtime Environment      8u11
 . Notepad++                     v6.6.8
 . Windows updates               <pulled down live>
 
STAGE 5: Optimize
 . smartctl                      v6.2 2013-07-26 r3841
 . Defraggler                    v2.18.0.945
 
STAGE 6: Manual tools
 . ADSSpy                        v1.11.0.0
 . AdwCleaner                    v3.3.0.4
 . aswMBR                        v1.0.1.2041
 * autoruns                      v12.01
 . ComboFix                      v14.8.6.2
 . gmer                          v2.1.19357
 . Junkware Removal Tool         v6.1.4
 . TDSSKiller                    v3.0.0.40
 . TempFileCleaner               v3.1.9.0
 . VirusTotal uploader tool      v2.2


########################
# v2.0.0 // 2014-08-11 #
########################
tron.bat                         v2.0.0
 * prep and checks:  Rename VERSION and UPDATED to SCRIPT_VERSION and SCRIPT_UPDATED
 ! prep and checks:  Fix missing 'set WMIC=<path>' command (was causing all JRE removal commands to fail)
 * stage_0_prep:     Add flag (-p) to preserve the current Power Scheme (default is to reset power scheme to Windows default). Thanks to reddit.com/user/GetOnMyAmazingHorse
 ! stage_4_patch:    Fix bugs with Java and Flash installers where we'd subsequently fail to get in the correct directory after calling the first script
 + stage_5_optimize: Add job to scan system drive for errors and schedule a chkdsk at next reboot if any are found. Thanks to reddit.com/user/mikeyuf

STAGE 0: Prep
 * Rkill                         v2.6.8.0
 
STAGE 1: Tempclean
 . CCLeaner                      v4.16.4763
 . Bleachbit                     v1.2

STAGE 2: Disinfect
 * Sophos Virus Removal Tool     v2.5, updated defs
 * Vipre Rescue Scanner          v7.0.7.8, updated defs
 * Emsisoft Commandline Scanner  v9.0.0.4183, updated defs
 . Malwarebytes Anti-Malware     v2.0.2.1012.exe
 
STAGE 3: De-bloat ( Specified in: \resources\stage_3_de-bloat\programs_to_target.txt )

STAGE 4: Patch
 . 7-zip                         v9.20
 . Adobe Flash Player            v14.0.0.145
 . Adobe Reader                  v11.0.07
 . Java Runtime Environment      8u11
 . Notepad++                     v6.6.8
 . Windows updates               <pulled down live>
 
STAGE 5: Optimize
 . smartctl                      v6.2 2013-07-26 r3841
 . Defraggler                    v2.18.945
 
STAGE 6: Manual tools
 . ADSSpy                        v1.11.0.0
 * AdwCleaner                    v3.3.0.4
 . aswMBR                        v1.0.1.2041
 . autoruns                      v12.0
 * ComboFix                      v14.8.6.2
 . gmer                          v2.1.19357
 . Junkware Removal Tool         v6.1.4
 . TDSSKiller                    v3.0.0.40
 . TempFileCleaner               v3.1.9.0
 . VirusTotal uploader tool      v2.2


########################
# v1.9.0 // 2014-08-04 #
########################
tron.bat                         v1.9.0
 + tron.bat: Added support for the following optional command-line flags (can be combined):
    -c  Config dump (display current variables)
    -d  Dry run. Run through Tron without executing any jobs (mostly for my testing)
    -s  Skip defrag. Force Tron to skip defrag regardless whether an SSD is detected
    -h  Spit out help on using Tron via command-line
    -r  Reboot (auto-reboot 30 seconds after Tron completes)
 * tron.bat: Improved logic block handling command-line flags; we can now parse flags in any order. Thanks to reddit.com/user/Undeadlord for suggestion
 - tron.bat: Removed support for --auto flag (use -a instead) 
 ! prep and checks: Fix Admin rights check for Windows 8/8.1 (again); Revert to hard-exit if non-Admin detected
 
STAGE 0: Prep
 . Rkill                         v2.6.7.0
 
STAGE 1: Tempclean
 * CCLeaner                      v4.16.4763
 . Bleachbit                     v1.2

STAGE 2: Disinfect
 * Sophos Virus Removal Tool     v2.5, updated defs
 * Vipre Rescue Scanner          v7.0.7.8, updated defs
 * Emsisoft Commandline Scanner  v9.0.0.4183, updated defs
 . Malwarebytes Anti-Malware     v2.0.2.1012.exe
 
STAGE 3: De-bloat ( Specified in: \resources\stage_3_de-bloat\programs_to_target.txt )

STAGE 4: Patch
 . 7-zip                         v9.20
 . Adobe Flash Player            v14.0.0.145
 . Adobe Reader                  v11.0.07
 . Java Runtime Environment      8u11
 * Notepad++                     v6.6.8
 . Windows updates               <pulled down live>
 
STAGE 5: Optimize
 . smartctl                      v6.2 2013-07-26 r3841
 . Defraggler                    v2.18.945
 
STAGE 6: Manual tools
 . ADSSpy                        v1.11.0.0
 * AdwCleaner                    v3.3.0.2
 . aswMBR                        v1.0.1.2041
 . autoruns                      v12.0
 * ComboFix                      v14.8.2.2
 . gmer                          v2.1.19357
 . Junkware Removal Tool         v6.1.4
 . TDSSKiller                    v3.0.0.40
 . TempFileCleaner               v3.1.9.0
 . VirusTotal uploader tool      v2.2
 
 
########################
# v1.8.2 // 2014-07-31 #
########################
tron.bat                         v1.8.2
 * prep and checks:   Move Log File Handling section before --auto check (was incorrectly being skipped if --auto flag was used)
 + stage_0_prep:      Add code to reduce space allowed for System Restore checkpoints to 5%
 + stage_2_disinfect: Add /pup flag to Emsisoft command-line scanner (a2cmd) to catch "potentially unwanted programs"; thanks to reddit.com/user/3xist
 ! stage_2_disinfect: Fix failure on 32-bit systems where Tron would fail to get in correct MBAM Program Files directory

STAGE 0: Prep
 . Rkill                         v2.6.7.0
 
STAGE 1: Tempclean
 . CCLeaner                      v4.15.4725
 . Bleachbit                     v1.2

STAGE 2: Disinfect
 * Sophos Virus Removal Tool     v2.5, updated defs
 * Vipre Rescue Scanner          v7.0.7.8, updated defs
 * Emsisoft Commandline Scanner  v9.0.0.4183, updated defs
 . Malwarebytes Anti-Malware     v2.0.2.1012.exe
 
STAGE 3: De-bloat
Specified in: \resources\stage_3_de-bloat\programs_to_target.txt
 * Greatly expanded list of programs to target (too long to list here). 
   Thanks to reddit.com/user/3xist and reddit.com/user/Gaxor

STAGE 4: Patch
 . 7-zip                         v9.20
 . Adobe Flash Player            v14.0.0.145
 . Adobe Reader                  v11.0.07
 . Java Runtime Environment      8u11
 . Notepad++                     v6.6.7
 . Windows updates               <pulled down live>
 
STAGE 5: Optimize
 . smartctl                      v6.2 2013-07-26 r3841
 . Defraggler                    v2.18.945
 
STAGE 6: Manual tools
 . ADSSpy                        v1.11.0.0
 * AdwCleaner                    v3.3.0.1
 . aswMBR                        v1.0.1.2041
 . autoruns                      v12.0
 * ComboFix                      v14.7.29.1
 . gmer                          v2.1.19357
 . Junkware Removal Tool         v6.1.4
 . TDSSKiller                    v3.0.0.40
 . TempFileCleaner               v3.1.9.0
 . VirusTotal uploader tool      v2.2


########################
# v1.8.1 // 2014-07-29 #
########################
tron.bat                         v1.8.1
 ! tron.bat: Fix incorrect "pushd" entry (was wmi_repair; supposed to be repair_rmi); thanks to reddit.com/user/3xist
 

########################
# v1.8.0 // 2014-07-25 #
########################
tron.bat                         v1.8.0
 * prep and checks:   Overhaul Date/Time conversion so we can handle all versions of Windows using any local date-time format
 ! prep and checks:   Possible fix for Windows 8/8.1 Admin rights check. Just in case, switched the Administrator rights check to warning-only (removed forced exit). Thanks to reddit.com/user/domz128
 * stage_0_prep:      rkill improvements; now executes silently (no popup window) and logs to the standard log file along with everything else
 + stage_1_tempclean: Add job to clear Windows event logs

STAGE 0: Prep
 . Rkill                         v2.6.7.0
 
STAGE 1: Tempclean
 . CCLeaner                      v4.15.4725
 . Bleachbit                     v1.2

STAGE 2: Disinfect
 * Sophos Virus Removal Tool     v2.5, updated defs
 * Vipre Rescue Scanner          v7.0.7.8, updated defs
 . Emsisoft Commandline Scanner  v9.0.0.4183
 . Malwarebytes Anti-Malware     v2.0.2.1012.exe
 
STAGE 3: De-bloat
Specified in: \resources\stage_3_de-bloat\programs_to_target.txt
 . 3vix%%
 . Acer%%
 . Adobe Shockwave%%
 . Advanced%%FX Engine
 . Akamai%%
 . Amazon Browser%%
 . Bing%%
 . Bonjour%%
 . BlueStack%%
 . Catalina Savings%%
 . Cyberlink%%
 . Dell Getting Started Guide%%
 . Dell Video%%
 . eBay%%
 . eMachines%%
 . Free Download Manager%%
 . HP Deskjet%%Help
 . Launch Manager%%
 . Lenovo%%
 . Live! Cam Avatar%%
 . Move Media%%
 . My HP%%
 . PowerDVD%%
 . RenWeb%%
 . Roxio%%
 . Sonic CinePlayer%%
 . %%Toolbar%%
 . Toshiba%%
 . %%Trial%%
 . UserGuide%%
 . WildTangent%%
 . Yahoo! Browser%%

STAGE 4: Patch
 . 7-zip                         v9.20
 . Adobe Flash Player            v14.0.0.145
 . Adobe Reader                  v11.0.07
 * Java Runtime Environment      8u11
 . Notepad++                     v6.6.7
 . Windows updates               <pulled down live>
 
STAGE 5: Optimize
 . smartctl                      v6.2 2013-07-26 r3841
 . Defraggler                    v2.18.945
 
STAGE 6: Manual tools
 . ADSSpy                        v1.11.0.0
 . AdwCleaner                    v3.2.1.6
 . aswMBR                        v1.0.1.2041
 . autoruns                      v12.0
 * ComboFix                      v14.7.25.1
 . gmer                          v2.1.19357
 . Junkware Removal Tool         v6.1.4
 . TDSSKiller                    v3.0.0.40
 . TempFileCleaner               v3.1.9.0
 . VirusTotal uploader tool      v2.2


########################
# v1.7.4 // 2014-07-23 #
########################
tron.bat                         v1.7.4
 ! prep and checks: Fix incorrectly-placed popd statement at beginning of :detect_safe_mode block. Thanks to reddit.com/user/Eschmacher
 

########################
# v1.7.3 // 2014-07-22 #
########################
tron.bat                         v1.7.3
 ! prep and checks: Fix SSD detection (possibly). Please test and report if it fails on your drive
 * prep and checks: Rename all instances of REBOOT_DELAY to AUTO_REBOOT_DELAY 


########################
# v1.7.2 // 2014-07-22 #
########################
tron.bat                         v1.7.2
 * tron.bat:        Add "--auto" and "-a" flags for automatic unattended execution
 / tron.bat:        Move all but most recent changelog entries to the changelog file, to avoid cluttering up script header
 + prep and checks: Re-add check for Administrator rights using a 100% reliable method for Windows 2000 through Windows 8. Thanks to stackoverflow.com/users/3198799/and31415 for fix
 * prep and checks: Revert SSD check to something more reliable

 
########################
# v1.7.1 // 2014-07-22 #
########################
tron.bat                         v1.7.1
 - prep and checks: Remove check for Administrator rights since it was failing too often.


########################
# v1.7.0 // 2014-07-21 #
########################
tron.bat                         v1.7
 + prep and checks:   Add check for Administrator rights. Thanks to reddit.com/user/apcomputerworks
 + stage_2_disinfect: Add Emsisoft Commandline Scanner. "smart" scan + NTFS alternate data streams scan. Uses Direct Disk Access mode. Deletes detected malware immediately (/delete flag)
 / tron.bat:          Move user-configurable variables to the top of the script, above Check and Preps section	 

STAGE 0: Prep
 . Rkill                         v2.6.7.0
 
STAGE 1: Tempclean
 . CCLeaner                      v4.15.4725
 . Bleachbit                     v1.2

STAGE 2: Disinfect
 * Sophos Virus Removal Tool     v2.5, updated defs
 * Vipre Rescue Scanner          v7.0.7.8, updated defs
 + Emsisoft Commandline Scanner  v9.0.0.4183
 . Malwarebytes Anti-Malware     v2.0.2.1012.exe
 
STAGE 3: De-bloat
Specified in: \resources\stage_3_de-bloat\programs_to_target.txt
 . 3vix%%
 . Acer%%
 . Adobe Shockwave%%
 . Advanced%%FX Engine
 . Akamai%%
 . Amazon Browser%%
 . Bing%%
 . Bonjour%%
 . BlueStack%%
 . Catalina Savings%%
 . Cyberlink%%
 . Dell Getting Started Guide%%
 . Dell Video%%
 . eBay%%
 . eMachines%%
 . Free Download Manager%%
 . HP Deskjet%%Help
 . Launch Manager%%
 . Lenovo%%
 . Live! Cam Avatar%%
 . Move Media%%
 . My HP%%
 . PowerDVD%%
 . RenWeb%%
 . Roxio%%
 . Sonic CinePlayer%%
 . %%Toolbar%%
 . Toshiba%%
 . %%Trial%%
 . UserGuide%%
 . WildTangent%%
 . Yahoo! Browser%%

STAGE 4: Patch
 . 7-zip                         v9.20
 . Adobe Flash Player            v14.0.0.145
 . Adobe Reader                  v11.0.07
 . Java Runtime Environment      8u5

 . Notepad++                     v6.6.7
 . Windows updates               <pulled down live>
 
STAGE 5: Optimize
 . smartctl                      v6.2 2013-07-26 r3841
 . Defraggler                    v2.18.945
 
STAGE 6: Manual tools
 . ADSSpy                        v1.11.0.0
 * AdwCleaner                    v3.2.1.6
 . aswMBR                        v1.0.1.2041
 . autoruns                      v12.0
 * ComboFix                      v14.7.21.1
 . gmer                          v2.1.19357
 . Junkware Removal Tool         v6.1.4
 + TDSSKiller                    v3.0.0.40
 . TempFileCleaner               v3.1.9.0
 . VirusTotal uploader tool      v2.2

 
######################
# v1.6 // 2014-07-16 #
######################
tron.bat                         v1.6
 + stage_2_disinfect: Add System File Checker scan to repair broken Windows core files. Skipped on XP and Server 2003 since these require an original install disk to function. Thanks to reddit.com/user/cyr4n0
 + stage_0_prep:      Add code to detect and repair broken WMI configurations
	
STAGE 0: Prep
 . Rkill                         v2.6.7.0
 
STAGE 1: Tempclean
 . CCLeaner                      v4.15.4725
 . Bleachbit                     v1.2

STAGE 2: Disinfect
 . Malwarebytes Anti-Malware     v2.0.2.1012.exe
 * Sophos Virus Removal Tool     v2.5, updated defs 2014-07-16
 * Vipre Rescue Scanner          v7.0.7.8, updated defs 2014-07-16
 
STAGE 3: De-bloat
Specified in: \resources\stage_3_de-bloat\programs_to_target.txt
 + 3vix%%
 . Acer%%
 . Adobe Shockwave%%
 . Advanced%%FX Engine
 . Akamai%%
 . Amazon Browser%%
 . Bing%%
 . Bonjour%%
 + BlueStack%%
 . Catalina Savings%%
 . Cyberlink%%
 . Dell Getting Started Guide%%
 . Dell Video%%
 . eBay%%
 . eMachines%%
 . Free Download Manager%%
 . HP Deskjet%%Help
 . Launch Manager%%
 . Lenovo%%
 . Live! Cam Avatar%%
 . Move Media%%
 . My HP%%
 . PowerDVD%%
 . RenWeb%%
 . Roxio%%
 . Sonic CinePlayer%%
 . %%Toolbar%%
 + Toshiba%%
 + %%Trial%%
 . UserGuide%%
 . WildTangent%%
 . Yahoo! Browser%%

STAGE 4: Patch
 . 7-zip                         v9.20
 . Adobe Flash Player            v14.0.0.145
 . Adobe Reader                  v11.0.07
 . Java Runtime Environment      8u5
 . Notepad++                     v6.6.7
 . Windows updates               <pulled down live>
 
STAGE 5: Optimize
 . smartctl                      v6.2 2013-07-26 r3841
 . Defraggler                    v2.18.945
 
STAGE 6: Manual tools
 . ADSSpy                        v1.11.0.0
 . AdwCleaner                    v3.2.1.5
 . aswMBR                        v1.0.1.2041
 . autoruns                      v12.0
 * ComboFix                      v14.7.16.2
 . gmer                          v2.1.19357
 . Junkware Removal Tool         v6.1.4
 . TempFileCleaner               v3.1.9.0
 . VirusTotal uploader tool      v2.2
 
 
######################
# v1.5 // 2014-07-15 #
######################
tron.bat                         v1.5
 + tron.bat:      Add "-auto" flag to support silent/scripted execution. Run the script and pass "-auto" as the first argument and Tron will run silently while still using all settings configured in the VARIABLES section
 * tron.bat:      Set power mode to "Always On/High Performance" at start of script, then reset power settings to Windows defaults when finished
 * tron.bat:      General cleanup of many conditional tests; should slightly speed script up
 * stage_4_patch: Remove all existing JRE versions prior to installing latest JRE
	 
STAGE 0: Prep
 . Rkill                         v2.6.7.0
 
STAGE 1: Tempclean
 . CCLeaner                      v4.15.4725
 . Bleachbit                     v1.2

STAGE 2: Disinfect
 . Malwarebytes Anti-Malware     v2.0.2.1012.exe
 . Sophos Virus Removal Tool     v2.5, updated defs 2014-07-15
 . Vipre Rescue Scanner          v7.0.7.8
 
STAGE 3: De-bloat target keywords (%% = any number of characters wildcard)
Specified in: \resources\stage_3_de-bloat\programs_to_target.txt
 . Acer%%
 . Adobe Shockwave%%
 . Advanced%%FX Engine
 . Akamai%%
 . Amazon Browser%%
 . Bing%%
 . Bonjour%%
 . Catalina Savings%%
 . Cyberlink%%
 . Dell Getting Started Guide%%
 . Dell Video%%
 . eBay%%
 . eMachines%%
 . Free Download Manager%%
 . HP Deskjet%%Help
 . Launch Manager%%
 . Lenovo%%
 . Live! Cam Avatar%%
 . Move Media%%
 . My HP%%
 . PowerDVD%%
 . RenWeb%%
 . Roxio%%
 . Sonic CinePlayer%%
 . %%Toolbar%%
 . UserGuide%%
 + WildTangent%%
 . Yahoo! Browser%%

STAGE 4: Patch
 . 7-zip                         v9.20
 . Adobe Flash Player            v14.0.0.145
 . Adobe Reader                  v11.0.07
 . Java Runtime Environment      8u5
 . Notepad++                     v6.6.7
 . Windows updates               <pulled down live>
 
STAGE 5: Optimize
 . smartctl                      v6.2 2013-07-26 r3841
 . Defraggler                    v2.18.945
 
STAGE 6: Manual tools
 . ADSSpy                        v1.11.0.0
 * AdwCleaner                    v3.2.1.5
 . aswMBR                        v1.0.1.2041
 . autoruns                      v12.0
 * ComboFix                      v14.7.15.4
 . gmer                          v2.1.19357
 + Junkware Removal Tool         v6.1.4
 . TempFileCleaner               v3.1.9.0
 . VirusTotal uploader tool      v2.2
 
 
######################
# v1.4 // 2014-07-14 #
######################
tron.bat                         v1.4
 + tron.bat:          Add SKIP_DEFRAG variable to force defrag to always skip
 * tron.bat:          Improve SSD detection. Thanks to reddit.com/user/bdm800 
 * tron.bat:          Clean up welcome screen and various comments 
 * tron.bat:          Reduce time spent waiting for rkill from 110 seconds to 90 seconds 
 * stage_2_disinfect: Switch Sophos and Vipre to log to console instead of log file. This way you can see which file they're on, and prevents people from thinking the scanner is stalled. 
 
STAGE 0: Prep
 . Rkill                         v2.6.7.0
 
STAGE 1: Tempclean
 . CCLeaner                      v4.15.4725
 * Bleachbit                     v1.2
    * Updated to target more locations, including Firefox, Thunderbird, and Chrome temp files

STAGE 2: Disinfect
 . Malwarebytes Anti-malware     v2.0.2.1012.exe
 . Sophos Virus Removal Tool     v2.5, updated defs 2014-07-14
 . Vipre Rescue Scanner          v7.0.7.8
 
STAGE 3: De-bloat target keywords (%% = any number of characters wildcard)
These are specified in: \resources\stage_3_de-bloat\programs_to_target.txt
 . Acer%%
 . Adobe Shockwave%%
 . Advanced%%FX Engine
 . Akamai%%
 . Amazon Browser%%
 . Bing%%
 . Bonjour%%
 . Catalina Savings%%
 . Cyberlink%%
 . Dell Getting Started Guide%%
 . Dell Video%%
 . eBay%%
 . eMachines%%
 . Free Download Manager%%
 . HP Deskjet%%Help
 . Launch Manager%%
 . Lenovo%%
 . Live! Cam Avatar%%
 . Move Media%%
 . My HP%%
 . PowerDVD%%
 . RenWeb%%
 . Roxio%%
 . Sonic CinePlayer%%
 . %%Toolbar%%
 . UserGuide%%
 . Yahoo! Browser%%

STAGE 4: Patch
 . 7-zip                         v9.20
 . Adobe Flash Player            v14.0.0.145
 . Adobe Reader                  v11.0.07
 . Java Runtime Environment      8u5
 . Notepad++                     v6.6.7
 . Windows updates               <pulled down live>
 
STAGE 5: Optimize
 . smartctl                      v6.2 2013-07-26 r3841
 . Defraggler                    v2.18.945
 
STAGE 6: Manual tools
 . ADSSpy                        v1.11.0.0
 . AdwCleaner                    v3.2.1.4
 . aswMBR                        v1.0.1.2041
 . autoruns                      v12.0
 . ComboFix                      v14.7.3.1
 . gmer                          v2.1.19357
 + Junkware Removal Tool         v6.1.4
 . TempFileCleaner               v3.1.9.0
 . VirusTotal uploader tool      v2.2
 

######################
# v1.3 // 2014-07-10 #
######################
tron.bat                         v1.3
 + tron.bat:      Add additional checks for SSD drives on /dev/sdb and /dev/sdc
 * stage_4_patch: Update links for Adobe Flash and Notepad++ to reflect new versions
	 
STAGE 0: Prep
 . Rkill                         v2.6.7.0
 
STAGE 1: Tempclean
 . CCLeaner                      v4.15.4725
 - Bleachbit                     v1.2

STAGE 2: Disinfect
 . Malwarebytes Anti-malware     v2.0.2.1012
 . Sophos Virus Removal Tool     v2.5, updated defs 2014-07-10
 . Vipre Rescue Scanner          v7.0.7.8
 
STAGE 3: De-bloat target keywords (%% = any number of characters wildcard)
These are specified in: \resources\stage_3_de-bloat\programs_to_target.txt
 . Acer%%
 + Adobe Shockwave%%
 + Advanced%%FX Engine
 + Akamai%%
 + Amazon Browser%%
 . Bing%%
 + Bonjour%%
 + Catalina Savings%%
 . Cyberlink%%
 + Dell Getting Started Guide%%
 + Dell Video%%
 . eBay%%
 . eMachines%%
 . Free Download Manager%%
 + HP Deskjet%%Help
 . Launch Manager%%
 + Lenovo%%
 + Live! Cam Avatar%%
 + Move Media%%
 + My HP%%
 + PowerDVD%%
 + RenWeb%%
 + Roxio%%
 + Sonic CinePlayer%%
 + %%Toolbar%%
 + UserGuide%%
 + Yahoo! Browser%%
 
STAGE 4: Patch
 . 7-zip                         v9.20
 . Adobe Flash Player            v14.0.0.145
 . Adobe Reader                  v11.0.07
 . Java Runtime Environment      8u5
 . Notepad++                     v6.6.7
 . Windows updates               <pulled down live>
 
STAGE 5: Optimize
 + smartctl                      v6.2 2013-07-26 r3841
 * Defraggler                    v2.18.945
 
STAGE 6: Manual tools
 . ADSSpy                        v1.11.0.0
 + AdwCleaner                    v3.2.1.4
 + aswMBR                        v1.0.1.2041
 * autoruns                      v12.0
 . ComboFix                      v14.7.3.1
 . gmer                          v2.1.19357
 - HiJackThis                    v2.0.4 -- REMOVED, functionality replaced by autoruns
 - Panda Cloud Security Scanner  -- REMOVED
 . TempFileCleaner               v3.1.9.0
 . VirusTotal uploader tool      v2.2
 
 
######################
# v1.2 // 2014-07-07 #
######################
tron.bat                         v1.2
 + stage_5_optimize:  Add detection of SSD drives. If drive is detected, post-run defrag is skipped. Thanks to reddit.com/user/you_drown_now for help with this function.
 * stage_3_de-bloat:  Improve logic, logging, and robustness for WMIC removal section
 * tron.bat:          Improve overall logging, appearance and commenting. Added clarification screens for various Safe Mode states
 / Intro screen:      Adjust runtime estimates based on user feedback
 / tron.bat:          Disable post-run auto-reboot by default. Change "REBOOT_DELAY" variable if you wish to auto-reboot
 - tron.bat:          Remove section asking user if we want to do a post-run defrag (replaced by auto-detect)
 - stage_1_tempclean: Remove TempFileCleanup job (ccleaner and bleachbit cover this requirement)
 - stage_4_patch:     Remove /r flag on wuauclt command

STAGE 0: Prep
 . Rkill                         v2.6.7
 
STAGE 1: Tempclean
 - TempFileCleanup               REMOVED
 . CCLeaner                      v4.15.4725
 * Bleachbit                     v1.2

STAGE 2: Disinfect
 . Malwarebytes Anti-malware     v2.0.2.1012
 . Sophos Virus Removal Tool     v2.5 (2014-07-06)
 . Vipre Rescue Scanner          v7.0.7.8
 
STAGE 3: De-bloat target keywords (%% = any number of characters wildcard)
These are specified in: \resources\stage_3_de-bloat\programs_to_target.txt
 . Acer%%
 + Adobe Shockwave%%
 + Advanced%%FX Engine
 + Akamai%%
 + Amazon Browser%%
 . Bing%%
 + Bonjour%%
 + Catalina Savings%%
 . Cyberlink%%
 + Dell Getting Started Guide%%
 + Dell Video%%
 . eBay%%
 . eMachines%%
 . Free Download Manager%%
 + HP Deskjet%%Help
 . Launch Manager%%
 + Lenovo%%
 + Live! Cam Avatar%%
 + Move Media%%
 + My HP%%
 + PowerDVD%%
 + RenWeb%%
 + Roxio%%
 + Sonic CinePlayer%%
 + %%Toolbar%%
 + UserGuide%%
 + Yahoo! Browser%%
 
STAGE 4: Patch
 . 7-zip                         v9.20
 . Adobe Flash Player            v14.0.0.125
 . Adobe Reader                  v11.0.07
 . Java Runtime Environment      8u5
 . Notepad++                     v6.6.4
 . Windows updates               <pulled down live>
 
STAGE 5: Optimize
 + smartctl                      v6.2 2013-07-26 r3841
 * Defraggler                    v2.18.945
 
STAGE 6: Manual tools
 . ADSSpy                        v1.11.0.0
 + AdwCleaner                    v3.2.1.4
 . autoruns                      v11.70
 * ComboFix                      v14.7.3.1
 . gmer                          v2.1.19357
 . HiJackThis                    v2.0.4
 . Panda Cloud Security Scanner  updated 2014-07-03
 . TempFileCleaner               v3.1.9.0
 . VirusTotal uploader tool      v2.2


######################
# v1.1 // 2014-07-06 #
######################
tron.bat                         v1.1
 * tron.bat:          Comment, log and syntax cleanup
 + tron.bat:          Add section to ask if we want to do a post-run defrag, and skip the defrag if the user says no
 * tron.bat:          Remove hard requirement to run in safe mode and added code to detect various Safe Mode states
 * stage_3_de-bloat:  Convert section to read from a text list located in resource\stage_3_de-bloat\programs_to_target.txt
 + stage_3_de-bloat:  Add additional programs to find and remove
 + stage_3_de-bloat:  Add line to remove Adobe Shockwave (not in wide use anymore)
 - stage_4_patch:     Remove installation of Adobe Shockwave

STAGE 0: Prep
 . Rkill                         v2.6.7
 
STAGE 1: Tempclean
 . TempFileCleanup               v3.1
 . CCLeaner                      v4.15.4725
 * Bleachbit                     v1.2

STAGE 2: Disinfect
 . Malwarebytes Anti-malware     v2.0.2.1012
 . Sophos Virus Removal Tool     v2.5 (2014-07-06)
 . Vipre Rescue Scanner          v7.0.7.8
 
STAGE 3: De-bloat target keywords (%% = any number of characters wildcard)
These are specified in: \resources\stage_3_de-bloat\programs_to_target.txt
 . Acer%%
 + Adobe Shockwave%%
 + Advanced%%FX Engine
 + Akamai%%
 + Amazon Browser%%
 . Bing%%
 + Bonjour%%
 + Catalina Savings%%
 . Cyberlink%%
 + Dell Getting Started Guide%%
 + Dell Video%%
 . eBay%%
 . eMachines%%
 . Free Download Manager%%
 + HP Deskjet%%Help
 . Launch Manager%%
 + Lenovo%%
 + Live! Cam Avatar%%
 + Move Media%%
 + My HP%%
 + PowerDVD%%
 + RenWeb%%
 + Roxio%%
 + Sonic CinePlayer%%
 + %%Toolbar%%
 + UserGuide%%
 + Yahoo! Browser%%
 
STAGE 4: Patch
 . 7-zip                         v9.20
 . Adobe Flash Player            v14.0.0.125
 . Adobe Reader                  v11.0.07
 - Adobe Shockwave               v12.1.2.152 -- REMOVED
 . Java Runtime Environment      8u5
 . Notepad++                     v6.6.4
 . Windows updates               <pulled down live>
 
STAGE 5: Optimize
 * Defraggler                    v2.18.945
 
STAGE 6: Manual tools
 . ADSSpy                        v1.11.0.0
 + AdwCleaner                    v3.2.1.4
 . autoruns                      v11.70
 * ComboFix                      v14.7.3.1
 . gmer                          v2.1.19357
 . HiJackThis                    v2.0.4
 . Panda Cloud Security Scanner  updated 2014-07-03
 . TempFileCleaner               v3.1.9.0
 . VirusTotal uploader tool      v2.2


######################
# v1.0 // 2014-07-04 #
######################
tron.bat                         v1.0

STAGE 0: Prep
 . Rkill                         v2.6.7
 
STAGE 1: Tempclean
 . TempFileCleanup               v3.1
 . CCLeaner                      v4.15.4725
 . Bleachbit                     v1.0

STAGE 2: Disinfect
 . Malwarebytes Anti-malware     v2.0.2.1012
 . Sophos Virus Remval Tool      v2.5 (2014-07-02)
 . Vipre Rescue Scanner          v7.0.7.8
 
STAGE 3: De-bloat target keywords
 . Acer*
 . My HP*
 . Free Download Mananger*
 . Cyberlink*
 . eMachines*
 . Bing*
 . eBay*
 . Launch Manager*
 
STAGE 4: Patch
 . 7-zip                         v9.20
 . Adobe Flash Player            v14.0.0.125
 . Adobe Reader                  v11.0.07
 . Adobe Shockwave               v12.1.2.152
 . Java Runtime Environment      8u5
 . Notepad++                     v6.6.4
 . Windows updates               <pulled down live>
 
STAGE 5: Optimize
 . defraggler                    v2.16.0.809
 
STAGE 6: Manual tools
 . ADSSpy                        v1.11.0.0
 . autoruns                      v11.70
 . ComboFix                      v14.6.30.1
 . gmer                          v2.1.19357
 . HiJackThis                    v2.0.4
 . Panda Cloud Security Scanner  updated 2014-07-03
 . TempFileCleaner               v3.1.9.0
 . VirusTotal uploader tool      v2.2
