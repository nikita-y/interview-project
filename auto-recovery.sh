Response=$(curl -s -I -o /dev/null -w '%{http_code}' 127.0.0.1:8080)

if [ "$Response" != "200" ]
then
    #Get container id like:
    ID=$(...)
    #stop container
    docker stop $ID
    #remove container
    docker rm $ID
    #start container
    ./runcontainer
fi
