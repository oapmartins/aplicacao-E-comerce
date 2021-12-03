import 'package:e_commerce_framework/components/card_produtos.dart';
import 'package:flutter/material.dart';

class MeusPedidos extends StatefulWidget {
  const MeusPedidos({Key? key}) : super(key: key);

  @override
  _MeusPedidosState createState() => _MeusPedidosState();
}

class _MeusPedidosState extends State<MeusPedidos> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CardProdutos(),
        ],
      ),
    );
  }
}
