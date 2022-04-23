import 'package:flutter/material.dart';

import '../constants.dart';

class InputFilter extends StatelessWidget {
  const InputFilter({
    Key? key,
    required this.textoInput,
  }) : super(key: key);

  final String textoInput;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .9,
      padding: const EdgeInsets.only(bottom: 20),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(color: kTextColor),
            gapPadding: 10,
          ),
          fillColor: Colors.white,
          filled: true,
          labelText: textoInput,
          labelStyle: const TextStyle(fontSize: 15, color: Colors.grey),
          prefixIcon: const Icon(Icons.search),
          contentPadding: EdgeInsets.zero,
          floatingLabelBehavior: FloatingLabelBehavior.never,
        ),
      ),
    );
  }
}
