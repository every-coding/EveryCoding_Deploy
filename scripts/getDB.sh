

# input root / user password for sudo instruction
echo 'snslab@cu' | sudo -kS docker exec oj-postgres sh -c "pg_dump -U onlinejudge onlinejudge > backup.sql; exit"
echo 'snslab@cu' | sudo -kS docker cp oj-postgres:backup.sql ~/Database_backup/$(date +%y)_$(date +%m)_$(date +%d).sql
