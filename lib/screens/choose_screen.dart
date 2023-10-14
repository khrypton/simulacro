import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ChooseScreen extends StatelessWidget {
  const ChooseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Escoger - Definir bien este titulo"),
      ),
      body: const _ChooseView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back_ios_new_rounded),
        onPressed: (){
          context.pop();
        },
      ),
      bottomNavigationBar: const Text("Aqui ira el anuncio banner"),
    );
  }
}

class _ChooseView extends StatelessWidget {

  const _ChooseView();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,
          children: [
            // Study
            OutlinedButton.icon(
              onPressed: (){
                context.push('/study');
              }, 
              label: const Text('Estudiar'),
              icon: const Icon( Icons.terminal)
            ),

            // Exam
            FilledButton.icon(
              onPressed: (){
                context.push('/exam');
              }, 
              icon: const Icon( Icons.text_fields ),
              label: const Text('Examen'),
            ),

            // Custom botton
            const CustomButton(),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.scrim,
        child: InkWell(
          onTap: () {},
          child: const Padding(
            padding: EdgeInsets.symmetric( horizontal: 20, vertical: 10),
            child: Text('Mi propio boton', style: TextStyle(color: Colors.white))
          ),
        ),
      ),
    );
  }
}