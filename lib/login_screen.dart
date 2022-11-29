import 'package:flutter/material.dart';
import 'package:test_flutter/components.dart';

import 'home_screee_2.dart';

class Login_Screen_2 extends StatefulWidget {
  static String routename = "LoginScreen";
  @override
  State<Login_Screen_2> createState() => _Login_Screen_2State();
}

class _Login_Screen_2State extends State<Login_Screen_2> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  bool isObscured = false;
  bool contactVisible1 = false;
  String name1 = '';
  String phone1 = '';
  bool contactVisible2 = false;
  bool contactVisible3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Login Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Visibility(
              visible: contactVisible1,
              child:  LoginDefaultField(
                hintText: "Enter your email",
                myController: emailController,
                type: TextInputType.emailAddress,
                obscureText: false,
              ),

            ),
            SizedBox(height: 20,),
            LoginDefaultField(
                hintText: "Enter your password",
                myController: passwordController,
                type: TextInputType.visiblePassword,
                obscureText: isObscured,
                suffix: IconButton(
                    onPressed: (){
                      setState((){
                        isObscured = !isObscured;
                      });
                    },
                    icon: Icon(
                      isObscured?Icons.visibility_off:Icons.visibility
                    )),
            ),
            SizedBox(height: 40,),
            ElevatedButton(
                onPressed: (){
                  contactVisible1 = true;
                  setState((){});
                },
                child: Text("Sign In",style: TextStyle(fontSize: 30),))

          ],
        ),
      ),
    );
  }
}
