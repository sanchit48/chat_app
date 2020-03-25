import 'package:flutter/material.dart';
import 'friends_list.dart';

void main() => runApp(ChatApp());

class ChatApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      title: 'Chat App',
      theme: ThemeData(

        //backgroundColor: Color(0xffF26060),
        primarySwatch:  Colors.pink,
        accentColor: Colors.amber,
        errorColor: Colors.red,
        fontFamily: 'CustomIcons',
        textTheme: ThemeData.light().textTheme.copyWith(

          title: TextStyle(

            fontFamily: 'CustomIcons',
            fontWeight: FontWeight.bold,
            fontSize: 18,

          ),

          button: TextStyle(color: Colors.white)

        ),

        appBarTheme: AppBarTheme(

          textTheme: ThemeData.light().textTheme.copyWith(title: TextStyle(

            fontFamily: 'CustomIcons',
            fontSize: 20,
            fontWeight: FontWeight.bold,

            ),
          ),
        )

      ),
      home: MyChatApp(),
    );
  }
}

class MyChatApp extends StatefulWidget {

  @override
  _MyChatAppState createState() => _MyChatAppState();

}

class _MyChatAppState extends State<MyChatApp> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      //backgroundColor: Theme.of(context).backgroundColor,
      // appBar: AppBar(

      //   title: Text('Chat amica', style: TextStyle(color: Colors.black),),
      //   backgroundColor: Color(0xffF26060),

      // ),

      body:
          FriendsList(),

    );

  }

}