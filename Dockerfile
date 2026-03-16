FROM nginx:alpine

RUN rm -rf /usr/share/nginx/html/*

# Copy build outputs  ← dist/ directly, no subfolder
COPY ./dist/ /usr/share/nginx/html/

# Copy custom Nginx config
COPY ./nginx/default.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
