const mongoose=require('mongoose')

const userSchema=new mongoose.Schema({
    firstname:{
        type:String,
        //required:true,
    },
    lastname:{
        type:String,
        //required:true,



    },
    username:{
        type:String,
        //required:true,
        //unique:true,


    },
    email:{
        type:String,
        //required:true,
        //unique:true,




    },
    password:{
        type:String,
        //required:true,
        //unique:true,



    },
    confrimpassword:{
        type:String,
        //required:true,
        //unique:true,



    },

    /*coverPhoto:{       
         type:String,
         default:""
        },
    profilePicture:{ 
               type:String,
               default:""

            },
    following:{
        type:Array,
        default:[],
    },
    followers:{
        type:Array,
        default:[],
    },*/
},
{timestamps:true}
);
const User=mongoose.model("myUser",userSchema)
module.exports=User;