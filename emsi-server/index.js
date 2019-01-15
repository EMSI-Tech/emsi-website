// Set Up Dependencies
const express = require('express');
const morgan = require('morgan');

// Configure Express App
const app = express();
const port = 3000;
app.use(morgan('tiny'));

// Serve build files for emsi-client and emsi-server
app.use('/admin', express.static('emsi-admin/build'));
app.use('/', express.static('emsi-client/build'));


app.get('/', (req, res) => res.send('Hello World!'))

app.listen(port, () => console.log(`Example app listening on port ${port}!`))