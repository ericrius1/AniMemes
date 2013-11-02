# express-angular-seed

A minimal seed to get going with angular.js, node.js, express mongodb. Using coffeescript, stylus and jade. 

Instructions below are for mac

## Setup

* clone the repo

* install node modules with:
    ```
    npm install
    ```


If you dont want to use mongo db
* use config without db-params
    ```
    cp config/sample.config.json config/config.json
    ```

If you want mongo db

* install mongo
    ```
    brew install mongo
    ```
* use config with db-params
    ```
    cp config/sample.db.config.json config/config.json
    ```

## Get going

If using mongo
* start mongo deamon (in separate terminal window)
    ```
    mongod
    ```  

* start server
    ```
    node index.js
    ```
    (will start the server listening to port 3006)
