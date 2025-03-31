const express = require('express');
const morgan = require('morgan');
const path = require('path');
const methodOverride = require('method-override');
const expressLayouts = require('express-ejs-layouts');
const routes = require('./routes');
const sequelize = require('./bd/database');


const app = express();

app.use(morgan('dev'));
app.use(express.urlencoded({ extended: true }));
app.use(methodOverride('_method'));
app.use(express.static(path.join(__dirname, 'public')));

// ejs
app.set('view engine', 'ejs');
app.set('views', path.join(__dirname, 'views'));
app.use(expressLayouts);
app.set('layout', 'layouts/layout');

// Rutas
app.use('/', routes);

// Conexion a BD
sequelize.authenticate()
  .then(() => {
    console.log('✅ Conectado a la base de datos');
    app.listen(3000, () => {
      console.log('🚀 Servidor en http://localhost:3000');
    });
  })
  .catch(err => console.error(' Error al conectar la base de datos:', err));
