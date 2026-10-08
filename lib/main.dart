import 'package:flutter/material.dart';

void main() {
  runApp(const PrimeiraTela());
}

class PrimeiraTela extends StatelessWidget {
  const PrimeiraTela({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: .center,
          children: [
            Text(
              "SHLISSIK THE SEAL!!",
              style: TextStyle(
                fontSize: 50,
                fontFamily: 'RobotoMono',
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 71, 66, 64),
                backgroundColor: const Color.fromARGB(255, 170, 165, 162),
              ),
            ),
            Text("Eu gosto muito do shlissik"),
            Icon(Icons.tag_faces_rounded),
            Image.network(
              'https://i.redd.it/423ulva9igef1.jpeg',
              width: 400,
              height: 400,
            ),
            ElevatedButton(
              onPressed: () {
                print("SHLISSIK!!!!!!!");
              },
              child: Text("Shlissik?"),
            ),
          ],
        ),
      ),
    );
  }
}
