const { DataTypes } = require('sequelize');
const sequelize = require('../bd/database');

const Libro = sequelize.define('Libro', {
  id: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    autoIncrement: true
  },
  titulo: {
    type: DataTypes.STRING,
    allowNull: false
  },
  autor: {
    type: DataTypes.STRING,
    allowNull: false
  },
  anio_publicacion: {
    type: DataTypes.INTEGER
  },
  genero: {
    type: DataTypes.STRING
  }
}, {
  tableName: 'libros',
  timestamps: false
});

module.exports = Libro;
