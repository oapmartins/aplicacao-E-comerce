import 'package:e_commerce_framework/size_config.dart';
import 'package:flutter/material.dart';

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
                      SizedBox(
                        width: double.infinity,
                        height: getProportionateScreenHeight(60),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'Continuar',
                            style: TextStyle(
                              fontSize: getProportionateScreenWidth(18),
                              color: Colors.white,
                            ),
                          ),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                                return Colors
                                    .purple; // Use the component's default.
                              },
                            ),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                          ),
                        ),
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
