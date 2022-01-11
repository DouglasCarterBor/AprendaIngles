import 'package:aprendaingles/Telas/Bichos.dart';
import 'package:aprendaingles/Telas/Numeros.dart';
import 'package:aprendaingles/Telas/Vogais.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home>
    with SingleTickerProviderStateMixin {

  TabController _tabController;

  @override
  void initState() {
    super.initState();
   _tabController = TabController(
       length: 3,
       vsync: this,
       initialIndex: 0,
   );

  }
  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Aprenda inglês"),
        bottom: TabBar(
          indicatorWeight: 4,
          //indicatorColor: Colors.white,
          labelStyle: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold
          ),
          //labelColor: Colors.white,
          //unselectedLabelColor: Colors.white,
          controller: _tabController,
          tabs: [
            Tab(
              text: ("Bichos"),

            ),
            Tab(
              text: ("Números"),
            ),
            Tab(
              text: ("Vogais"),
            ),
          ],
        ),
       ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Bichos(),
          Numeros(),
          Vogais(),
        ],
      ),
    );
  }
}
