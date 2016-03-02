#! /bin/bash

docker build -t bhurlow/rethink-backup .

docker run \
  -it \
  --link rethink:rethink \
  --env-file env \
  bhurlow/rethink-backup
