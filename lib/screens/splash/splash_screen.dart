import 'package:e_commerce_framework/components/default_button.dart';
import 'package:flutter/material.dart';

import 'package:e_commerce_framework/size_config.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 3,
                child: Column(
                  children: <Widget>[
                    const Spacer(),
                    Text(
                      'SEU ZÉ',
                      style: TextStyle(
                        fontSize: getProportionateScreenWidth(36),
                        color: Colors.purple,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text('Fazer as compras nunca foi tão fácil!'),
                    const Spacer(flex: 1),
                    Image.asset(
                      'assets/images/splash_2.png',
                      height: getProportionateScreenHeight(265),
                      width: getProportionateScreenWidth(235),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20),
                  ),
                  child: Column(
                    children: <Widget>[
                      const Spacer(flex: 3),
                      DefaultButton(
                        text: 'Continuar',
                        onPressed: () {
                          Navigator.pushNamed(context, '/login');
                        },
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
