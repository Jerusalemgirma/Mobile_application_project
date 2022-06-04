// const mongoose = require('mongoose');


//    //establish connection to database
//    const MongoClient = require('mongodb').MongoClient;
//    const uri = "mongodb+srv://xxxxxxx:<password>@cluster0.s42z9.mongodb.net/myFirstDatabase? retryWrites=true&w=majority";
//    const client = new MongoClient(uri, { useNewUrlParser: true, useUnifiedTopology: true });
//    client.connect(err => {
//    const collection = client.db("test").collection("devices");
//    // perform actions on the collection object
//    client.close();
//    });

//      const express = require("express");
//      const routes = require('./routes/image'); // import the routes

//      const app = express();

//      app.use(express.json()); // parses incoming requests with JSON payloads

//      app.use('/', routes); //to use the routes

//      app.use('/uploads', express.static('./uploads'));

//      const listener = app.listen(process.env.PORT || 3000, () => {
//      console.log('App is listening on port ' + listener.address().port)
//       })