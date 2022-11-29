
import 'package:flutter/material.dart';

class contactScreen extends StatefulWidget {

  static const String routeName='contactScreen';

  @override
  State<contactScreen> createState() => _contactScreenState();
}

class _contactScreenState extends State<contactScreen> {
  String Name='';
  String phone='';

  bool isShow=false;


  @override
  Widget build(BuildContext context) {



    return Scaffold(
      backgroundColor: Color.fromRGBO(147, 145, 145, 1.0),
      appBar: AppBar(
        title: Text('contact Screen'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                  hintText: 'Enter Your Name Here',
                  suffixIcon: Icon(Icons.edit_note_sharp,color: Colors.blue,),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  filled: true,
                  fillColor: Colors.white
              ),
              style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),
              onChanged: (value) {
                Name=value;
              },
            ),
            SizedBox(height: 25,),
            TextFormField(
              decoration: InputDecoration(
                  hintText: 'Enter Your phone Number',
                  suffixIcon: Icon(Icons.call,color: Colors.blue,),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  filled: true,
                  fillColor: Colors.white
              ),
              style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),
              onChanged: (value) {
                phone=value;
              },
            ),
            SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      minimumSize:Size(100, 60),
                    ),
                    onPressed: (){
                      contactDataArgs(Name,phone);
                      setState(() {
                        isShow = true;
                      });
                    },
                    child: Text(
                      'Add',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)
                      ),
                      minimumSize:Size(100, 60),
                    ),
                    onPressed: (){
                      setState(() {
                        isShow=false;
                        Name='';
                        phone='';
                      });
                    }, child: Text(
                    'Delete',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                    ),
                  ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Visibility(
              visible: isShow,
              child: Container(
                width: double.infinity,height:100 ,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(40),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Name : $Name'
                        ,style: Theme.of(context).textTheme.headline1,
                      ),
                      Text('Phone $phone:'
                        ,style: Theme.of(context).textTheme.headline1,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Visibility(
              visible: isShow,
              child: Container(
                width: double.infinity,height:100 ,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(40),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Name : $Name'
                        ,style: Theme.of(context).textTheme.headline1,
                      ),
                      Text('Phone :$phone'
                        ,style: Theme.of(context).textTheme.headline1,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Visibility(
              visible: isShow,
              child: Container(
                width: double.infinity,height:100 ,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(40),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Name : $Name'
                        ,style: Theme.of(context).textTheme.headline1,
                      ),
                      Text('Phone :$phone'
                        ,style: Theme.of(context).textTheme.headline1,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class contactDataArgs {
  String Name;
  String phone;

  contactDataArgs(this.Name,this.phone);
}
