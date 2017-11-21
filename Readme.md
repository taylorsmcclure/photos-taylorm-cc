# photos.taylorm.cc

## Manual Build Instructions

1) Go to repo folder and build with `make all`
2) Sync with the AWS Bucket `aws s3 sync --delete --acl "public-read" --sse "AES256" public/ s3://photos.taylorm.cc`
