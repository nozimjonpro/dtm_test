const router = require('express').Router()
const controller = require('./controller.js')


router.get('/users', controller.GET);
router.get('/users/:userId', controller.GET);
router.post('/users', controller.POST);
router.put('/users/:userId', controller.PUT);
router.delete('/users/:userId', controller.DELETE);

module.exports = router;