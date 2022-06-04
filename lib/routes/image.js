const express = require('express'); //import express

// 1.
const router  = express.Router(); 
// 2.
const teaController = require('../controllers/image'); 
// 3.
//router.post('/image', imageController.newImage); 
//router.post('/image2',imageController.newImage2);
router.post('/tea', teaController.uploadImg /*insert this guy*/ , teaController.newTea);
router.get('/tea', teaController.getAllTea);
router.delete('/tea', teaController.deleteAllTea);

router.get('/tea/:name', teaController.getOneTea);
router.post('/tea/:name', teaController.newComment);
router.delete('/tea/:name', teaController.deleteOneTea);

// 4. 
module.exports = router; // export to use in server.js