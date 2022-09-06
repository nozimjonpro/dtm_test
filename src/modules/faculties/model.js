const {fetchAll, fetch} = require('../../lib/postgres.js')
const {GETFACULTY, POSTFCULTY, GETSUBJECT} = require('./query.js')

const GET = async() => {
    try {
       return await fetchAll(GETFACULTY)
    } catch (error) {
        console.error(error)
    }
}

const POST = async(blog1Id, blog2Id) =>{
    console.log(blog1Id, blog2Id);
    try {
        return await fetchAll(POSTFCULTY, blog1Id, blog2Id)
    } catch (error) {
        console.error(error)
    }
}

const GETSUBJECTS = async() => {
    try {
        return await fetchAll(GETSUBJECT)
    } catch (error) {
        console.error(error)
    }
}


module.exports = {
    GET, POST, GETSUBJECTS
}