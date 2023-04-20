import 'package:demoflutter/bo/accessoire.dart';
import 'package:flutter/material.dart';

class DetailsArticlePage extends StatelessWidget {
  final Accessoire accesoire;
  const DetailsArticlePage(this.accesoire,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(accesoire.title),),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Hero(
                tag: accesoire.id,
                child: Image.network(accesoire.urlImage)),
            Text(accesoire.description),

          ],
        ),
      ),
    );
  }
}
