# See https://hub.docker.com/_/mongo/

docker run --rm \
  --name jwt_demo_mongo \
  -v `pwd`/mongo_data:/data/db \
  -p 27017:27017 \
  -d mongo:latest
