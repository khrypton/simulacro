import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:simulacro/items/category_item.dart';
import 'package:simulacro/screens/export_screens.dart';

//stle
class HomeScreen extends StatelessWidget {

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Simulacro"),
      ),
      body: const _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {

  const _HomeView();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: appCategoryItems.length,
      itemBuilder: (context, index) {
        final menuItem = appCategoryItems[index];
        return _CustomList(menuItem: menuItem);
      },
    );
  }
}

class _CustomList extends StatelessWidget {
  const _CustomList({
    required this.menuItem,
  });

  final CategoryItem menuItem;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return ListTile(
      leading: Icon(menuItem.icono, color: colors.primary),
      trailing: Icon(Icons.arrow_forward, color: colors.primary),
      title: Text(menuItem.titulo),
      subtitle: Text(menuItem.descripcion),
      onTap: (){
        /*
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const ExamScreen(),)
        );*/
        //Navigator.pushNamed(context, menuItem.link);

        //context.pushNamed( ExamScreen.name );
        context.push(menuItem.link);
      },
    );
  }
}