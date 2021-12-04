import 'package:e_commerce_framework/components/card_produtos.dart';
import 'package:e_commerce_framework/components/default_button.dart';
import 'package:e_commerce_framework/saveDocument.dart';
import 'package:e_commerce_framework/size_config.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdf/pdf.dart';

class MeusPedidos extends StatefulWidget {
  const MeusPedidos({Key? key}) : super(key: key);

  @override
  _MeusPedidosState createState() => _MeusPedidosState();
}

class _MeusPedidosState extends State<MeusPedidos> {
  final List<Widget> listaProdutos = [
    const CardProdutos(
      title: 'Maça',
      subTitle: "R\$ 10,90",
      imagem: 'assets/images/maca.jpg',
    ),
    const CardProdutos(
      title: 'Manga',
      subTitle: 'R\$ 5,90',
      imagem: 'assets/images/manga.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: getProportionateScreenHeight(300),
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
          SizedBox(height: getProportionateScreenHeight(70)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:
                DefaultButton(text: 'Gerar nota Fiscal', onPressed: _createPDF),
          )
        ],
      ),
    );
  }

  Future<void> _createPDF() async {
    PdfDocument document = PdfDocument();
    final page = document.pages.add();

    page.graphics.drawString('Essa é sua nota fiscal!',
        PdfStandardFont(PdfFontFamily.helvetica, 30));

    List<int> bytes = document.save();
    document.dispose();

    saveAndLaunchFile(bytes, 'notaFiscal.pdf');
  }
}
