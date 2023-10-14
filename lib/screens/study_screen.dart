import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

const questions = <Map<String, dynamic>>[
  {
    "id": 1,
    "pregunta": "En un turismo con cinco plazas autorizadas, ¿puede transportar a seis personas?",
    "imagen": "https://senal.despideatujefe.org/espana/0138.jpg",
    "opcion_a": "a) No, no está permitido.",
    "opcion_b": "b) Sí, siempre que no supere en un 50% el número de plazas autorizado.",
    "opcion_c": "c) Sí, siempre que no supere la masa máxima autorizada.",
    "opcion_d": "d) Hola Mundo 1",
    "clave": "a",
    "respuesta": "a) No, no está permitido."
  },
  {
    "id": 2,
    "pregunta": "¿Puede circular cualquier vehículo por esta calzada?",
    "imagen": "https://senal.despideatujefe.org/espana/r404.jpg",
    "opcion_a": "a) Sí.",
    "opcion_b": "b) No, porque es una vía exclusiva para automóviles.",
    "opcion_c": "c) Sí, excepto motocicletas de dos ruedas sin sidecar.",
    "opcion_d": "d) Hola Mundo 2",
    "clave": "a",
    "respuesta": "a) Sí."
  },
  {
    "id": 3,
    "pregunta": "Esta señal advierte de la proximidad de...",
    "imagen": "https://senal.despideatujefe.org/espana/p15.jpg",
    "opcion_a": "a) una calzada con pavimento en mal estado.",
    "opcion_b": "b) un cambio de rasante.",
    "opcion_c": "c) un paso para peatones elevado.",
    "opcion_d": "d) Hola Mundo 3",
    "clave": "a",
    "respuesta": "a) una calzada con pavimento en mal estado."
  }
];

class StudyScreen extends StatelessWidget {

  const StudyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Estudiar"),
      ),
      body: const _StudyView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.ac_unit_outlined),
        onPressed: (){
          context.pop();
        },
      ),
    );
  }
}

class _StudyView extends StatelessWidget {

  const _StudyView();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ...questions.map(
            (item) => _CardType(
              id: item['id'], 
              pregunta: item['pregunta'],
              imagen: item['imagen'],
              opcionA: item['opcion_a'],
              opcionB: item['opcion_b'],
              opcionC: item['opcion_c'],
              opcionD: item['opcion_d'],
              clave: item['clave']
              ),
          ),
          ...questions.map(
            (item) => _CardType(
              id: item['id'], 
              pregunta: item['pregunta'],
              imagen: item['imagen'],
              opcionA: item['opcion_a'],
              opcionB: item['opcion_b'],
              opcionC: item['opcion_c'],
              opcionD: item['opcion_d'],
              clave: item['clave']
              ),
          ),
          ...questions.map(
            (item) => _CardType(
              id: item['id'], 
              pregunta: item['pregunta'],
              imagen: item['imagen'],
              opcionA: item['opcion_a'],
              opcionB: item['opcion_b'],
              opcionC: item['opcion_c'],
              opcionD: item['opcion_d'],
              clave: item['clave']
              ),
          ),
        ],
      ),
    );
  }
}

class _CardType extends StatelessWidget {
  
  final int id;
  final String pregunta;
  final String imagen;
  final String opcionA;
  final String opcionB;
  final String opcionC;
  final String opcionD;
  final String clave;

  const _CardType({
    required this.id,
    required this.pregunta,
    required this.imagen,
    required this.opcionA,
    required this.opcionB,
    required this.opcionC,
    required this.opcionD,
    required this.clave
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Card(
      /*shape: RoundedRectangleBorder(
        borderRadius: const BorderRadius.all( Radius.circular(12) ),
        side: BorderSide(
          color: colors.outline
        )
      ),*/
      //color: colors.surfaceVariant,
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
        child: Column(
          children: [
            /*Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: const Icon( Icons.more_vert_outlined),
                onPressed: () {},
              ),
            ),*/
            Align(
              alignment: Alignment.bottomLeft,
              child: Text('$id. $pregunta'),
            ),
            Image.network(
              imagen,
              height: 150,
              fit: BoxFit.cover,
            ),
            Row(
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  child: Icon(Icons.control_point),
                ),
                Expanded(
                  child: Text(opcionA),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  child: Icon(Icons.control_point),
                ),
                Expanded(
                  child: Text(opcionB),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  child: Icon(Icons.control_point),
                ),
                Expanded(
                  child: Text(opcionC),
                ),
              ],
            ),
            Row(
              textDirection: TextDirection.ltr,
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  child: Icon(Icons.control_point),
                ),
                Expanded(
                  child: Text(opcionD),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}