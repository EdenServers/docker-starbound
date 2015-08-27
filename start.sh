#!/bin/bash

#Setting up SFTP
if ! id -u "$USERNAME" >/dev/null 2>&1; then
    PASSWORD=$(perl -e 'print crypt($ARGV[0], "password")' $PASSWORD)
    useradd -d /server/starbound --shell /usr/bin/rssh --password $PASSWORD $USERNAME
    chown -R $USERNAME:$USERNAME /server/starbound
fi

/etc/init.d/ssh start

cd /server/steamcmd && ./steamcmd.sh \
                 +@NoPromptForPassword 1 +login $STEAM_USERNAME $STEAM_PASSWORD \
		 +force_install_dir /server/starbound \
                 +app_update 211820 validate \
                 +quit

cd /server/starbound/linux64 && ./starbound_server
