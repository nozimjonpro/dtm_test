const router = require('express').Router();
const controller = require('./controller.js')


router.get('/variants', controller.GET);


module.exports = router;