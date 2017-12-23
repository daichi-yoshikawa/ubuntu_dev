**MongoDB pymongo.errors.ServerSelectionTimeoutError: Errno111

You migh have the following message when you run "mongo" in terminal.
```
MongoDB shell version v3.6.0
connecting to: mongodb://127.0.0.1:27017
2017-12-21T11:59:37.991-0800 W NETWORK  [thread1] Failed to connect to 127.0.0.1:27017, in(checking socket for error after poll), reason: Connection refused
2017-12-21T11:59:37.993-0800 E QUERY    [thread1] Error: couldn't connect to server 127.0.0.1:27017, connection attempt failed :
connect@src/mongo/shell/mongo.js:251:13
@(connect):1:6
exception: connect failed
```

In this case, do the following steps.
```bash
    $ sudo rm /var/lib/mongodb/mongod.lock
    $ sudo mongod --repair
    $ sudo systemctl start mongodb.service
```