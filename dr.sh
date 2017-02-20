#!/bin/bash

CL_BLU="\033[34m"
CL_RED="\033[31m"
CL_GRN="\033[32m"
CL_RST="\033[0m"
CL_CYA="\033[36m"
CL_YEL="\033[33m"


clear
while :
do
 echo -e ${CL_BLU}"                                                                     ${CL_BLU}";
 echo -e ${CL_BLU}" ·▄▄▄▄   ▄· ▄▌.▄▄ · ·▄▄▄▄• ▄▌ ▐ ▄  ▄▄· ▄▄▄▄▄▪         ▐ ▄  ▄▄▄· ▄▄▌  ${CL_BLU}";    
 echo -e ${CL_BLU}" ██▪ ██ ▐█▪██▌▐█ ▀. ▐▄▄·█▪██▌•█▌▐█▐█ ▌▪•██  ██ ▪     •█▌▐█▐█ ▀█ ██•  ${CL_BLU}";  
 echo -e ${CL_BLU}" ▐█· ▐█▌▐█▌▐█▪▄▀▀▀█▄██▪ █▌▐█▌▐█▐▐▌██ ▄▄ ▐█.▪▐█· ▄█▀▄ ▐█▐▐▌▄█▀▀█ ██▪  ${CL_BLU}";
 echo -e ${CL_BLU}" ██. ██  ▐█▀·.▐█▄▪▐███▌.▐█▄█▌██▐█▌▐███▌ ▐█▌·▐█▌▐█▌.▐▌██▐█▌▐█ ▪▐▌▐█▌▐▌${CL_BLU}";
 echo -e ${CL_BLU}" ▀▀▀▀▀•   ▀ •  ▀▀▀▀ ▀▀▀  ▀▀▀ ▀▀ █▪·▀▀▀  ▀▀▀ ▀▀▀ ▀█▄▀▪▀▀ █▪ ▀  ▀ .▀▀▀ ${CL_RST}";
 echo -e ${CL_RED}"Hi, $USER!${CL_RST}";
 echo "Rom menu"
 echo -e "\t(a) Broken"
 echo -e "\t(b) Reaper"
 echo -e "\t(d) Exit"
 echo -n "Please enter your choice:"
 read choice
 case $choice in
 "a"|"A")
    while :
    do
    clear
 echo -e ${CL_GRN}"▄▄▄▄· ▄▄▄        ▄ •▄ ▄▄▄ . ▐ ▄ ${CL_GRN}";
 echo -e ${CL_GRN}"▐█ ▀█▪▀▄ █·▪     █▌▄▌▪▀▄.▀·•█▌▐█${CL_GRN}";
 echo -e ${CL_GRN}"▐█▀▀█▄▐▀▀▄  ▄█▀▄ ▐▀▀▄·▐▀▀▪▄▐█▐▐▌${CL_GRN}";
 echo -e ${CL_GRN}"██▄▪▐█▐█•█▌▐█▌.▐▌▐█.█▌▐█▄▄▌██▐█▌${CL_GRN}";
 echo -e ${CL_GRN}"·▀▀▀▀ .▀  ▀ ▀█▄▀▪·▀  ▀ ▀▀▀ ▀▀ █▪${CL_RST}";
    echo "Broken menu"
    echo -e "\t(a) Repo init"
    echo -e "\t(b) Remove source and sync"
    echo -e "\t(c) Lunch & build"
    echo -e "\t(d) Return to main menu"
    echo -n "Please enter your choice:"
    read choice1
    case $choice1 in
        "a"|"a")
        cd ~/
        echo -n "Type folder name.> "
        read text 
        mkdir $text 
        cd $text
        echo -e ${CL_RED}"Repo init for Broken${CL_RST}";
        repo init -u git://github.com/BrokenROM/platform_manifest.git -b noog7.1
        echo -n "Type -jx flag.> "
        read  $text1
        repo sync --force-sync $text1
        cd ~/
        clear
        ;;
        "b"|"b")
        echo -n "Type folder name.> "
        read text        
        rm -rf ~/$text/*
        cd ~/$text                
        echo -n "Type -jx flag.> "
        read  $text1
        repo sync --force-sync $text1        
        clear
        ;;
        "c"|"c")
         while :
         do
    clear
 echo -e ${CL_GRN}"▄▄▄▄· ▄▄▄        ▄ •▄ ▄▄▄ . ▐ ▄ ${CL_GRN}";
 echo -e ${CL_GRN}"▐█ ▀█▪▀▄ █·▪     █▌▄▌▪▀▄.▀·•█▌▐█${CL_GRN}";
 echo -e ${CL_GRN}"▐█▀▀█▄▐▀▀▄  ▄█▀▄ ▐▀▀▄·▐▀▀▪▄▐█▐▐▌${CL_GRN}";
 echo -e ${CL_GRN}"██▄▪▐█▐█•█▌▐█▌.▐▌▐█.█▌▐█▄▄▌██▐█▌${CL_GRN}";
 echo -e ${CL_GRN}"·▀▀▀▀ .▀  ▀ ▀█▄▀▪·▀  ▀ ▀▀▀ ▀▀ █▪${CL_RST}";
    echo "Build menu"
    echo -e "\t(a) Lunch & build"
    echo -e "\t(b) Return to Broken menu"
    echo -n "Please enter your choice:"
    read build
    case $build in
        "a"|"a")
        echo -n "Folder name.> "
        read text        
        cd ~/$text 
        echo -n "Device.> "
        read device
        echo -e "    -c# Cleanin options before build:"
        echo -e "        1 - make clean"
        echo -e "        2 - make dirty"
        echo -e "        3 - make magic"
        echo -e "        4 - make kernelclean"
        echo -e "        5 - make appclean"
        echo -e "        6 - make imgclean"
        echo -e "        7 - make systemclean"
        echo -e "        8 - make recoveryclean"
        echo -e "        9 - make rootclean"
        echo -e "        10 - make official"
        echo -e "        11 - make milestone"
        echo -e "        12 - make experimental"
        echo -e "        13 - make final"
        echo -e "        14 - fuck jack"
        echo -e "    -d  Use dex optimizations"
        echo -e "    -i  Static Initlogo"
        echo -e "    -j# Set jobs"
        echo -e "    -s  Sync before build"
        echo -e "    -p  Build using pipe"
        echo -e "    -a  Enable strict aliasing"
        echo -e "    -o# Select GCC O Level"
        echo -e "        Valid O Levels are"
        echo -e "        1 (Os) or 3 (O3)"
        echo -e "    -z  create build log in 'build-logs'"
        echo -n "Flags.> "
        read flags
        ./build-broken.sh $flags $device
        read -p "Upload to Gdrive [y/n]" -n 1 -r
        echo   
        if [[ $REPLY =~ ^[Yy]$ ]]
        then
        gdrive upload $ANDROID_PRODUCT_OUT/Broken*.zip 
        fi
        cd ~/                                  
        clear
        ;;
        "b"|"b")
        clear
        break
        ;;
            *)
            echo "invalid answer, please try again"
            ;;
    esac
    done
    ;;
        "d"|"d")
        clear
        break
        ;;
            *)
            echo "invalid answer, please try again"
            ;;
    esac
    done
    ;;

    "b"|"B")
    while :
    do
    clear
 echo -e ${CL_GRN}"▄▄▄  ▄▄▄ . ▄▄▄·  ▄▄▄·▄▄▄ .▄▄▄  ${CL_GRN}";
 echo -e ${CL_GRN}"▀▄ █·▀▄.▀·▐█ ▀█ ▐█ ▄█▀▄.▀·▀▄ █·${CL_GRN}";
 echo -e ${CL_GRN}"▐▀▀▄ ▐▀▀▪▄▄█▀▀█  ██▀·▐▀▀▪▄▐▀▀▄ ${CL_GRN}";
 echo -e ${CL_GRN}"▐█•█▌▐█▄▄▌▐█ ▪▐▌▐█▪·•▐█▄▄▌▐█•█▌${CL_GRN}";
 echo -e ${CL_GRN}".▀  ▀ ▀▀▀  ▀  ▀ .▀    ▀▀▀ .▀  ▀${CL_RST}";
    echo "Reaper menu"
    echo -e "\t(a) Repo init"
    echo -e "\t(b) Remove source and sync"
    echo -e "\t(c) Lunch & build"
    echo -e "\t(d) Return to main menu"
    echo -n "Please enter your choice:"
    read choice1
    case $choice1 in
        "a"|"A")
        cd ~/
        echo -n "Type folder name.> "
        read text 
        mkdir $text 
        cd $text
        echo -e ${CL_RED}"Repo init for Reaper${CL_RST}";
        repo init -u git://github.com/ReaperRoms/platform_manifest.git -b 7.1.1
        echo -n "Type -jx flag.> "
        read  $text1
        repo sync --force-sync $text1
        cd ~/
        clear
        ;;
        "b"|"b")
        echo -n "Type folder name.> "
        read text        
        rm -rf ~/$text/*
        cd ~/$text                
        echo -n "Type -jx flag.> "
        read  $text1
        repo sync --force-sync $text1        
        clear
        ;;
        "c"|"c")
         while :
         do
         clear
 echo -e ${CL_GRN}"▄▄▄  ▄▄▄ . ▄▄▄·  ▄▄▄·▄▄▄ .▄▄▄  ${CL_GRN}";
 echo -e ${CL_GRN}"▀▄ █·▀▄.▀·▐█ ▀█ ▐█ ▄█▀▄.▀·▀▄ █·${CL_GRN}";
 echo -e ${CL_GRN}"▐▀▀▄ ▐▀▀▪▄▄█▀▀█  ██▀·▐▀▀▪▄▐▀▀▄ ${CL_GRN}";
 echo -e ${CL_GRN}"▐█•█▌▐█▄▄▌▐█ ▪▐▌▐█▪·•▐█▄▄▌▐█•█▌${CL_GRN}";
 echo -e ${CL_GRN}".▀  ▀ ▀▀▀  ▀  ▀ .▀    ▀▀▀ .▀  ▀${CL_RST}";
    echo "Build menu"
    echo -e "\t(a) Lunch & build"
    echo -e "\t(b) Return to Reaper menu"
    echo -n "Please enter your choice:"
    read build
    case $build in
        "a"|"a")
        echo -n "Folder name.> "
        read text        
        cd ~/$text 
        echo -n "Device.> "
        read device
        echo -e "    -c# Cleanin options before build:"
        echo -e "        1 - make clean"
        echo -e "        2 - make dirty"
        echo -e "        3 - make magic"
        echo -e "        4 - make kernelclean"
        echo -e "        5 - make appclean"
        echo -e "        6 - make imgclean"
        echo -e "        7 - make systemclean"
        echo -e "        8 - make recoveryclean"
        echo -e "        9 - make rootclean"
        echo -e "        10 - make official"
        echo -e "        11 - make milestone"
        echo -e "        12 - make experimental"
        echo -e "        13 - make final"
        echo -e "        14 - fuck jack"
        echo -e "    -d  Use dex optimizations"
        echo -e "    -i  Static Initlogo"
        echo -e "    -j# Set jobs"
        echo -e "    -s  Sync before build"
        echo -e "    -p  Build using pipe"
        echo -e "    -a  Enable strict aliasing"
        echo -e "    -o# Select GCC O Level"
        echo -e "        Valid O Levels are"
        echo -e "        1 (Os) or 3 (O3)"
        echo -e "    -z  create build log in 'build-logs'"
        echo -n "Flags.> "
        read flags
        ./build-death.sh $flags $device
        read -p "Upload to Gdrive [y/n]" -n 1 -r
        echo   
        if [[ $REPLY =~ ^[Yy]$ ]]
        then
        gdrive upload $ANDROID_PRODUCT_OUT/Reaper*.zip 
        fi
        cd ~/                                  
        clear
        ;;
        "b"|"b")
        clear
        break
        ;;
            *)
            echo "invalid answer, please try again"
            ;;
    esac
    done
    ;;
        "d"|"d")
        clear
        break
        ;;
            *)
            echo "invalid answer, please try again"
            ;;
    esac
    done
    ;;        

    "d"|"D")
    clear
    exit
    ;;
        *)
        echo "invalid answer, please try again"
        ;;

esac
done   