#/usr/bin/bash

# Script for sorting files in Downloads folder by categories
# Powered by Andrii Honda 26.02.2019 
# !!! Please enter full path for folder before running as first script parameter !!!

DOWNLOADS_FOLDER=$1

cd $DOWNLOADS_FOLDER

pwd

# create directory for sorted files if not exits
if ! [ -d ${DOWNLOADS_FOLDER}/SortedFiles/ ]; then
    cd $DOWNLOADS_FOLDER
    mkdir SortedFiles 
    echo 'SortedFiles Directory created.'
fi 

cd SortedFiles # change files directory

# create Photos directory if not exist
if ! [ -d ${DOWNLOADS_FOLDER}/SortedFiles/Photos ]; then
    mkdir Photos 
    echo 'Photos Directory created.'
fi 

# create Videos directory if not exist 
if ! [ -d ${DOWNLOADS_FOLDER}/SortedFiles/Videos ]; then
    mkdir Videos
    echo 'Videos Directory created.'
fi 

# create TextFiles directory if not exist
if ! [ -d ${DOWNLOADS_FOLDER}/SortedFiles/TextFiles ]; then
    mkdir TextFiles
    echo 'TextFiles Directory created.'
fi 

# create Tables directory if not exist
if ! [ -d ${DOWNLOADS_FOLDER}/SortedFiles/Tables ]; then
    mkdir Tables
    echo 'Tables Directory created.'
fi 

# create Documents directory if not exist
if ! [ -d ${DOWNLOADS_FOLDER}/SortedFiles/Documents ]; then
    mkdir Documents
    echo 'Documents Directory created.'
fi 

# create PDF directory if not exist
if ! [ -d ${DOWNLOADS_FOLDER}/SortedFiles/PDF ]; then
    mkdir PDF
    echo 'PDF Directory created.'
fi 

# create Archives directory if not exist
if ! [ -d ${DOWNLOADS_FOLDER}/SortedFiles/Archives ]; then
    mkdir Archives
    echo 'Archives Directory created.'
fi 

# create Presentation directory if not exist
if ! [ -d ${DOWNLOADS_FOLDER}/SortedFiles/Presentations ]; then
    mkdir Presentations
    echo 'Presentations Directory created.'
fi 

# create Audio directory if not exist
if ! [ -d ${DOWNLOADS_FOLDER}/SortedFiles/Audio ]; then
    mkdir Audio
    echo 'Audio Directory created.'
fi 

# create EXE directory if not exist
if ! [ -d ${DOWNLOADS_FOLDER}/SortedFiles/EXE ]; then
    mkdir EXE
    echo 'EXE Directory created.'
fi 

if ! [ -d ${DOWNLOADS_FOLDER}/SortedFiles/DEB ]; then
    mkdir DEB
    echo 'DEB Directory created.'
fi 



# Processing files

# Moving Photos

AllPhotosFormats=('png' 'jpg' 'jpeg' 'bmp' 'svg' 'ico' 'psd' 'webp' 'PNG' 'JPG' 'BMP' 'SVG' 'ICO' 'PSD' 'JPEG' )

for fmt in ${AllPhotosFormats[@]}; do
find  "$DOWNLOADS_FOLDER" -maxdepth 1 -type f -name "*.$fmt"  -exec mv "{}"  "$DOWNLOADS_FOLDER/SortedFiles/Photos/" \;
done

# Moving Videos 

AllVideosFormats=('avi' 'mp4' 'mpeg' '3gp' 'mov' 'AVI' 'MP4' 'MPEG' '3GP' 'MOV')

for fmt in ${AllVideosFormats[@]}; do
 find "$DOWNLOADS_FOLDER" -maxdepth 1 -type f -name "*.$fmt"   -exec mv "{}"  "$DOWNLOADS_FOLDER/SortedFiles/Videos/" \;
done

# Moving Archives
AllArchivesFormats=('zip' 'rar' 'tar' 'gz' 'iso' 'tar.gz' 'bz2' 'gz.bz2' 'tar.bz2' 'ZIP' 'RAR' 'TAR' 'GZ' 'ISO' 'TAR.GZ' 'BZ2' 'GZ.BZ2' 'TAR.BZ2')

