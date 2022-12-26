import 'package:computer_80/lista_dati.dart';
import 'package:computer_80/view_detail.dart';
import 'package:flutter/material.dart';

class ViewMain extends StatelessWidget {
  const ViewMain({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listaComputer80.length,
      itemBuilder: ((context, index) {
        return Padding(
          padding: const EdgeInsets.all(10),
          child: Card(
            shadowColor: Colors.blue,
            elevation: 10,
            child: ListTile(
              title: Text(listaComputer80[index].nome),
              subtitle: Text(listaComputer80[index].anno),
              leading: const Icon(Icons.computer),
              trailing: const Text('->', style: TextStyle(color: Colors.grey)),
              onTap: (() {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => ViewDetail(index: index)),
                    ));
              }),
            ),
          ),
        );
      }),
    );
  }
}
