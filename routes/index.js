const express = require('express');
const router = express.Router();
const libros = require('./libros');

router.use('/libros', libros);
router.get('/', (req, res) => res.redirect('/libros'));

module.exports = router;
