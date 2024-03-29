
import 'package:demoflutter/bo/accessoire.dart';
import 'package:demoflutter/screen/detail_article_page.dart';
import 'package:demoflutter/screen/home_page.dart';
import 'package:demoflutter/screen/list_article_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      //home: MyHomePage(title: 'Panier Flutter Sales'),
    );
  }
  final _router = GoRouter(
    routes: [
      GoRoute(
        path:'/',
        builder: (context,state) => ListArticlePage(),
        routes: [
          GoRoute(
          path:'detail',
          builder: (context,state) => DetailsArticlePage(state.extra as Accessoire),
          routes: [
            GoRoute(
              path:'cartPage',
            builder: (context,state) => MyHomePage(title: "Panier")
          )
        ])
      ])
    ]
  );

}