FROM httpd

# Updat packege list and install packages in a single layer (combine RUN commands)
RUN apt-get update && \
    apt-get install -y \
    ansible \
    curl \
    vim \
    wget \
    && rm -rf /var/lib/apt/list/*

# Copy application files after dependencies are installed 
COPY ./index.html /usr/local/apache2/htdocs/

# Expose disired Port (note: Apache default is 80, in this case I choose to open 85)
EXPOSE 85