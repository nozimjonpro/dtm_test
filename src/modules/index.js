const users = require('./users/router.js')
const subjects = require('./subjects/router.js')
const faculties = require('./faculties/router.js')
const questions = require('./question/router.js')


module.exports = [users, subjects, faculties, questions]

