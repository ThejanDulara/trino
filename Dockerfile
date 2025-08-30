FROM trinodb/trino:476
# Copy our configs into the image
COPY etc /etc/trino
