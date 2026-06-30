FROM 635943190281.dkr.ecr.us-east-1.amazonaws.com/nginx-base:latest

# In production (K8s), we'll mount the app's public directory as a shared volume
# For now, this is just the base nginx config
# The actual public files will be shared via volume in docker-compose

# We could copy static assets here, but it's cleaner to use volumes
