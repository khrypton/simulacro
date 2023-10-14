import 'package:flutter/material.dart';

class CategoryItem {
  final String titulo;
  final String descripcion;
  final String link;
  final IconData icono;

  const CategoryItem({
    required this.titulo,
    required this.descripcion,
    required this.link,
    required this.icono
  });

}

const appCategoryItems = <CategoryItem>[

  CategoryItem(
    titulo: "Choose", 
    descripcion: "Pagina de botones", 
    link: "/choose", 
    icono: Icons.smart_button_outlined
  ),

  CategoryItem(
    titulo: "Estudiar", 
    descripcion: "Pagina de estudiar", 
    link: "/study", 
    icono: Icons.smart_button_outlined
  ),

  CategoryItem(
    titulo: "Examen", 
    descripcion: "Pagina de examen", 
    link: "/exam", 
    icono: Icons.credit_card
  ),

];