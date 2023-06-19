import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Data Diri',
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Diri'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: <Widget>[
                Card(
                  elevation: 2,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(4)),
                    child: Image.network('https://loremflickr.com/100/100'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Column(
                    /// Add this
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Text(
                        'Abidzar M. G. Kurniawan',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        'Mahasiswa S2',
                        style: TextStyle(fontSize: 14, color: Color(0xff666666)),
                      ),
                      Text(
                        'Full-Stack Developer (MERN stack)',
                        style: TextStyle(fontSize: 18, color: Color(0xff666666)),
                      ),
                    ],
                  ),
                )
              ],
            ),
            ElevatedButton(
              child: const Text('Open route'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SecondRoute()),
                );
              },
            ),
          ]
        )
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman Lain'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go back!'),
            )
          ]
        ),
      ),
    );
  }
}