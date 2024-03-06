const express = require('express');
const bodyParser = require('body-parser');
const cors = require('cors');
const jsonServer = require('json-server');
const app = express();
const port = 3000;
app.use(cors());
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));
app.use('/api', jsonServer.router('db.json'));
app.post('/login', (req, res) => {
    const { username, password } = req.body;
    if (username === 'admin' && password === 'admin') {
        res.send({ message: 'Login Success' });
    } else {
        res.send({ message: 'Login Failed' });
    }
});
app.listen(port, () => {
    console.log(`Server is running on port ${port}`);
});
