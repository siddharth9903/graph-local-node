# Use the graph-node image
FROM graphprotocol/graph-node

# # Set environment variables
# ENV postgres_host=graph-db-public-new.cluster-ch4a6igs4v73.us-east-1.rds.amazonaws.com
# rds-gn-db-cluster.cluster-c9keqc40m4bt.us-east-1.rds.amazonaws.com
# # graphnode-rds.cluster-c9keqc40m4bt.us-east-1.rds.amazonaws.com
# ENV postgres_user=postgres
# ENV postgres_pass=postgres
# ENV postgres_db=baseIdTenderly_db
# ENV ipfs=http://18.206.168.62:5001
# ENV ethereum=base:https://virtual.base.rpc.tenderly.co/7817edf3-f43a-4498-9cf9-c44c0164e1ed
# # ENV ethereum=base:https://base.gateway.tenderly.co/7eSxf2jVQXhRN3QZ4bRkBj 

# Add SSL environment variables
ENV PGSSLMODE=require
ENV PGSSLROOTCERT=/etc/ssl/certs/global-bundle.pem

# Copy the SSL certificate to the container
COPY global-bundle.pem /etc/ssl/certs/global-bundle.pem


# # Local
# ENV postgres_host=localhost
# # ENV postgres_host=postgres
# ENV postgres_user=postgres
# ENV postgres_pass=postgres
# ENV postgres_db=baseIdTenderly_db_local
# ENV ipfs=http://18.206.168.62:5001
# ENV ethereum=base:https://virtual.base.rpc.tenderly.co/7817edf3-f43a-4498-9cf9-c44c0164e1ed

# # Add SSL environment variables
# ENV PGSSLMODE=disable

# # docker run -d \
# #   --name graph-indexer \
# #   --platform linux/amd64 \
# #   --network host \
# #   -p 8000:8000 \
# #   -p 8001:8001 \
# #   -p 8020:8020 \
# #   -p 8030:8030 \
# #   -p 8040:8040 \
# #   graph-indexer


ENV GRAPH_LOG=info
ENV GRAPH_ALLOW_NON_DETERMINISTIC_IPFS=true
ENV GRAPH_ALLOW_NON_DETERMINISTIC_FULLTEXT_SEARCH=true

# Expose necessary ports
EXPOSE 8000 8001 8020 8030 8040