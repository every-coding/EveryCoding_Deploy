

# sudo permission required
echo "Database backup start"
docker exec oj-postgres sh -c "pg_dump -U onlinejudge onlinejudge > backup.sql; exit"
docker cp oj-postgres:backup.sql ~/Database_backup/$(date +%y)_$(date +%m)_$(date +%d).sql
echo "Database backup end"
