FROM node:13.12.0-alpine as build

# set working directory
WORKDIR /app

# add `/app/node_modules/.bin` to $PATH
ENV PATH /app/node_modules/.bin:$PATH

# install app dependencies
COPY package.json ./
COPY package-lock.json ./
RUN npm install --silent
RUN npm install react-scripts@3.4.1 -g --silent

# add app
COPY . ./

RUN npm run build

# production environment
FROM nginx:1.21.5-alpine
COPY --from=build /app/build /usr/share/nginx/html

# Add a script to put the environment variables in a javascript file
ADD start.sh /
RUN chmod +x /start.sh

# start app
CMD ["/start.sh"]