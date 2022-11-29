import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  static String routeName = "SecondScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Second Screen',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                child: Text(
                  'Back'
                )
            )
          ],
        ),
      ),
    );
  }
}
