
FILE=/home/coti/coti-fullnode/FullNode1_clusterstamp.csv
if [ -f "$FILE" ]; then
    echo "$FILE already exists, no need to download"
else 
    echo "$FILE does not exist, downloading now"
    wget -q --show-progress --progress=bar:force 2>&1 https://www.dropbox.com/s/rpyercs56zmay0z/FullNode1_clusterstamp.csv -P /home/coti/coti-fullnode/
fi


cd /home/coti/coti-fullnode/
chown FullNode1_clusterstamp.csv
chgrp FullNode1_clusterstamp.csv



if [ -f "$FILE" ]; then
    echo "Clusterstamp file downloaded successfully"
fi
