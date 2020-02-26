FROM nginx:1.17

RUN apt-get update \
    && apt-get -y install curl gnupg \
    && curl -sL https://deb.nodesource.com/setup_13.x  | bash \
    && apt-get -y install nodejs \
    # Instal nano to be able to edit files in a container
    && apt-get install nano \
    && npm install -g yarn

# tell the port number the container should expose
EXPOSE 80
EXPOSE 443

# run the command
CMD ["nginx", "-g", "daemon off;"]
