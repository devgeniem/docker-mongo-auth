# docker-mongo-auth
A Docker Image for MongoDB which makes it easy to create an Admin, a Database and a Database User when the container is first launched.

# Changes
- mongo port


# Customization
There are a number of environment variables which you can specify to customize the username and passwords of your users.

- With Dockerfile
  ```
  // Auth Configuration.
  // These environment variables can also be specified through command line or docker-compose configuration
  # ENV AUTH yes

  # ENV MONGODB_ADMIN_USER root
  # ENV MONGODB_ADMIN_PASS password
  # ENV MONGODB_PORT port
  # ENV MONGODB_APPLICATION_DATABASE your_db
  # ENV MONGODB_APPLICATION_USER user
  # ENV MONGODB_APPLICATION_PASS password
  ```

- With docker-compose.yml
  ```
  services:
    db:
      image: xxxxxxx:latest
      environment:
        - AUTH=yes
        - MONGODB_PORT=27100
        - MONGODB_ADMIN_USER=admin
        - MONGODB_ADMIN_PASS=admin123
        - MONGODB_APPLICATION_DATABASE=sample
        - MONGODB_APPLICATION_USER=aashrey
        - MONGODB_APPLICATION_PASS=admin123
      ports:
        - "27100:27100"
  // more configuration
  ```

- With command line
  ```
  docker run -it \
    -e AUTH=yes \
    -e MONGODB_ADMIN_USER=admin \
    -e MONGODB_ADMIN_PASS=adminpass \
    -e MONGODB_APPLICATION_DATABASE=mytestdatabase \
    -e MONGODB_APPLICATION_USER=testuser \
    -e MONGODB_APPLICATION_PASS=testpass \
    -e MONGODB_PORT=27018 \
    -p 27018:27018 xxxxxx:latest
  ```
