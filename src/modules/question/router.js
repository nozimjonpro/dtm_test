const router = require('express').Router();
const controller = require('./controller.js')


router.get('/questions', controller.GET);


module.exports = router;