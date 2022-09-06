const {fetchAll, fetch} = require('../../lib/postgres.js')
const {GETUSERS, POSTUSER, PUTUSER, DELETEUSER} = require('./query.js')

const GET = async({userId}) => {
    try {
       return await fetchAll(GETUSERS, userId)
    } catch (error) {
        console.error(error)
    }
}

const POST = async({username, email, password, gender}) => {
    
    try {
        return await fetch(POSTUSER, username, email, password, gender)
    } catch (error) {
        console.error(error)
    }
}

const PUT = async({username, email, password, gender}, {userId}) => {
    try {
        return await fetch(PUTUSER, username, email, password, gender, userId)
    } catch (error) {
        console.error(error)
    }
}

const DELETE = async({userId}) => {
    try {
        return await fetch(DELETEUSER, userId)
    } catch (error) {
        console.error(error)
    }
}

module.exports = {GET, POST, PUT, DELETE}