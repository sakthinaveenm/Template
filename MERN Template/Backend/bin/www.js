const app = require('../app');
const server = require('http').createServer(app);
const CONFIG = require('../config/config');
const mongoose = require('mongoose');
const debug = require('debug')('server:server');
const port = normalizePort(CONFIG.port);

server.listen(port, () => {
    debug('Listening on port ' + port);
});
server.on('error', onError);
server.on('listening', onListening);

const options = { useNewUrlParser: true, useUnifiedTopology: true };
const url = CONFIG.atlas_uri;
mongoose.connect(url, options,() => {
    console.log('Connected to MongoDB');
});
mongoose.connection.on('error', function (err) {
    debug('Mongoose default connection error: ' + err);
    console.log('Mongoose default connection error: ' + err);
});

function normalizePort(val) {
    const port = parseInt(val, 10);

    if (isNaN(port)) {
        return val;
    }

    if (port >= 0) {
        return port;
    }

    return false;
}

function onError(error) {
    if (error.syscall !== 'listen') {
        throw error;
    }

    const bind = typeof port === 'string'
        ? 'Pipe ' + port
        : 'Port ' + port;

    switch (error.code) {
        case 'EACCES':
            console.error(bind + ' requires elevated privileges');
            process.exit(1);
            break;
        case 'EADDRINUSE':
            console.error(bind + ' is already in use');
            process.exit(1);
            break;
        default:
            throw error;
    }
}

function onListening() {
    const addr = server.address();
    const bind = typeof addr === 'string'
        ? 'pipe ' + addr
        : 'port ' + addr.port;
    console.log('Listening on ' + bind);
}