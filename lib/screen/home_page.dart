import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),

            child: Column(

            children: [
              Row (
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Votre panier total est de '),
                  Text('0.00€', style: TextStyle(fontWeight: FontWeight.bold))
                ],
              ),
              const Spacer(),
              PanierVide(),
              const Spacer(),
            ]
        )
        ),
      ),
    );
  }
}

class PanierVide extends StatelessWidget {
  const PanierVide({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column (
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Text('Votre panier est acutellement vide'),
        Icon(Icons.image),
      ],
    );
  }
}
