# Use a base image with C++ compiler and libraries installed
FROM gcc:latest

RUN apt-get update && apt-get install -y git
RUN git clone https://github.com/vinay-k-swift-nav/HelloUniverse  /app

# Set the working directory inside the container
WORKDIR /home/hellouniverse

# Copy the C++ source code into the container
COPY . .

# Compile the C++ code and generate the executable
RUN g++ -o hellouniverse app/index.cpp

# Set the entrypoint for the container
ENTRYPOINT ["HelloUniverse/app"]

