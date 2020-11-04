# Clusterstamp download and help
Ran coti-node manually and need a clusterstamp? Wrote for a specific case. Untested right now.

Copy and paste the following into your node as the root user.  IT assumes your user is called coti, as per the wolf guide.

```
cd ~
rm -rf installclusterstamp.sh
wget https://raw.githubusercontent.com/Geordie-R/coti-help/main/installclusterstamp.sh && chmod +x installclusterstamp.sh
./installclusterstamp.sh
```
