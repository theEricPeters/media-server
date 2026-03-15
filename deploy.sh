#!/bin/bash
SERVER="server"
REMOTE_PATH="/home/epeters/server"

rsync -avz \
  --exclude='.jj/' \
  --exclude='.git/' \
  --exclude='.stversions'\
  ~/homelab/ $SERVER:$REMOTE_PATH/

ssh $SERVER "cd $REMOTE_PATH/media && docker compose up -d"
ssh $SERVER "cd $REMOTE_PATH/music && docker compose up -d"
