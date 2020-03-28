import 'package:chat_app/main_chat.dart';
import 'package:flutter/material.dart';
import 'friends_list.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.black,
      systemNavigationBarIconBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.dark,
    ),
  );
  runApp(ChatApp());
}

class ChatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chat App',
      theme: ThemeData(
          primaryColor: Color(0xffF26060),
          accentColor: Color(0xffF0F8FF),
          fontFamily: 'CustomIcons',
          textTheme: ThemeData.light().textTheme.copyWith(
              title: TextStyle(
                fontFamily: 'CustomIcons',
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
              button: TextStyle(color: Colors.white)),
          appBarTheme: AppBarTheme(
            textTheme: ThemeData.light().textTheme.copyWith(
                  title: TextStyle(
                    fontFamily: 'CustomIcons',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
          )),
      home: MyChatApp(),
      routes: {
        MainChat.routeName: (ctx) => MainChat(),
      },
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
      appBar: AppBar(
        elevation: 2,
        brightness: Brightness.light,
        title: SvgPicture.asset(
          'assets/images/amica_inverted.svg',
          height: kToolbarHeight - 25,
        ),
        backgroundColor: Colors.white,
      ),
      body: FriendsList(),
    );
  }
}
