#!/bin/bash

# Dump the database
docker exec -t dawarich_db pg_dumpall --clean --if-exists --username=postgres | gzip > "{{ local_backups_path }}/dawarich/dawarich_db_dump.sql.gz"

# Upload the database dump to Backblaze
/usr/bin/rclone copy "{{ local_backups_path }}/dawarich/dawarich_db_dump.sql.gz" {{ backblaze_remote_name }}:{{ backblaze_bucket_name }} --config /home/{{ ansible_user }}/.config/rclone/rclone.conf -P

curl -X GET {{ hc_ping_url }}/{{ hc_dawarich_backup_uuid }}
