import 'package:flutter/material.dart';

class QuestionItem {
  final int id;
  final String pregunta;
  final String imagen;
  final String opcionA;
  final String opcionB;
  final String opcionC;
  final String opcionD;
  final String clave;

  const QuestionItem({
    required this.id,
    required this.pregunta,
    required this.imagen,
    required this.opcionA,
    required this.opcionB,
    required this.opcionC,
    required this.opcionD,
    required this.clave
  });

}

const appQuestionItems = <QuestionItem>[

  QuestionItem(
    id: 1,
    pregunta: "En un turismo con cinco plazas autorizadas, ¿puede transportar a seis personas?",
    imagen: "https://senal.despideatujefe.org/espana/0138.jpg",
    opcionA: "a) No, no está permitido.",
    opcionB: "b) Sí, siempre que no supere en un 50% el número de plazas autorizado.",
    opcionC: "c) Sí, siempre que no supere la masa máxima autorizada.",
    opcionD: "d) Hola Mundo 1",
    clave: "a"
  ),

  QuestionItem(
    id: 2,
    pregunta: "¿Puede circular cualquier vehículo por esta calzada?",
    imagen: "https://senal.despideatujefe.org/espana/r404.jpg",
    opcionA: "a) Sí.",
    opcionB: "b) No, porque es una vía exclusiva para automóviles.",
    opcionC: "c) Sí, excepto motocicletas de dos ruedas sin sidecar.",
    opcionD: "d) Hola Mundo 2",
    clave: "a"
  ),

  QuestionItem(
    id: 3,
    pregunta: "Esta señal advierte de la proximidad de...",
    imagen: "https://senal.despideatujefe.org/espana/p15.jpg",
    opcionA: "a) una calzada con pavimento en mal estado.",
    opcionB: "b) un cambio de rasante.",
    opcionC: "c) un paso para peatones elevado.",
    opcionD: "d) Hola Mundo 3",
    clave: "a"
  ),

];