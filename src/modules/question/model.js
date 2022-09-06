const {fetchAll, fetch} = require('../../lib/postgres.js')
const {GETQUESTIONS} = require('./query.js')

const GET = async() => {
    try {
       return await fetchAll(GETQUESTIONS)
    } catch (error) {
        console.error(error)
    }
}

module.exports = {
    GET
}