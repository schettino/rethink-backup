# rethink-backup

daily backups of your rethinkdb database to s3

## Usage

make an `backup.env` file with:

```
AWS_ACCESS_KEY_ID=xxxx
AWS_SECRET_ACCESS_KEY=xxxx
S3_BUCKET=xxxx
```

run the image:

```
docker run \
  -d \
  --link rethink:rethink \ #(or probably use the --net flag)
  --env-file backup.env \
  bhurlow/rethink-backup
```

## License

Copyright © 2016 Brian Hurlow

Distributed under the Eclipse Public License either version 1.0 or (at
your option) any later version.
