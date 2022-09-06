const router = require('express').Router();
const controller = require('./controller.js')


router.get('/faculties', controller.GET);
router.get('/faculties/:facultyId', controller.GET);
router.post('/faculties', controller.POST)


module.exports = router;