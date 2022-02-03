# chapter4
Code samples for Chapter 4 Data processing with NodeRED

## Scripts
- Launch NodeRED with a blank workspace:
> `$ npm start` 

- Flows as of NodeRED project of Chapter 4:
> `$ npm run flow0`

- Mid point for the chapter (all the logic deployed):
> `$ npm run flow1`

- End result for the chapter (all the logic deployed & organized in a pipeline):
> `$ npm run flow2`

### Run a custom instance
```bash
$ export PORT=1889
$ export FLOW=flow0.json
$ npm run custom
```
- If PORT is not specified, `2880` will be the default (to avoid crashing with NodeRED standard 1880)
- If FLOW is not specified, `flow2.json` is the default


# NOTES
1. *You have to include the Pusher credentials of your own account and app in `pusher out` and `pusher in` nodes*

2. *Installation of packages from the NodeRED editor puts the new packages in the user data folder, i.e. `./data`. Hence they are not added to the NodeRED main `package.json` in the `./app` folder.*