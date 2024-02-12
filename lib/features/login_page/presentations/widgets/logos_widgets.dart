import 'package:flutter/material.dart';

class Logos extends StatelessWidget {
  const Logos({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            'asset/google.png',
            fit: BoxFit.contain,
          ),
          Image.asset(
            'asset/linkedin (1).png',
            fit: BoxFit.contain,
          ),
          Image.asset('asset/facebook.png'),
          Image.asset('asset/instagram.png'),
          Image.asset('asset/whatsapp.png')
        ],
      ),
    );
  }
}
