import 'package:flutter/material.dart';
import 'package:computer_80/lista_dati.dart';
import 'package:native_webview/native_webview.dart';

class ViewWeb extends StatelessWidget {
  const ViewWeb({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Web View'),
      ),
      body: WebView(
        initialUrl: listaComputer80[index].link,
      ),
    );
  }
}
