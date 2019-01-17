// Set Up Dependencies
const express = require('express');
const morgan = require('morgan');
const fetch = require('node-fetch');
const admin = require('firebase-admin');

// Configure Express App
const app = express();
const port = 3000;
app.use(morgan('tiny'));


// Configure Firebase App
admin.initializeApp({
    credential: admin.credential.cert({
      projectId: `${process.env.REACT_APP_PROJECT_ID}`,
      clientEmail: `${process.env.CLIENT_EMAIL}`,
      privateKey: process.env.PRIVATE_KEY.replace(/\\n/g, '\n'),
    }),
    databaseURL: `${process.env.DATABASE_URL}`
  });

  admin.auth().createUser({
    email: `user${Math.floor(Math.random() * 10000)}@example.com`,
    emailVerified: false,
    password: "secretPassword",
    displayName: "John Doe",
    photoURL: "http://www.example.com/12345678/photo.png",
    disabled: false
  })
    .then(function(userRecord) {
      // See the UserRecord reference doc for the contents of userRecord.
      console.log("Successfully created new user:", userRecord.uid);
    })
    .catch(function(error) {
      console.log("Error creating new user:", error);
    });

// Serve build files for emsi-client and emsi-server
app.use('/admin', express.static('emsi-admin/build'));
app.use('/', express.static('emsi-client/build'));


app.get('/', (req, res) => res.send('Hello World!'))

app.listen(port, () => console.log(`Example app listening on port ${port}!`));

console.log('map api key', process.env.MAPS_API_KEY);
fetch(`https://maps.googleapis.com/maps/api/directions/json?origin=40.7365834%20-74.1872004&destination=Parsippany&key=${process.env.MAPS_API_KEY}`)
    .then(res => res.json()).then(res => console.log(res));