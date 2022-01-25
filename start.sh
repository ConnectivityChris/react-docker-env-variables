#!/bin/sh

# Recreate config file
rm -rf /usr/share/nginx/html/env-config.js
touch /usr/share/nginx/html/env-config.js

# Add assignment 
echo "window._env_ = {" >> /usr/share/nginx/html/env-config.js

echo "AWS_REGION: \"$AWS_REGION\"," >> /usr/share/nginx/html/env-config.js
echo "AWS_COGNITO_CLIENT_ID: \"$AWS_COGNITO_CLIENT_ID\"," >> /usr/share/nginx/html/env-config.js
echo "AWS_COGNITO_USER_POOL_ID: \"$AWS_COGNITO_USER_POOL_ID\"," >> /usr/share/nginx/html/env-config.js
echo "BASEURL: \"$BASEURL\"," >> /usr/share/nginx/html/env-config.js

echo "}" >> /usr/share/nginx/html/env-config.js

nginx -g 'daemon off;'