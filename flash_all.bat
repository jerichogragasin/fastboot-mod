@echo off
title MIUI 12.5.7 Firmware Only

fastboot %* flash crclist %~dp0images\crclist.txt 
fastboot %* flash sparsecrclist %~dp0images\sparsecrclist.txt 
fastboot %* erase boot 
fastboot %* erase expdb 
fastboot %* erase metadata 
fastboot %* flash preloader %~dp0images\preloader_begonia.bin  
fastboot %* flash lk        %~dp0images\lk.img         
fastboot %* flash lk2       %~dp0images\lk.img         
fastboot %* flash tee1      %~dp0images\tee.img        
fastboot %* flash tee2      %~dp0images\tee.img        
fastboot %* flash sspm_1    %~dp0images\sspm.img       
fastboot %* flash sspm_2    %~dp0images\sspm.img       
fastboot %* flash gz1       %~dp0images\gz.img         
fastboot %* flash gz2       %~dp0images\gz.img         
fastboot %* flash scp1      %~dp0images\scp.img        
fastboot %* flash scp2      %~dp0images\scp.img        
fastboot %* flash logo      %~dp0images\logo.bin       
fastboot %* flash dtbo      %~dp0images\dtbo.img       
fastboot %* flash spmfw     %~dp0images\spmfw.img      
fastboot %* flash exaid     %~dp0images\exaid.img      
fastboot %* flash oem_misc1 %~dp0images\oem_misc1.img  
fastboot %* flash md1img    %~dp0images\md1img.img    
fastboot %* flash cam_vpu1  %~dp0images\cam_vpu1.img  
fastboot %* flash cam_vpu2  %~dp0images\cam_vpu2.img  
fastboot %* flash cam_vpu3  %~dp0images\cam_vpu3.img  
fastboot %* flash audio_dsp %~dp0images\audio_dsp.img 
fastboot %* flash cache     %~dp0images\cache.img      
fastboot %* flash recovery  %~dp0images\recovery.img    
fastboot %* flash vbmeta    %~dp0images\vbmeta.img --disable-verity --disable-verification 
fastboot %* reboot recovery

@echo Modded by Jericho@BegoniaPhilippines 
pause 10