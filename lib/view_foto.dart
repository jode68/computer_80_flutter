import 'package:column_scroll_view/column_scroll_view.dart';
import 'package:flutter/material.dart';
import 'lista_dati.dart';

class ViewFoto extends StatelessWidget {
  const ViewFoto({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Foto View'),
      ),
      body: PageView.builder(
        itemCount: listaComputer80[index].npic,
        itemBuilder: ((context, indexFile) {
          return ListTile(
            title: ColumnScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    elevation: 20,
                    shadowColor: Colors.blue,
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: SizedBox(
                        width: 400,
                        height: 500,
                        child: Image.asset(
                          '${listaComputer80[index].pic}$indexFile.jpg',
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
