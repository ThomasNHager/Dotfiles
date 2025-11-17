#!/bin/sh
rclone mount yaleOnedrive: /home/thager/OneDrive --daemon --drive-chunk-size 128M --max-backlog 999999
#rclone mount aws:aneja-lab-semisupervised /home/thager/S3Drive --daemon --drive-chunk-size 128M --max-backlog 999999
 
