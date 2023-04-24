import 'package:flutter/material.dart';
import 'package:computer_80/lista_dati.dart';
import 'package:carousel_images/carousel_images.dart';
import 'package:column_scroll_view/column_scroll_view.dart';

class ViewFoto extends StatelessWidget {
  const ViewFoto({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Foto View'),
        ),
        body: ColumnScrollView(
            child: CarouselImages(
          listImages: listafoto(index),
          height: 500,
        )));
  }

  List<String> listafoto(index) {
    List<String> lista = [];
    for (var i = 0; i < listaComputer80[index].npic; i++) {
      lista.add('${listaComputer80[index].pic}$i.jpg');
    }
    return lista;
  }
}
