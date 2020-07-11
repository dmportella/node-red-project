FROM nodered/node-red

EXPOSE 1880

ENV FLOWS=flow.json

# Uncomment if you want to include custom modules to be available in the flows.
# ADD node_modules /data/node_modules
# ADD package.json /data/package.json
ADD flow.json /data/flow.json
ADD settings.js /data/settings.js