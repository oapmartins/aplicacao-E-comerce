import 'package:e_commerce_framework/components/default_button.dart';
import 'package:flutter/material.dart';

import 'package:e_commerce_framework/constants.dart';
import 'package:e_commerce_framework/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  "Bem vindo",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(28),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'Preencha os campos para fazer login.',
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.05),
                const LoginForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();

  final List<String> errors = [];

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          const InputFormField(
            labelText: 'Email',
            hintText: 'Digite seu Email',
            suffixIcon: Icons.mail_outline,
          ),
          SizedBox(height: getProportionateScreenHeight(20)),
          const InputFormField(
            labelText: 'Senha',
            hintText: 'Digite sua Senha',
            suffixIcon: Icons.lock_outline,
            obscureText: true,
          ),
          // SizedBox(height: getProportionateScreenHeight(20)),
          SizedBox(height: SizeConfig.screenHeight * 0.05),
          DefaultButton(
            text: 'Continuar',
            onPressed: () {
              Navigator.of(context).pushNamedAndRemoveUntil(
                  '/home', (Route<dynamic> route) => false);
            },
          ),
        ],
      ),
    );
  }
}

class InputFormField extends StatelessWidget {
  const InputFormField({
    Key? key,
    required this.labelText,
    required this.hintText,
    required this.suffixIcon,
    this.obscureText = false,
  }) : super(key: key);

  final String labelText;
  final String hintText;
  final IconData suffixIcon;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Icon(
          suffixIcon,
          size: getProportionateScreenWidth(25),
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 16,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(color: kTextColor),
          gapPadding: 10,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(color: kTextColor),
          gapPadding: 10,
        ),
      ),
    );
  }
}
