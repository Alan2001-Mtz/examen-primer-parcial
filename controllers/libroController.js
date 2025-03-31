const Libro = require('../models/libro');
const { Op } = require('sequelize');

exports.listarLibros = async (req, res) => {
  const { mensaje, error, q } = req.query;

  let where = {};
  if (q && q.trim() !== '') {
    const query = q.trim();
    where = {
      [Op.or]: [
        { titulo: { [Op.like]: `%${query}%` } },
        { autor: { [Op.like]: `%${query}%` } }
      ]
    };
  }

  const page = parseInt(req.query.page) || 1;
  const limit = 1000;
  const offset = (page - 1) * limit;

  const { count, rows } = await Libro.findAndCountAll({ where, limit, offset });
  const totalPages = Math.ceil(count / limit);

  res.render('libros/listaLibros', {
    libros: rows,
    mensaje,
    error,
    q,
    page,
    totalPages
  });
};

exports.mostrarFormularioNuevo = (req, res) => {
  res.render('libros/formularioLibro', { libro: {}, editar: false, error: null });
};

exports.crearLibro = async (req, res) => {
  const { titulo, autor, anio_publicacion, genero } = req.body;
  if (!titulo || !autor) {
    return res.render('libros/formularioLibro', {
      libro: req.body,
      editar: false,
      error: 'Título y autor son obligatorios'
    });
  }
  await Libro.create({ titulo, autor, anio_publicacion, genero });
  res.redirect('/libros?mensaje=Libro creado correctamente');
};

exports.mostrarFormularioEditar = async (req, res) => {
  const libro = await Libro.findByPk(req.params.id);
  res.render('libros/formularioLibro', { libro, editar: true, error: null });
};

exports.actualizarLibro = async (req, res) => {
  const { titulo, autor, anio_publicacion, genero } = req.body;
  if (!titulo || !autor) {
    const libro = await Libro.findByPk(req.params.id);
    return res.render('libros/formularioLibro', {
      libro: { ...libro.dataValues, ...req.body },
      editar: true,
      error: 'Título y autor son obligatorios'
    });
  }
  await Libro.update({ titulo, autor, anio_publicacion, genero }, {
    where: { id: req.params.id }
  });
  res.redirect('/libros?mensaje=Libro actualizado correctamente');
};

exports.eliminarLibro = async (req, res) => {
  await Libro.destroy({ where: { id: req.params.id } });
  res.redirect('/libros?mensaje=Libro eliminado correctamente');
};

exports.obtenerLibroPorId = async (id) => {
  return await Libro.findByPk(id);
};
