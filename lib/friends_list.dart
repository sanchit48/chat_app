import 'package:chat_app/dummy_friends.dart';
import 'package:flutter/material.dart';
import './friends_list.dart';
import './main_chat.dart';

class FriendsList extends StatelessWidget {
  // go to main chat
  void friendChat(int index, BuildContext context) {
    String key = dummyFriends[index]['key'];

    Navigator.of(context).pushNamed(MainChat.routeName, arguments: key);
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Column(
          children: <Widget>[
            ListTile(
              onTap: () => friendChat(index, context),
              leading: CircleAvatar(
                backgroundImage: AssetImage(dummyFriends[index]['pic']),
                radius: 25,
              ),
              title: Text(dummyFriends[index]['name']),
              subtitle: Text(dummyFriends[index]['chat'],
                  overflow: TextOverflow.ellipsis),
              trailing: Container(
                margin: EdgeInsets.only(top: 15),
                height: 15,
                width: 15,
                decoration: BoxDecoration(
                  color: Color(0xffF26060),
                  shape: BoxShape.circle,
                  //borderRadius: BorderRadius.circular(15)
                ),
                child: FittedBox(
                    child: Text(
                  '2',
                  style: TextStyle(color: Colors.white, fontSize: 40),
                )),
              ),
            ),
            Divider(),
          ],
        );
      },
      itemCount: dummyFriends.length,
    );
  }
}
