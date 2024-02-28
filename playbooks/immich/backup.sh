#!/bin/bash

# Dump the database
docker exec -t immich_postgres pg_dumpall -c -U postgres | gzip > "{{ local_backups_path }}/immich/db_dump.sql.gz"

# Upload the database dump to Backblaze
/usr/bin/rclone copy "{{ local_backups_path }}/immich/db_dump.sql.gz" {{ backblaze_remote_name }}:{{ backblaze_bucket_name }} --config /home/{{ ansible_user }}/.config/rclone/rclone.conf -P

# Sync the backup to Backblaze
/usr/bin/rclone sync {{ local_apps_path }}/immich {{ backblaze_remote_name }}:{{ backblaze_bucket_name }} --config /home/{{ ansible_user }}/.config/rclone/rclone.conf --include='/app/library/**' --include='/app/upload/**' --include='/app/profile/**' -P

curl -X GET {{ hc_ping_url }}/{{ hc_immich_backup_uuid }}
