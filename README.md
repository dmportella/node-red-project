# Node Red Docker Template

This is a lean template for node red applications to be run and hosted in docker.

## Details

This repo contains a `dockerfile`, `flow.json` and `settings.js` file. 

### Dockerfile

The dockerfile is setup so that it uses the `latest` version of node-red it also exposes the default port for node-red `1880` additionally includes the `flow.json` and `settings.js` files.

#### Adding node modules

To add custom modules to the docker image you can uncomment the lines in the dockerfile for the `node_modules` and `package.json`.

#### Flow.json file

The example file just has a simple flow that outputs a timestamp in the debug window.

#### Settings.js file

The following settings are turned on which means the admin interface will be disabled when running it.

`httpAdminRoot: 'false',`

`disableEditor: true,`

If you like to have them enabled just comment the lines above.

## Debugging and development

The simplest way to develop node-red with this docker template is `not` to build the docker image everytime you want to test or build your flows.

The easiest way to develop using this template is just to run a node red container and adding the correct volumes to it. 

See an easy example below:

```
docker run -it --rm --name node-red -p 1880:1880 \
-v /path/to/settings/file:/data/settings.js \
-v /path/to/node_modules/folder:/data/node_modules \
-v /path/to/package/json/file:/data/package.json \
nodered/node-red
```

> Please note that the `flow.json` file is not needed since you will want to edit and create new flows so you can use the `import` and `export` menu items of the admin interface for that.