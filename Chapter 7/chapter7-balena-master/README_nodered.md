Forked from https://github.com/balenalabs/balena-node-red

NOTE: This application communicates with the Sense Hat using the Python library `sense-hat`

# balena-node-red

A Node-RED application with [balena-supervisor](https://balena.io/docs/reference/supervisor/supervisor-api/) flow [support](https://github.com/balena-io-projects/node-red-contrib-balena), can be managed remotely via balena [publicURL](https://balena.io/docs/learn/manage/actions/#enable-public-device-url)

## Configure via [environment variables](https://balena.io/docs/learn/manage/serv-vars/)
Variable Name | Default | Description
------------ | ------------- | -------------
PORT | `80` | the port that exposes the Node-RED UI
USERNAME | `none` | the Node-RED admin username
PASSWORD | `none` | the Node-RED admin password [hash](https://nodered.org/docs/security#generating-the-password-hash)

You **must** set the `USERNAME` and `PASSWORD` environment variables to be able to save or run programs in Node-RED.  
The hash for the `PASSWORD` variable can be generated using the [`node-red-admin`](https://nodered.org/docs/node-red-admin)
command line tool. Instructions for generating a password hash can be found in
the [Node-RED documentation](https://nodered.org/docs/security#generating-the-password-hash).

### How to set the NodeRED password
First, ssh into the `node-red` service to access command line and obtain the hash of the password, i.e. `raspberry`:
```
$ node-red admin hash-pw
Pasword: <type it here>
$2b$08$.CPhG4lGy7vEBDT3j3/JzOECTJEwfnUCPPpD2RjnC5W2yAtPO4lC.
```
Then set these environment variables in for `node-red` service in the Balena dashboard app:
 - USERNAME: `admin`
 - PASSWORD: `$2b$08$.CPhG4lGy7vEBDT3j3/JzOECTJEwfnUCPPpD2RjnC5W2yAtPO4lC.` 

More information about using and setting environment variables can be found in
the [balena docs](https://balena.io/docs/learn/manage/serv-vars/).

## License

Copyright 2016 balena Ltd.

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at

<http://www.apache.org/licenses/LICENSE-2.0>

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
