const express = require('express')
const bodyParser = require('body-parser')
const app = express()
const port = 3001
const db1 = require('./queries_tier_1')
const db2 = require('./queries_tier_2')
var cors = require('cors')

const cookieSession = require('cookie-session');
app.use(cookieSession({
  name: 'session',
  keys: ["POTATO"],
  maxAge: 24 * 60 * 60 * 1000 // 24 hours
}));
 
app.use(cors())

app.use(bodyParser.json())
app.use(
  bodyParser.urlencoded({
    extended: true,
  })
)

// app.get('/', (req, res) => {
//   res.json({ info: 'Node.js, Express, and Postgres API' })
// })

//login
app.post('/login', async (req, res) => {
  const user = await db2.userVerification(req.body.email, req.body.password)
  req.session.user_id = user.id
  console.log('/LOGIN HIT')
  res.json({status: 'ok'})
})

app.get('/logout',  (req, res) => {
//  if(req.session.user && req.session.user_id){
//    res.clearCookie('user_id')
//  }
//   console.log("Nuke my Cookie index.js!")
//   console.log("what is my session?", req.session)

// req.session.destroy((err) => {
//   if(err){
//     console.log(err)
//   }
// })

req.session = null
})

app.post('/new-user', db1.addUser)
app.get('/categories', db1.getCategories)
app.post('/new-category/:id', db1.addCategory)
app.get('/transactions', db1.getTransactions)
// app.post('/transactions/:id', db.addTransaction)
app.post('/new-entry', db1.addTransaction)
app.put('/transactions/:id', db1.editTransaction)
app.delete('/transactions:id', db1.deleteTransaction)





app.listen(port, () => {
  console.log(`App running on port ${port}.`)
})