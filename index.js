require('dotenv').config()
const express = require('express')
const app = express()

const port = process.env.PORT || 3000

app.get('/', (req, res) => {
    res.status(200).json({
        health: true,
        message: 'Hello World!',
        version: process.env.VERSION || '1.0.0'
    })
})

app.listen(port, () => {
    console.log(`Listening on port ${port}`)
})