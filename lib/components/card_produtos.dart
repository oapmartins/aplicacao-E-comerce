import 'package:e_commerce_framework/size_config.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class CardProdutos extends StatelessWidget {
  const CardProdutos({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.imagem,
  }) : super(key: key);

  final String title;
  final String subTitle;
  final String imagem;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 158,
      height: 280,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Material(
                  elevation: 2,
                  borderRadius: BorderRadius.circular(15),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    clipBehavior: Clip.antiAlias,
                    child: Image.asset(
                      imagem,
                      height: getProportionateScreenHeight(175),
                      width: getProportionateScreenWidth(150),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  title,
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
                Text(
                  subTitle,
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w300,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 70,
            right: -7,
            child: Material(
              elevation: 5,
              shape: CircleBorder(),
              clipBehavior: Clip.antiAlias,
              child: SizedBox(
                height: 30,
                child: IconButton(
                  iconSize: 13,
                  onPressed: () {},
                  icon: Icon(Icons.star),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
