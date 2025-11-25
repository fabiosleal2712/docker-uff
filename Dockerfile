FROM mcr.microsoft.com/dotnet/sdk:9.0 AS build
WORKDIR /app

# Install ping, telnet, and other network tools
RUN apt-get update && apt-get install -y iputils-ping telnet net-tools

# Copy the aspnetapp.pfx file from the correct directory
# If the file is in the project root:
COPY aspnetapp.pfx /https/aspnetapp.pfx

# If the file is in another directory, adjust the path:
# COPY path/to/file/aspnetapp.pfx /https/aspnetapp.pfx

# Remove the aspnetapp.pem and aspnetapp.key files
#COPY aspnetapp.pem /https/aspnetapp.pem
#COPY aspnetapp.key /https/aspnetapp.key

# ...existing code...