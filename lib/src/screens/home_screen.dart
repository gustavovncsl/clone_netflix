// Esse código é nossa tela de home

import 'package:clone_netflix/src/api/api_service.dart';
import 'package:clone_netflix/src/screens/teste_api.dart';
import 'package:clone_netflix/src/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: PreferredSize(
          preferredSize: Size(screenSize.width, 100),
          child: app_bar(),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
             contentHeader(),
             testeApi()
            ],
          )
        ));
  }
}
