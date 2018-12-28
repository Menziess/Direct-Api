FROM quay.io/datalogue/typescript-docker

# Specify working directory
WORKDIR /app

# Copy dependencies
COPY package.json /app
COPY yarn.lock /app

# Install dependencies
RUN yarn install

# Copy required project data
COPY . /app

# The port used by the server
EXPOSE 3000
