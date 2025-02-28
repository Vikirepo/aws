set -e

# Stop the running container (if any)
echo "Hi"

# Get the first container ID
containerid=$(docker ps -q)

# Check if containerid is not empty before removing
if [ -n "$containerid" ]; then
    docker rm -f $containerid
else
    echo "No running containers found."
fi
