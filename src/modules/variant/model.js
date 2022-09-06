const {fetchAll, fetch} = require('../../lib/postgres.js')
const {GETVARIANTS} = require('./query.js')

const GET = async() => {
    try {
       return await fetchAll(GETVARIANTS)
    } catch (error) {
        console.error(error)
    }
}

module.exports = {
    GET
}