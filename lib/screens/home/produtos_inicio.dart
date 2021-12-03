import 'package:e_commerce_framework/components/card_produtos.dart';
import 'package:e_commerce_framework/components/input_filter.dart';
import 'package:flutter/material.dart';

class ProdutosInicio extends StatefulWidget {
  const ProdutosInicio({Key? key}) : super(key: key);

  @override
  _ProdutosInicioState createState() => _ProdutosInicioState();
}

class _ProdutosInicioState extends State<ProdutosInicio> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      //height: 196,
      child: Column(
        children: [
          const InputFilter(textoInput: 'Procurar produtos'),
          Row(
            children: [
              CardProdutos(),
              CardProdutos(),
            ],
          ),
        ],
      ),
    );
  }
}
