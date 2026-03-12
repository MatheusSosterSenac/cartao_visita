import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart'; // necessário para abrir links

void main() {
  runApp(CartaoVisita());
}

class CartaoVisita extends StatelessWidget {
  // Função para abrir o GitHub
  void _abrirGitHub() async {
    const url = 'https://github.com/MatheusSosterSenac/Lista-de-exercicios-DART'; // substitua pelo seu GitHub
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Não foi possível abrir $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: Center(
          child: Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/perfil.jpg'),
                ),
                SizedBox(height: 10),
                Text(
                  'Matheus Henrique Soster',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Sostware',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[700],
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Icon(Icons.email, color: Colors.teal),
                    SizedBox(width: 10),
                    Text('Sostware@gmail.com'),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Icon(Icons.phone, color: Colors.teal),
                    SizedBox(width: 10),
                    Text('+55 11 99999-9999'),
                  ],
                ),
                SizedBox(height: 20),
                GestureDetector(
                  onTap: _abrirGitHub,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.link, color: Colors.teal),
                      SizedBox(width: 10),
                      Text(
                        'GitHub',
                        style: TextStyle(
                          color: Colors.teal,
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
