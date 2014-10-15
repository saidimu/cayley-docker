#
# Cayley Dockerfile
#
# https://github.com/saidimu/cayley-docker
#

# Pull base image.
FROM dockerfile/ubuntu

# Download Cayley binary.
RUN \
  mkdir -p /data/ && \
  mkdir -p /opt/cayley && \
  wget https://github.com/google/cayley/releases/download/v0.4.0/cayley_0.4.0_linux_amd64.tar.gz  -O - | tar -xvz --strip=1 -C /opt/cayley && \
  cp /opt/cayley/cayley /usr/local/bin/

# Define mountable data folder
VOLUME /data

# Copy default conf file to mountable folder
WORKDIR /opt/cayley
ADD cayley.conf /data/

# Define entrypoint and default command.
#ENTRYPOINT ["/usr/local/bin/cayley"]
#CMD ["-config=/data/cayley.conf"]
CMD cayley init -config=/data/cayley.conf && \
    cayley http -config=/data/cayley.conf

# Expose ports.
EXPOSE 64210
