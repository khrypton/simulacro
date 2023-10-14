import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ExamScreen extends StatelessWidget {

  const ExamScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Examen"),
      ),
      body: const _ExamView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.archive_outlined),
        onPressed: (){
          context.pop();
        },
      ),
      /*persistentFooterButtons: [
        const Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: const Text("data"),
        ),
      ],*/
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,
          children: [
            // Study
            OutlinedButton.icon(
              onPressed: (){}, 
              label: const Text('Siguiente'),
              icon: const Icon( Icons.access_alarm)
            ),
          ],
        ),
      ),
    );
  }
}

class _ExamView extends StatefulWidget {
  const _ExamView();

  @override
  State<_ExamView> createState() => _ExamViewState();
}

enum Opcion { a, b, c, d }

class _ExamViewState extends State<_ExamView> {

  Opcion selectedOption = Opcion.a;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
          child: Column(
            children: [
              const Align(
                alignment: Alignment.bottomLeft,
                child: Text('En un turismo con cinco plazas autorizadas, ¿puede transportar a seis personas?'),
              ),
              Image.network(
                'https://senal.despideatujefe.org/espana/0138.jpg',
                height: 150,
                fit: BoxFit.cover,
              ),
              RadioListTile(
                title: const Text('Opcion A'),
                subtitle: const Text('Subtitle opcion a'),
                value: Opcion.a,
                groupValue: selectedOption,
                onChanged: (value) => setState(() {
                  selectedOption = Opcion.a;
                }),
              ),
              RadioListTile(
                title: const Text('Opcion B'),
                value: Opcion.b,
                groupValue: selectedOption,
                onChanged: (value) => setState(() {
                  selectedOption = Opcion.b;
                }),
              ),
              RadioListTile(
                title: const Text('Opcion C'),
                value: Opcion.c,
                groupValue: selectedOption,
                onChanged: (value) => setState(() {
                  selectedOption = Opcion.c;
                }),
              ),
              RadioListTile(
                title: const Text('Opcion D'),
                value: Opcion.d,
                groupValue: selectedOption,
                onChanged: (value) => setState(() {
                  selectedOption = Opcion.d;
                }),
              ),
              ExpansionTile(
                title: const Text('Explicación'),
                subtitle: Text('$selectedOption'),
                children: [
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text('Esto es la explicacion de $selectedOption: Esta señal advierte de la proximidad de curva.')
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}