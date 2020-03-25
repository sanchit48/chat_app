import 'package:chat_app/dummy_friends.dart';
import 'package:flutter/material.dart';
import './friends_list.dart';

class FriendsList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return ListView.builder(

      itemBuilder: (context, index) {

        return Card(

          elevation: 5,
           shape: RoundedRectangleBorder(

              borderRadius: BorderRadius.circular(15.0),

            ),


          child: ListTile(

            leading: ClipRRect(

              child: Image.asset(

                dummyFriends[index]['pic'],
                height: 50,
                width: 40,

              ),


              borderRadius: BorderRadius.circular(30),

            ),

            title: Text(dummyFriends[index]['name']),
            subtitle: Text(

              dummyFriends[index]['chat'],
              overflow: TextOverflow.ellipsis

            ),


            trailing: Icon(Icons.camera),

          ),



        );

      },

      itemCount: dummyFriends.length,

    );

  }

}