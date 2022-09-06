const {fetchAll, fetch} = require('../../lib/postgres.js')
const {GETSUBJECT, POSTSUBJECT, GETSUBJECTMAIN} = require('./query.js')

const GET = async({subjectId}) => {
    try {
       return await fetchAll(GETSUBJECT, subjectId)
    } catch (error) {
        console.error(error)
    }
}

const GETMAIN = async() => {
    try {
       return await fetchAll(GETSUBJECTMAIN)
    } catch (error) {
        console.error(error)
    }
}



const POST = async({blog1}) =>{
    try {
        return await fetchAll(POSTSUBJECT, blog1)
    } catch (error) {
        
    }
}


module.exports = {
    GET, POST, GETMAIN
}