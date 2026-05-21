const express = require('express');
const route = express.Router();
const { handleSignUp } = require('../controllers/authenticationController');

route.post('/signup', handleSignUp);

module.exports = route;
