import 'package:column_scroll_view/column_scroll_view.dart';
import 'package:computer_80/lista_dati.dart';
import 'package:computer_80/view_foto.dart';
import 'package:computer_80/view_main.dart';
import 'package:computer_80/view_web_page.dart';
import 'package:flutter/material.dart';

class ViewDetail extends StatelessWidget {
  const ViewDetail({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail View'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ColumnScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(listaComputer80[index].nome, style: const TextStyle(fontSize: 24)),
              Image.asset(listaComputer80[index].foto),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red)),
                      onPressed: () {
                        Navigator.pop(context, MaterialPageRoute(builder: ((context) => const ViewMain())));
                      },
                      child: const Text('<- Back')),
                  ElevatedButton(
                      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.orange)),
                      onPressed: (() {
                        Navigator.push(context, MaterialPageRoute(builder: ((context) => ViewWeb(index: index))));
                      }),
                      child: const Text('<- Link ->')),
                  ElevatedButton(
                      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green)),
                      onPressed: (() {
                        Navigator.push(context, MaterialPageRoute(builder: ((context) => ViewFoto(index: index))));
                      }),
                      child: const Text('Foto ->'))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
