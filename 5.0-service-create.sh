[Unit]
Description=hit service
After=network-online.target

[Service]
ExecStart=/home/igor/Git/shell/2.0-monitoring

[Install]
WantedBy=multi-user.target