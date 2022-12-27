import 'package:flutter/material.dart';
import 'package:insta_image_viewer/insta_image_viewer.dart';
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
      body: InstaImageViewer(
        child: PageView.builder(
          itemCount: listaComputer80[index].npic,
          itemBuilder: ((context, indexFile) {
            return Image.asset(
              '${listaComputer80[index].pic}$indexFile.jpg',
              fit: BoxFit.contain,
            );
          }),
        ),
      ),
    );
  }
}
