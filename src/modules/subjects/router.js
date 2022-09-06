const router = require('express').Router();
const controller = require('./controller.js')


router.get('/subjects', controller.GET);
router.get('/subjects/:subjectId', controller.GET);
router.post('/subjects', controller.POST)


module.exports = router;