import 'dart:math';

import 'package:chat_app/dummy_friends.dart';
import 'package:flutter/material.dart';
import 'package:audio_recorder/audio_recorder.dart';
import 'package:emoji_picker/emoji_picker.dart';

class MainChat extends StatefulWidget {
  static const routeName = '/main-chat';

  @override
  _MainChatState createState() => _MainChatState();
}

class _MainChatState extends State<MainChat> {
  final _titleController = TextEditingController();

  Widget _chatMessageBuild(BuildContext context, String msg, String where) {
    return Align(
      alignment:
          (where == 'left') ? Alignment.centerLeft : Alignment.centerRight,
      child: Container(
        //width: MediaQuery.of(context).size.width * 0.80,
        margin: EdgeInsets.only(left: 10, top: 10, right: 10),
        constraints:
            BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.80),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),

          elevation: 10,

          color: (where == 'left') ? Color(0xffF7AA7F) :  Colors.lightGreen ,
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 5,
            ),
            child: Text(
              msg,
              style: TextStyle(fontSize: 17),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final key = ModalRoute.of(context).settings.arguments as String;

    var selectedFriend =
        dummyFriends.firstWhere((friend) => friend['key'] == key);

    print(selectedFriend['key']);

    return Scaffold(

      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Row(children: [
          CircleAvatar(
            backgroundImage: AssetImage(selectedFriend['pic']),
          ),
          Padding(
            padding: EdgeInsets.only(left: 7),
            child: Text(
              selectedFriend['name'],
              style: TextStyle(fontSize: 17, color: Colors.black54),
            ),
          ),
        ]),
      ),
      //backgroundColor: Theme.of(context).accentColor,
      body: Stack(children: [
        SingleChildScrollView(
          child: Column(
            children: <Widget>[
              _chatMessageBuild(
                  context, ' Hello friend Hello friend Hello friend Hello friend Hello friend','left'),

              _chatMessageBuild(
                  context, ' Hello friend Hello friend', 'right'),
              _chatMessageBuild(
                  context, ' Hello friend Hello friend', 'left'),
              _chatMessageBuild(
                  context, ' Hello friend Hello friend  ', 'right'),
              _chatMessageBuild(
                  context, ' Hello friend Hello friend  ', 'left'),
              _chatMessageBuild(
                  context, ' Hello friend Hello friend  ', 'right'),
              _chatMessageBuild(
                  context, ' Hello friend Hello friend  ', 'left'),
              _chatMessageBuild(
                  context,
                  ' Hello friend Hello friend Hello friend Hello friend ','right'),
              _chatMessageBuild(
                  context,
                  ' Hello friend Hello friend Hello friend Hello friend',
                  'left'),
              _chatMessageBuild(
                  context,
                  ' Hello friend Hello friend Hello friend Hello friend',
                  'right'),
              _chatMessageBuild(
                  context,
                  ' Hello friend Hello friend Hello friend Hello friend',
                  'left'),
              _chatMessageBuild(
                  context,
                  ' Hello friend Hello friend Hello friend Hello friend',
                  'right'),
              // _chatMessageBuild(context, ' Hello friend Hello friend Hello friend Hello friend', 'left'),
              // _chatMessageBuild(context, ' Hello friend Hello friend Hello friend Hello friend', 'right'),
              // _chatMessageBuild(context, ' Hello friend Hello friend Hello friend Hello friend', 'left'),
              // _chatMessageBuild(context, ' Hello friend Hello friend Hello friend Hello friend', 'right'),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Container(
            transform: Matrix4.translationValues(0, 4.0, 4.0),
            width: 1000,
            height: MediaQuery.of(context).size.height * 0.08,
            child: Card(
              color: Colors.white,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          width: 330,
                          height: 49,
                          margin: EdgeInsets.only(left: 5, bottom: 5),
                          padding: EdgeInsets.symmetric(
                            vertical: 5,
                            horizontal: 20,
                          ),
                          child: TextFormField(
                            style: TextStyle(
                              fontSize: 20,
                            ),
                            keyboardType: TextInputType.multiline,
                            maxLines: null,
                            textAlign: TextAlign.justify,
                            decoration: InputDecoration.collapsed(
                              hintText: 'Write something',

                            ),
                            controller: _titleController,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                      Positioned(
                        // left: 10,
                        bottom: 7,
                        right: 5,

                        child: IconButton(
                          icon: Icon(
                            Icons.audiotrack,
                            size: 40,
                            color: Colors.pink,
                          ),
                          onPressed: () {
                            setState(() {
                              null;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 30),
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          _chatMessageBuild(
                              context, _titleController.text, 'right');
                        });
                      },
                      icon: Icon(
                        Icons.send,
                        size: 40,
                        color: Color(0xff3DC412),
                      ),
                    ),
                  ),
                ]),
            ),
          ),
        ),
      ]),
    );
  }
}
