import 'package:flutter/material.dart';
import 'package:computer_80/lista_dati.dart';
import 'package:computer_80/view_detail.dart';

class ViewMain extends StatelessWidget {
  const ViewMain({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listaComputer80.length,
      itemBuilder: ((context, index) {
        return Column(
          children: [
            ListTile(
              title: Text(listaComputer80[index].nome),
              subtitle: Text(listaComputer80[index].anno),
              trailing: const Text('->', style: TextStyle(color: Colors.grey)),
              onTap: (() {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => ViewDetail(index: index)),
                    ));
              }),
            ),
            const Divider(
              color: Colors.black,
            ),
          ],
        );
      }),
    );
  }
}
