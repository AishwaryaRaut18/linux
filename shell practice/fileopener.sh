#!/bin/bash

echo "##########################################"
echo "MENU OPTIONS"
echo "##########################################"
echo "1. Add a file"
echo "2. Create a directory"
echo "3. move a file"
echo "4. copy a file"

read -p "Enter your choice : " userInput

if [ $userInput == "1" ]; then
	read -p "Enter your file name : " fileName
touch $fileName
echo "File created Successfully"
fi


if [ $userInput == "2" ]; then
	read -p "Enter your directiory name : " dirName
mkdir $dirName
echo "Directory created Successfully"
fi 

if [ $userInput == "3" ]; then
	read -p "Enter your file name : " mvFilename
    read -p "Enter destination dir: " destDir
mv $mvfilename $destDir
echo "File moved Successfully"
fi 

if [ $userInput == "3" ]; then
	read -p "Enter your file name to copy : " cpFilename
    read -p "Enter destination dir: " destDire
cp $cpFilename $destDire
echo "File copied Successfully"
fi 
