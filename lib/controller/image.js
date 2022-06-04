// const multer = require('multer');

// const storage = multer.diskStorage({
// destination: function (req, file, cb) {
//     cb(null, './uploads');
//   },
// filename: function (req, file, cb) {
//     cb(null, file.originalname);
// }
// });
//   const uploadImg = multer({storage: storage}).single('image');

//  //import tea model
//  const Tea = require('../models/image');
//  // newTea function for post image route
//  const newImage = (req, res, next) => {
//   res.json({message: "POST new image"}); // dummy function for now
//    };
//    const newImage2 = (req, res, next) => {
//       res.json({message: "POST new image2"}); // dummy function for now
//     };

//    //GET '/tea'
//    const getAllTea = (req, res, next) => {
//      //check if the tea name already exists in db
//      //Tea.findOne({name:req.body.name},(data)=>{

//     //if tea not in db, add it
//     //if(data===null){
//         //create a new tea object using the Tea model and req.body
//         const newTea = new Tea({
//             name:req.body.name,
//             image: req.body.image, // placeholder for now
//             description: req.body.description,
//             keywords: req.body.keywords,
//             origin: req.body.origin,
//             brew_time: req.body.brew_time,
//             temperature: req.body.temperature,
//         })

//         // save this object to database
//         //newTea.save((err, data)=>{
//         //    if(err) return res.json({Error: err});
//         //    return res.json(data);
//         //})
//     //if tea is in db, return a message to inform it exists            
//     //}else{
//         return res.json(newTea);
//       //}
//     //})    
//       };

//     //POST '/tea'
//     const newTea = (req, res, next) => {
//      //check if the tea name already exists in db
//      Tea.findOne({name:req.body.name},(data)=>{

//        //if tea not in db, add it
//        if(data===null){
//             console.log("new object is creating");
//            //create a new tea object using the Tea model and req.body
//                const newTea = new Tea({
//                name:req.body.name,
//                image: req.file.path // placeholder for now
//                //description: req.body.description,
//                //keywords: req.body.keywords,
//               //origin: req.body.origin,
//               //brew_time: req.body.brew_time,
//               //temperature: req.body.temperature,
//            })

//            // save this object to database
//            newTea.save((err, data)=>{
//                if(err) return res.json({Error: err});
//                console.log("saved");
//                return res.json(data);
           
//              })
//          //if tea is in db, return a message to inform it exists            
//           }else{
//             console.log("not saved");
//              return res.json(newTea);
        
//              }
//             }) 
//              }

//          //DELETE '/tea'
//          const deleteAllTea = (req, res, next) => {
//          res.json({message: "DELETE all tea"});
//          };

//           //GET '/tea/:name'
//           const getOneTea = (req, res, next) => {
//           res.json({message: "GET 1 tea"});
//             };

//            //POST '/tea/:name'
//            const newComment = (req, res, next) => {
//            res.json({message: "POST 1 tea comment"});
//            };

//           //DELETE '/tea/:name'
//           const deleteOneTea = (req, res, next) => {
//             res.json({message: "DELETE 1 tea"});
//            };


//              module.exports = {newImage,newImage2,getAllTea, 
//              newTea,
//              deleteAllTea,
//               getOneTea,
//               newComment,
//               deleteOneTea,uploadImg};