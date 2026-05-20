const express = require('express');
const route = express.Router();
const { signUp } = require('../controllers/authenticationController');

route.post('/signup', signUp);

module.exports = route;
