import 'package:chat_app/dummy_friends.dart';
import 'package:flutter/material.dart';
import './friends_list.dart';

class FriendsList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return ListView.builder(

      itemBuilder: (context, index) {

        return

          //elevation: 5,
          //  shape: RoundedRectangleBorder(

          //     borderRadius: BorderRadius.circular(15.0),

          //   ),


          Column(

            children: <Widget>[
              ListTile(

                leading: Container(

                  height: 50,
                  width: 50,

                  decoration: new BoxDecoration(

                    shape: BoxShape.circle,

                    image: DecorationImage(

                      fit: BoxFit.cover,
                      image: AssetImage(

                        dummyFriends[index]['pic'],

                      )

                    )

                  ),

                ),

                title: Text(dummyFriends[index]['name']),
                subtitle: Text(

                  dummyFriends[index]['chat'],
                  overflow: TextOverflow.ellipsis

                ),


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

                      child: Text('2', style: TextStyle(color: Colors.white, fontSize: 40),)

                    ),


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