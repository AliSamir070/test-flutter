
import 'package:flutter/material.dart';
import 'package:test_flutter/models/User.dart';

import '../../models/User.dart';

class UsersScreen extends StatelessWidget {
  List<User> users = [
    User(name: "Ali Samir", color: Colors.grey, number: "+201022020442"),
    User(name: "Ahmed Samir", color: Colors.green, number: "+209928199222"),
    User(name: "Alaa El din", color: Colors.red, number: "+2010999201"),
    User(name: "Mohamed Hassan", color: Colors.black, number: "+201088875887"),
    User(name: "Mo Salah", color: Colors.blue, number: "+2010222020100"),
    User(name: "Ronaldo", color: Colors.orange, number: "+201087291287"),
    User(name: "Leo messi", color: Colors.amber, number: "+20119820922"),
    User(name: "Trezguet", color: Colors.teal, number: "+201288812888"),
    User(name: "Ali Samir", color: Colors.grey, number: "+201022020442"),
    User(name: "Ahmed Samir", color: Colors.green, number: "+209928199222"),
    User(name: "Alaa El din", color: Colors.red, number: "+2010999201"),
    User(name: "Mohamed Hassan", color: Colors.black, number: "+201088875887"),
    User(name: "Mo Salah", color: Colors.blue, number: "+2010222020100"),
    User(name: "Ronaldo", color: Colors.orange, number: "+201087291287"),
    User(name: "Leo messi", color: Colors.amber, number: "+20119820922"),
    User(name: "Trezguet", color: Colors.teal, number: "+201288812888"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Users"
        ),
      ),
      body: ListView.separated(
        padding: EdgeInsetsDirectional.all(20),
          itemBuilder: (context,index) => buildUserItem(users[index]),
          separatorBuilder: (context,index)=>Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            child: Container(
              width: double.infinity,
              height: 1,
              color: Colors.grey,
            ),
          ),
          itemCount: users.length
      ),
    );
  }
  Widget buildUserItem(User user)=>Row(
    children: [
      CircleAvatar(
        child: Text(
          "${user.id}",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.white,
          ),
        ),
        backgroundColor: user.color,
      ),
      SizedBox(
        width: 10,
      ),
      Expanded(
        child: Container(
          padding: EdgeInsetsDirectional.only(start: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadiusDirectional.circular(40),
              border: Border.all(
                  color: Colors.black,
                  width: 2
              )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "${user.name}",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "${user.number}",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      )
    ],
  );
}
