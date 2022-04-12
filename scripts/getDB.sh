

# sudo permission required
echo `date` + "Database backup start"
docker exec oj-postgres sh -c "pg_dump -U onlinejudge onlinejudge > backup.sql; exit"
docker cp oj-postgres:backup.sql /home/snslab/Database_backup/$(date +%y)_$(date +%m)_$(date +%d).sql # Need to update abs path to relative path
echo `date` + "Database backup end"
