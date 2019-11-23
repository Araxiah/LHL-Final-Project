const express = require('express')
const bodyParser = require('body-parser')
const app = express()
const port = 3000
const db = require('./queries')

app.use(bodyParser.json())
app.use(
  bodyParser.urlencoded({
    extended: true,
  })
)

app.get('/', (req, res) => {
  res.json({ info: 'Node.js, Express, and Postgres API' })
})

app.get('/categories', db.getCategories)
app.get('/transactions', db.getTransactions)
app.post('/transactions/:id', db.addTransaction)
app.put('/transactions/:id', db.editTransaction)
app.delete('/transactions:id', db.deleteTransaction)




app.listen(port, () => {
  console.log(`App running on port ${port}.`)
})