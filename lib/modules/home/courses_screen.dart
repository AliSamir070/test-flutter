import 'package:flutter/material.dart';
import 'package:test_flutter/android_component.dart';
import 'package:test_flutter/modules/home/data.dart';

class CoursesScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    List<Data> listOfData = [
      Data('assets/images/Android.jpeg', 'Android'),
      Data('assets/images/thinking.png', 'IOS'),
      Data('assets/images/thinking.png', 'Full Stack'),
      Data('assets/images/thinking.png', 'Full Stack'),
      Data('assets/images/thinking.png', 'Full Stack'),
      Data('assets/images/thinking.png', 'Full Stack'),
      Data('assets/images/thinking.png', 'Full Stack'),
    ];
    List<Widget> listOfComponent = [
      AndroidComponent(listOfData[0].path, listOfData[0].title),
      AndroidComponent(listOfData[1].path, listOfData[1].title),
      AndroidComponent(listOfData[2].path, listOfData[2].title),
      AndroidComponent(listOfData[2].path, listOfData[2].title),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Route"),
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 150,
              childAspectRatio: 1/2.9,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20
          ),
          itemBuilder: (context,index){
            return AndroidComponent(listOfData[index].path, listOfData[index].title);
          },
          itemCount: listOfData.length,
      ),
    );
  }
}
