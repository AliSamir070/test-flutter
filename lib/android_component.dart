import 'package:flutter/material.dart';

class AndroidComponent extends StatelessWidget {
  String imagePath;
  String buttonText;
  AndroidComponent(this.imagePath , this.buttonText);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Image.asset(imagePath,height: height*0.2,width: width*0.4,fit: BoxFit.cover,),

        Container(
          margin: EdgeInsets.only(top: 20),
          child: ElevatedButton(
              onPressed: (){
                print("Hello");
              },
              child: Text(buttonText),
            style: ElevatedButton.styleFrom(
              primary:  Colors.black,
              elevation: 20,
              padding: EdgeInsetsDirectional.all(20),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              )
            ),
          ),
        )
      ],
    );
  }
}

