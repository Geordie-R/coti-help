# Clusterstamp download and help after a failure
Ran coti-node manually and need a clusterstamp? Wrote for a specific case. Untested right now.

Copy and paste the following into your node as the root user.  IT assumes your user is called coti, as per the wolf guide.

```
cd ~
rm -rf installclusterstamp.sh
wget https://raw.githubusercontent.com/Geordie-R/coti-help/main/installclusterstamp.sh && chmod +x installclusterstamp.sh
./installclusterstamp.sh
```
---

# Want to ONLY download the clusterstamp file?

If you have followed the wolf guide, some people have trouble with a clusterstap error.

 See the wolf guide here - https://medium.com/wolf-crypto/how-to-setup-a-coti-testnet-node-on-vultr-a3710d24f892
 
 Check out 9d which is the command which begins 'mvn' .  Run the following before that command so that effectively 9d becomes 9e and this below is the new 9d
 
 ```
 cd ~
rm -rf installclusterstamponly.sh
wget https://raw.githubusercontent.com/Geordie-R/coti-help/main/installclusterstamponly.sh && chmod +x installclusterstamponly.sh
./installclusterstamponly.sh
 ```
 
 Note: now carry on with the wolf guide.  I will speak to Wolf soon to remedy this issue.
