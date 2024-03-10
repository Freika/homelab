#!/bin/bash

# Dump the files
docker ps --format "{% raw %}{{.Names}}{% endraw %}" | grep paperlessngx-webserver | xargs -I {} docker exec {} document_exporter ../export

# Sync the backup to Backblaze
/usr/bin/rclone sync {{ local_apps_path }}/paperlessngx {{ homelab_backup_backblaze_remote_name }}:{{ homelab_backup_backblaze_bucket_name }}/paperlessngx --config /home/{{ ansible_user }}/.config/rclone/rclone.conf -P

curl -X GET {{ hc_ping_url }}/{{ hc_paperless_backup_uuid }}
