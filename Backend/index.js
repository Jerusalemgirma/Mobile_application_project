const express=require('express');
const mongoose=require('mongoose');
const dotenv=require('dotenv');
dotenv.config();
bodyParser=require("body-parser");
const User=require("./Models/User");

const Apicontroller=require('./ApiControllerDir/Apicontroller');





let RestApiapp=null;
let port=null;
let MONGO_URL=null;





const initVar=async()=>{
    port=process.env.PORT;
    MONGO_URL=process.env.MONGO_URL;
    
    RestApiapp=express();
}
 middleware=async()=>{
    RestApiapp.use(express.json())

    RestApiapp.use(bodyParser.urlencoded({ extended: false }));
     RestApiapp.use(bodyParser.json());
    //RestApiapp.use(express.bodyParser.urlencoded({ extended: false }));
    RestApiapp.use(express.urlencoded({extended:false}));
    RestApiapp.use(express.json({extended:false}))
    RestApiapp.use('/',Apicontroller);
    RestApiapp.use('/api/auth/login',Apicontroller)
    RestApiapp.use('/api/auth/signup',Apicontroller)


}







const  connectDB=async()=>{
    try {
        mongoose.connect(MONGO_URL
            ,{
            useNewUrlParser:true,
           // useFindAndModify:false,
            useUnifiedTopology:true,
            //bufferCommands:false,
           // autoIndex:false,
        }
        );
        console.log("mogodb connected")


    }catch(error){
        console.log("error connected")
    }

}
const ListenToPort=async()=>{
    RestApiapp.listen(port,async()=>{
        console.log("rest coneected"+port)
    });

}




initVar().then(()=>{
    ListenToPort().then(()=>{
        middleware().then(()=>{
            connectDB();


        })

    })
    

});
