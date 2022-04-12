

# Judge server restart script


echo `date` + "judge-server restart"
docker restart judge-server
echo `date + "judge-server restart end"`
