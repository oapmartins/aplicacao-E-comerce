import 'package:e_commerce_framework/components/card_produtos.dart';
import 'package:e_commerce_framework/size_config.dart';
import 'package:flutter/material.dart';

class ProdutosInicio extends StatefulWidget {
  const ProdutosInicio({Key? key}) : super(key: key);

  @override
  _ProdutosInicioState createState() => _ProdutosInicioState();
}

class _ProdutosInicioState extends State<ProdutosInicio> {
  final List<Widget> listaProdutos = [
    InkWell(
      onTap: () {},
      child: const CardProdutos(
        title: 'Maça',
        subTitle: "R\$ 10,90",
        imagem: 'assets/images/maca.jpg',
      ),
    ),
    const CardProdutos(
      title: 'Pera',
      subTitle: 'R\$ 6,97',
      imagem: 'assets/images/pera.jpg',
    ),
    const CardProdutos(
      title: 'Banana',
      subTitle: 'R\$ 4,90',
      imagem: 'assets/images/banana.png',
    ),
    const CardProdutos(
      title: 'Abacaxi',
      subTitle: 'R\$ 6,90',
      imagem: 'assets/images/abacaxi.jpg',
    ),
    const CardProdutos(
      title: 'Manga',
      subTitle: 'R\$ 5,90',
      imagem: 'assets/images/manga.jpg',
    ),
  ];

  final List<Widget> listaProdutos2 = [
    const CardProdutos(
      title: 'Tenis NIKE',
      subTitle: "R\$ 400,00",
      imagem: 'assets/images/shoes2.png',
    ),
    const CardProdutos(
      title: 'Camisa Adidas',
      subTitle: 'R\$ 100,97',
      imagem: 'assets/images/tshirt.png',
    ),
    const CardProdutos(
      title: 'Camisa Amarela',
      subTitle: 'R\$ 40,90',
      imagem: 'assets/images/product 1 image.png',
    ),
    const CardProdutos(
      title: 'Capacete',
      subTitle: 'R\$ 140,79',
      imagem: 'assets/images/Image Popular Product 3.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 10),
            child: Text(
              'Alimentos',
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(250),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: listaProdutos.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.all(2),
                  child: listaProdutos[index],
                );
              },
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 10),
            child: Text(
              'Roupas',
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(250),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: listaProdutos2.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.all(2),
                  child: listaProdutos2[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
