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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(listaComputer80[index].nome, style: const TextStyle(fontSize: 24)),
            Image.asset(listaComputer80[index].foto),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context, MaterialPageRoute(builder: ((context) => const ViewMain())));
                    },
                    child: const Text('<- Back')),
                ElevatedButton(
                    onPressed: (() {
                      Navigator.push(context, MaterialPageRoute(builder: ((context) => ViewWeb(index: index))));
                    }),
                    child: const Text('<- Link ->')),
                ElevatedButton(
                    onPressed: (() {
                      Navigator.push(context, MaterialPageRoute(builder: ((context) => ViewFoto(index: index))));
                    }),
                    child: const Text('Foto ->'))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
