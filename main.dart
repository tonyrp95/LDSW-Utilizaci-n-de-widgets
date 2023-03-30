import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Welcome to Flutter',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {
  var current = WordPair.random();
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();

    return Scaffold(
      body: Column(
        children:[
          Text('Welcome to Flutter',textAlign: TextAlign.center,),
          Text(appState.current.asLowerCase),
          Text('Hola dominic',textAlign: TextAlign.center,style: TextStyle(
          fontSize: 20.0),),
          Text(''),
          Row( ),
          Column( ),
          Stack( ),
          Container( ),
        ],
         
      ),
      
    ); 
    
  }
  
}
