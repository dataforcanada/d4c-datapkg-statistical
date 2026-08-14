#!/bin/bash
if [ ! -d "${DATA_FOLDER}/open_databases" ]
then
    echo "Making directory ${DATA_FOLDER}/open_databases/"
    mkdir -p ${DATA_FOLDER}/open_databases/{input,extracted,output}/{addresses,buildings,businesses,cultural,educational,greenhouses,healthcare,infrastructure,recreation}
fi

INPUT_FOLDER="${DATA_FOLDER}/open_databases/input"

echo "Downloading open databases addresses"
aria2c -x16 -i "${SCRIPT_DIR}/open_databases/opendatabases_addresses.txt" --dir=${INPUT_FOLDER}/addresses --auto-file-renaming=false
echo "Downloading open databases buildings"
aria2c -x16 -i "${SCRIPT_DIR}/open_databases/opendatabases_buildings.txt" --dir=${INPUT_FOLDER}/buildings --auto-file-renaming=false
echo "Downloading open databases businesses"
aria2c -x16 -i "${SCRIPT_DIR}/open_databases/opendatabases_businesses.txt" --dir=${INPUT_FOLDER}/businesses --auto-file-renaming=false
echo "Downloading open databases cultural"
aria2c -x16 -i "${SCRIPT_DIR}/open_databases/opendatabases_cultural.txt" --dir=${INPUT_FOLDER}/cultural --auto-file-renaming=false
echo "Downloading open databases educational"
aria2c -x16 -i "${SCRIPT_DIR}/open_databases/opendatabases_educational.txt" --dir=${INPUT_FOLDER}/educational --auto-file-renaming=false
echo "Downloading open databases greenhouses"
aria2c -x16 -i "${SCRIPT_DIR}/open_databases/opendatabases_greenhouses.txt" --dir=${INPUT_FOLDER}/greenhouses --auto-file-renaming=false
echo "Downloading open databases healthcare"
aria2c -x16 -i "${SCRIPT_DIR}/open_databases/opendatabases_healthcare.txt" --dir=${INPUT_FOLDER}/healthcare --auto-file-renaming=false
## Infrastructure
echo "Downloading open databases infrastructure"
aria2c -x16 -i "${SCRIPT_DIR}/open_databases/opendatabases_infrastructure.txt" --dir=${INPUT_FOLDER}/infrastructure --auto-file-renaming=false
# Canadian Pedestrian Network Database
# https://web.archive.org/web/20251111023745/https://www150.statcan.gc.ca/n1/pub/34-26-0004/342600042025001-eng.htm
aria2c -x16 https://data.source.coop/dataforcanada/d4c-datapkg-foundation/archive/statcan/open_databases/infrastructure/canadian_pedestrian_network_2025-03-19.zip --dir=${INPUT_FOLDER}/infrastructure
# Canadian Cycling Network Database
# https://web.archive.org/web/20260807081428/https://www150.statcan.gc.ca/n1/pub/23-26-0004/232600042024001-eng.htm
aria2c -x16 https://data.source.coop/dataforcanada/d4c-datapkg-foundation/archive/statcan/open_databases/infrastructure/canadian_cycling_network_database_2025-01-30.zip --dir=${INPUT_FOLDER}/infrastructure
#  Canadian Public Transit Network Database 
# https://web.archive.org/web/20260611033413/https://www150.statcan.gc.ca/n1/pub/23-26-0003/232600032025001-eng.htm
aria2c -x16 https://data.source.coop/dataforcanada/d4c-datapkg-foundation/archive/statcan/open_databases/infrastructure/canadian_public_transit_network_database_2025-05-07.zip --dir=${INPUT_FOLDER}/infrastructure
## Infrastructure
echo "Downloading open databases recreation"
aria2c -x16 -i "${SCRIPT_DIR}/open_databases/opendatabases_recreation.txt" --dir=${INPUT_FOLDER}/recreation --auto-file-renaming=false