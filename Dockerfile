# Use a base image with C++ compiler and libraries installed
FROM gcc:latest

# Set the working directory inside the container
WORKDIR /

# Copy the C++ source code into the container
COPY . .

# Compile the C++ code and generate the executable
RUN g++ -o hellouniverse index.cpp

# Set the entrypoint for the container
ENTRYPOINT ["/hellouniverse"]

