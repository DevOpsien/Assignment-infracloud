#THE CSVSERVER SOLUTION 

-> Run the container image in detach mode with -d and expose the container on Host Port 9393 and container Port 9300 , -p 9393:9300 where -p is use for publishing the port 

    docker run -d  --name CONTAINER_NAME -p 9393:9300 infracloudio/csvserver:latest

-> Identify the root cause why the container is failed to start.Check the logs 

    docker logs CONTAINER_ID 

-> There is a file name inputFile is missing  which is required while running the container.

-> Writen a bash script gencsv.sh to generate a file named inputFile whose content looks like:

    0, 234
    1, 98
    2, 34


-> Mount the file on the container with help -v 

docker run --name infraclouds -d -v /csvserver/inputdata:/csvserver/inputdata  -p 9393:9300 infracloudio/csvserver:latest


-> Set the environment variable to the container -e CSVSERVER_BORDER=Orange

docker run --name infraclouds -d -v /csvserver/inputdata:/csvserver/inputdata  -e CSVSERVER_BORDER=Orange -p 9393:9300 infracloudio/csvserver:latest



