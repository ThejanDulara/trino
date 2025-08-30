FROM trinodb/trino:476

# Create a writable data dir and ensure 'trino' user owns it
USER root
RUN mkdir -p /var/trino/data && chown -R trino:trino /var/trino

# Copy configs
COPY etc /etc/trino
RUN chown -R trino:trino /etc/trino

# Drop back to the non-root user the image expects
USER trino
