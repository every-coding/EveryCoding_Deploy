

# sudo permission required
sudo -kS docker exec oj-postgres sh -c "pg_dump -U onlinejudge onlinejudge > backup.sql; exit"
sudo -kS docker cp oj-postgres:backup.sql ~/Database_backup/$(date +%y)_$(date +%m)_$(date +%d).sql
