/*const express=require('express');
const mongoose=require('mongoose');

const User=require('../Models/User');
const routes=express.Router();
const dotenv=require('dotenv');
const jwt=require('jsonwebtoken');



routes.get('/',(req,res)=>{
    res.send('this is first age what i dont know page')

});












routes.post('/api/auth/login',async (req,res)=>{

    try{
        
       if(req.body.email!=null){

       const user=await User.findOne({email:req.body.email})
       !user && res.status(404).json({
        message:"user Does exit ,register"
           });


        const validPassword=await compare(req.body.password,user.password);
        !validPassword && res.status(404).json({
            message:"Invalid password"
        });

        const access_token=jwt.sign(
            {
              id:user.id  ,
            },
            process.env.SECRET_KEY,
            {expiresIn:"5d"}

        )

       if (user!=null){
          res.json({


        message:"success",
        body:user,
        token:access_token,
    
    });
    };
    res.send("login routes")
}else{
    res.status(404).json({
        message:"email is req"
    })
}

    }catch(error){
        console.log("error occuur"+error.message)

    }

});




routes.get('/api/auth/signup',async(req,res)=>{
    try{
        if (req.body.password!=null){
            if (req.body.email!=null){

             const user=await new User({
              firstname:req.body.firstname,
              lastname:req.body.lastname,
            username:req.body.username,
            email:req.body.email,
            password:req.body.password,
            confrimpassword:req.body.confrimpassword,
         
        });
        await user.save();
        res.json(user
            
            //{user_details:user,
            //message:"succeffully registerd"}
           
        );

    }else{
        res.status(400).json({
            message:"email required"

        })
        }
    }else{
    
            res.status(400).json({
                message:"password both require",
            });
        }

  

    }catch(error){
        console.log("error occure "+error.message)

    }

    
});










routes.get('/api/files',(req,res)=>{
    res.send("all file")
});
routes.get('/api/files/:filename',(req,res)=>{
    res.send("named file")
});


module.exports=routes;*/









const express=require('express');
const mongoose=require('mongoose');

const User=require('../Models/User');
const routes=express.Router();
const dotenv=require('dotenv');
const jwt=require('jsonwebtoken');



routes.get('/',(req,res)=>{
    res.send('this is first age what i dont know page')

});












routes.post('/api/auth/login',async (req,res)=>{

    try{
        

       const user=await User.findOne({email:req.body.email})
       !user && res.status(404).json({
        message:"user Does exit ,register"
           });


        const validPassword=await (req.body.password==user.password);
        !validPassword && res.status(404).json({
            message:"Invalid password"
        });

        const access_token=jwt.sign(
            {
              id:user.id  ,
            },
            process.env.SECRET_KEY,
            {expiresIn:"5d"}
        )

       if (user!=null){
          res.json({


        message:"success",
        body:user,
        token:access_token,
    
    })

   }res.send("login routes")



    }catch(error){
        console.log("error occuur"+error.message)

    }

});




routes.post('/api/auth/signup',async(req,res)=>{
    try{
         let user= await User.findOne({email:req.body.email})
         if (!user){
            const user= new User({
              firstname:req.body.firstname,
              lastname:req.body.lastname,
              username:req.body.username,
              email:req.body.email,
              password:req.body.password,
              confrimpassword:req.body.confrimpassword,
           
          });
          await user.save();
          res.json(
            {user_details:user,
            message:"succeffully registerd"}
           );


        }else{
            res.status(404).json({
                message:"user already exist go to login page"
            })
        }
         
    
    }
    catch(error){
        console.log("error occure "+error.message)

    }

    
});










routes.get('/api/files',(req,res)=>{
    res.send("all file")
});
routes.get('/api/files/:filename',(req,res)=>{
    res.send("named file")
});


module.exports=routes;