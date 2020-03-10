FROM redis:alpine

# Add startup script
COPY ./docker-data/docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod 755 /docker-entrypoint.sh

EXPOSE 7000 7001

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["redis-cluster"]
