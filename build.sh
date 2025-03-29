docker build -t $JOB_NAME:$BUILD_ID .

docker tag $JOB_NAME:$BUILD_ID vinitamenaria04/$JOB_NAME:$BUILD_ID

docker tag $JOB_NAME:$BUILD_ID vinitamenaria04/$JOB_NAME:latest

docker push vinitamenaria04/$JOB_NAME:$BUILD_ID

docker push vinitamenaria04/$JOB_NAME:latest

docker rmi -f $JOB_NAME:$BUILD_ID vinitamenaria04/$JOB_NAME:$BUILD_ID vinitamenaria04/$JOB_NAME:latest
