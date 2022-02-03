Code samples for Chapter 7 The IoT Software Package: Remote Server side

## NodeRED instance
Code application for the instance of NodeRED to run in the remote server (Middleware Layer)

How to start the application:
```
$ cd ./nodered
$ bash start.sh
```
Alternatively you can make use of the easy startup using the command defined in `Makefile` ` in folder `./nodered`:
>`$ make nodered`

## InfluxDB UI
Web interface for accessing the InfluxDB database
```
$ cd ./influxdb-ui
$ npm install
$ npm run build
$ npm start
```
Alternatively you can make use of the easy startup using the command defined in `Makefile` in folder `./influxdb-ui`:
>`$ make influxdb`