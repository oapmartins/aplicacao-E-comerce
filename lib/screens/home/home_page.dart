import 'dart:async';

import 'package:e_commerce_framework/screens/home/meus_pedidos.dart';
import 'package:e_commerce_framework/screens/home/produtos_inicio.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _paginaAtual = 0;
  final List<Widget> _telas = [
    ProdutosInicio(),
    MeusPedidos(),
    MeusPedidos(),
  ];

  void mudarDeAba(int indice) {
    setState(() {
      _paginaAtual = indice;

      if (_paginaAtual == 2) {
        Navigator.of(context).pushNamedAndRemoveUntil(
            '/splash', (Route<dynamic> route) => false);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      // body: SizedBox(
      //   width: MediaQuery.of(context).size.width,
      //   //height: 196,
      //   child: Stack(
      //     alignment: Alignment.bottomCenter,
      //     children: [
      //       const InputFilter(textoInput: 'Procurar produtos'),
      //     ],
      //   ),
      // ),
      body: _telas[_paginaAtual],
      bottomNavigationBar: BottomNavigationBar(
        onTap: mudarDeAba,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.purple,
        currentIndex: _paginaAtual,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Início",
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket),
            label: "Meus pedidos",
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.logout),
            label: "Sair",
          ),
        ],
      ),
    );
  }
}
