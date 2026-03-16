# Use official Nginx image
FROM nginx:alpine
# Clean default nginx contents
RUN rm -rf /usr/share/nginx/html/*
# Copy build outputs
COPY ./dist/DigiFacto_TV /usr/share/nginx/html/DigiFacto_TV
# Copy custom Nginx config
COPY ./nginx/default.conf /etc/nginx/conf.d/default.conf
# Expose port 80
EXPOSE 80
# Run Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
