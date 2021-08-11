import 'package:flutter/material.dart';
import 'package:highlightable/highlightable.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(home: Home());
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Highlightable Examples")),
      body: Center(
        child: Column(
          children: [
            // Very basic usage:
            HighlightText(
              'Hello World',
              highlightableWord: 'hello',
            ),

            const SizedBox(height: 50),

            // Custom Usage
            HighlightText(
              'Hello Flutter',
              highlightableWord: 'hello',
              defaultStyle: TextStyle(fontSize: 25, color: Colors.black),
              highlightStyle: TextStyle(
                fontSize: 25,
                letterSpacing: 2.5,
                color: Colors.white,
                backgroundColor: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
