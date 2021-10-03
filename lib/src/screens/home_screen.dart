// Esse código é nossa tela de home

import 'package:clone_netflix/src/widgets/amazing_movies.dart';
import 'package:clone_netflix/src/widgets/popular_movies.dart';
import 'package:clone_netflix/src/widgets/watch_again.dart';
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
          watch_again(),
          amazing_movies(),
          popular_movies(),
        ],
      )),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.white), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.movie_filter_rounded, color: Colors.grey),
              label: 'Em breve'),
          BottomNavigationBarItem(
              icon: Icon(Icons.download, color: Colors.grey),
              label: 'Downloads'),
        ],
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}
