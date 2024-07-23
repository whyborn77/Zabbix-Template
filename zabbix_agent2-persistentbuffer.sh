# fast setup to ZA2 config Persistent Buffer 
#sudo -i
>/tmp/zabbix-PersistentBufferFile.db
chmod 666 /tmp/zabbix-PersistentBufferFile.db
echo "EnablePersistentBuffer=1" >> /etc/zabbix/zabbix_agent2.conf
echo "BufferSize=300" >> /etc/zabbix/zabbix_agent2.conf
echo "PersistentBufferPeriod=1d" >> /etc/zabbix/zabbix_agent2.conf
echo "PersistentBufferFile=/tmp/zabbix-PersistentBufferFile.db" >> /etc/zabbix/zabbix_agent2.conf
service zabbix-agent2 restart ; sleep 2 ; service zabbix-agent2 status
