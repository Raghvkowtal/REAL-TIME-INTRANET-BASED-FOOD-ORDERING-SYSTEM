// const { urlencoded } = require("express");
const express = require("express");

const app = express();

const bodyParser = require("body-parser")

app.use(bodyParser.json())

app.use(bodyParser.urlencoded({extended:true}));


// for views
const nunjucks = require("nunjucks")


nunjucks.configure('views', {
    autoescape: true,
    express: app
});

const path = require("path");

// console.log(path.join(__dirname,'public'))
app.use(express.static(path.join(__dirname,'public')));

// files upload


// console.log(__dirname+'/public/uploads');

// session 

const session = require('express-session');

// app.set('trust proxy', 1) // trust first proxy
// app.use(session({
//   secret: 'keyboard cat',
//   resave: false,
//   saveUninitialized: true,
//   cookie: { secure: true }
// }))


app.use(session({
    secret: 'keyboard cat',
    resave: false,
    saveUninitialized: false,
  
  }));

app.get("/admin",(req,res)=>{
    res.render("admin/adminLogin.html")
})


// router admin
let Admin = require("./routes/admin")
app.use("/admin",Admin)


let customer = require("./routes/customer")
app.use("/customer",customer);

let restorent = require("./routes/restorent")
app.use("/restorent",restorent)

app.listen(5000,()=>{
    console.log("listening port 5000");
})