# Image and Labels
FROM httpd:latest
LABEL maintainer="JuliBCN <julibcn@gmail.com>"

# Environment Variables
ENV TZ=Europe/Dublin
ENV SERVICE="/football"

# Copy files for the new site
COPY src/ /usr/local/apache2/htdocs/
RUN echo "Alias "${SERVICE}" /usr/local/apache2/htdocs" >> conf/httpd.conf

# Port for site
EXPOSE 80