for fmt in ${AllArchivesFormats[@]}; do
    find "$DOWNLOADS_FOLDER" -maxdepth 1 -type f -name "*.$fmt"  -exec mv "{}"  "$DOWNLOADS_FOLDER/SortedFiles/Archives/" \;
done

# Moving Documents

AllDocumentsFormats=('doc' 'docx' 'docm' 'dot' 'dotm' 'rtf' 'dotx' 'odt' 'fodt' 'ott' 'DOC' 'DOCX' 'DOCM' 'DOT' 'DOTM' 'RTF' 'DOTX' 'ODT' 'FODT' 'OTT')

for fmt in ${AllDocumentsFormats[@]}; do
    find "$DOWNLOADS_FOLDER" -maxdepth 1 -type f -name "*.$fmt"  -exec mv "{}"  "$DOWNLOADS_FOLDER/SortedFiles/Documents/" \;
done

# Move text Files
find "$DOWNLOADS_FOLDER" -maxdepth 1  -type f -name "*.txt"  -exec mv "{}"  "$DOWNLOADS_FOLDER/SortedFiles/TextFiles/" \;
find "$DOWNLOADS_FOLDER" -maxdepth 1  -type f -name "*.TXT"  -exec mv "{}"  "$DOWNLOADS_FOLDER/SortedFiles/TextFiles/" \;
# Move PDF
find "$DOWNLOADS_FOLDER" -maxdepth 1 -type f -name "*.pdf" -exec mv "{}"  "$DOWNLOADS_FOLDER/SortedFiles/PDF/" \;
find "$DOWNLOADS_FOLDER" -maxdepth 1 -type f -name "*.PDF" -exec mv "{}"  "$DOWNLOADS_FOLDER/SortedFiles/PDF/" \;

# Move Tables
AllTablesFormats=('csv' 'ods' 'xls' 'xlsx' 'XLSM' 'CSV' 'ODS' 'XLS' 'XLSX')
for fmt in ${AllTablesFormats[@]}; do
    find "$DOWNLOADS_FOLDER" -maxdepth 1 -type f -name "*.$fmt"  -exec mv "{}"  "$DOWNLOADS_FOLDER/SortedFiles/Tables/" \;
done

# Move Presentations
AllPresentations=('ppt' 'pptx' 'odp' 'PPT' 'PPTX' 'ODP')
for fmt in ${AllPresentations[@]}; do
    find "$DOWNLOADS_FOLDER" -maxdepth 1 -type f -name "*.$fmt"  -exec mv "{}"  "$DOWNLOADS_FOLDER/SortedFiles/Presentations/" \;
done

# Move EXE
find "$DOWNLOADS_FOLDER" -maxdepth 1 -type f -name "*.exe" -exec mv "{}"  "$DOWNLOADS_FOLDER/SortedFiles/EXE/" \;
find "$DOWNLOADS_FOLDER" -maxdepth 1 -type f -name "*.EXE" -exec mv "{}"  "$DOWNLOADS_FOLDER/SortedFiles/EXE/" \;

# Move DEB
find "$DOWNLOADS_FOLDER" -maxdepth 1 -type f -name "*.deb" -exec mv "{}"  "$DOWNLOADS_FOLDER/SortedFiles/DEB/" \;
find "$DOWNLOADS_FOLDER" -maxdepth 1 -type f -name "*.DEB" -exec mv "{}"  "$DOWNLOADS_FOLDER/SortedFiles/DEB/" \;

# Move Audio
find "$DOWNLOADS_FOLDER" -maxdepth 1 -type f -name "*.mp3" -exec mv "{}"  "$DOWNLOADS_FOLDER/SortedFiles/Audio/" \;
find "$DOWNLOADS_FOLDER" -maxdepth 1 -type f -name "*.flac" -exec mv "{}"  "$DOWNLOADS_FOLDER/SortedFiles/Audio/" \;
