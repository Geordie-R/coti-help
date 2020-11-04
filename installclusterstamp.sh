# Assuming youve tried to run the wolf install script.  Try this to download the clusterstamp again.

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
sudo -u coti mvn initialize && sudo -u coti mvn clean compile && sudo -u coti mvn -Dmaven.test.skip=true package


systemctl stop cnode.service
systemctl daemon-reload
systemctl enable cnode.service
systemctl start cnode.service
echo "Waiting for Coti Node to Start"
sleep 5
tail -f /home/coti/coti-fullnode/logs/FullNode1.log | while read line; do
echo $line  
echo $line | grep -q 'COTI FULL NODE IS UP' && break;
done
sleep 2
echo "Your node is registered and running on the COTI Network"
