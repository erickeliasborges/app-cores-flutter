import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Atividade cores'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("teste"),
        actions: [
          IconButton(
            icon: const Icon(Icons.sync),
            onPressed: () => setState(() {}),
          )
        ],
      ),
      body: _createBody()

    );
  }

  Widget _createBody() {

      return ListView(
        children: [
          for(int i = 0; i < Random().nextInt(10) + 5; i++) 

            Row(                    
              children: [
                 for(int j = 0; j < Random().nextInt(10); j++) 
                  Expanded(
                    child: Card(
                      color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
                      child: 
                      SizedBox(
                          height: 88,
                          child: Center(
                            child: Text("teste")
                          ),
                      ),
                  ),
                  )    
                 
              ],        
            )

          
        ],
        
      );
  }


}
