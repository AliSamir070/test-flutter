import 'package:flutter/material.dart';

class HomeScreen_2 extends StatelessWidget {
  static String routename = "HomeScreen";
  @override
  Widget build(BuildContext context) {
    HomeScreenArguments arguments = ModalRoute.of(context)?.settings.arguments as HomeScreenArguments;
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body:Column(
        children: [
          Text(arguments.email , style: TextStyle(fontSize: 30 , fontWeight: FontWeight.bold),),
          SizedBox(height: 20,),
          Text(arguments.password , style: TextStyle(fontSize: 30 , fontWeight: FontWeight.bold),),

        ],
      ),
    );
  }
}
class HomeScreenArguments{
  String email;
  String password;
  HomeScreenArguments(this.email , this.password);
}
