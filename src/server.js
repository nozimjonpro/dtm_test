const express = require('express');
const modules = require('./modules/index.js');
const cors = require('cors')


const app = express()

app.use(cors())
app.use(express.json())
app.use(modules)



app.listen(process.env.PORT || 5000, () => console.log(`server ready at *5000`))