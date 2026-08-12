#!/bin/bash
if [ ! -d "${DATA_FOLDER}/geosuite" ]
then
    echo "Making directory ${DATA_FOLDER}/geosuite/"
    mkdir -p ${DATA_FOLDER}/geosuite/{input,extracted,output}/{2021,2016,2011,2006,2001}
fi

INPUT_FOLDER="${DATA_FOLDER}/geosuite/input"

echo "Downloading 2021 geosuite"
aria2c -x16 -i "${SCRIPT_DIR}/geosuite/geosuite_2021.txt" --dir=${INPUT_FOLDER}/2021 --auto-file-renaming=false
echo "Downloading 2016 geosuite"
aria2c -x16 -i "${SCRIPT_DIR}/geosuite/geosuite_2016.txt" --dir=${INPUT_FOLDER}/2016 --auto-file-renaming=false
echo "Downloading 2011 geosuite"
aria2c -x16 -i "${SCRIPT_DIR}/geosuite/geosuite_2011.txt" --dir=${INPUT_FOLDER}/2011 --auto-file-renaming=false
echo "Downloading 2006 geosuite"
aria2c -x16 -i "${SCRIPT_DIR}/geosuite/geosuite_2006.txt" --dir=${INPUT_FOLDER}/2006 --auto-file-renaming=false
echo "Downloading 2001 geosuite"
aria2c -x16 -i "${SCRIPT_DIR}/geosuite/geosuite_2001.txt" --dir=${INPUT_FOLDER}/2001 --auto-file-renaming=false
