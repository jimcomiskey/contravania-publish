REM create new application manifest
mage -new Application -ToFile "Application Files\RunAndGun_1_0_0_63\RunAndGun.exe.manifest" -Version 1.0.0.63 -Name ContraVania -Processor "x86" -fromDirectory "Application Files\RunAndGun_1_0_0_63"

REM sign application manifest
mage -sign "Application Files\RunAndGun_1_0_0_63\RunAndGun.exe.manifest" -CertFile "c:\git\contravania\runandgun\runandgun\ContravaniaSignature.pfx" -Password final7

REM update base deployment manifest
mage -u RunAndGun.application -Version 1.0.0.63 -AppManifest "Application Files\RunAndGun_1_0_0_63\RunAndGun.exe.manifest" -Processor x86 

REM re-sign base deployment manifest
mage -s RunAndGun.application -CertFile "c:\git\contravania\runandgun\runandgun\ContravaniaSignature.pfx" -Password final7



