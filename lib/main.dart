import 'package:devcamptask1/models/data.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade400,
      title: const Text("Travel App"),
      ),
      body: SingleChildScrollView(
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start ,
          children: [
            Image.network(
              "https://www.wired.com/wp-content/uploads/2015/01/travelocity-expedia.jpg",
            ),
            const SizedBox(height: 20,),

        Container(
          height: 50,

          child: ListView(
                scrollDirection: Axis.horizontal,
            //mainAxisAlignment: MainAxisAlignment.spaceAround,

                children: [

                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Container(
            height: 50,
            width: 100,
            decoration: BoxDecoration(
                color: Colors.red.shade200,
                borderRadius: BorderRadius.circular(10)
            ),
            child: const Center(
              child: Text("Places", style:
              TextStyle(
                    fontSize: 18,
                    color: Colors.white
              ),),
            ),
          ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Container(
                      height: 50,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.red.shade200,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: const Center(
                        child: Text("Hotels", style:
                        TextStyle(
                            fontSize: 18,
                            color: Colors.white
                        ),),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Container(
                      height: 50,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.red.shade200,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: const Center(
                        child: Text("Attractions", style:
                        TextStyle(
                            fontSize: 18,
                            color: Colors.white
                        ),),
                      ),
                    ),
                  ),
]
    ),

            ),

            const SizedBox(height: 20,),
            const Padding(
              padding: EdgeInsets.only(left: 10, bottom: 10),
              child: Text("Popular Destination", style: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.bold),),
            ),
            GridView.builder(physics: ScrollPhysics(),
              shrinkWrap: true,
              itemCount: mydatalist.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount (

                childAspectRatio:2/2.2,
                  crossAxisCount: 2,
                  mainAxisSpacing: 2.0,
                  crossAxisSpacing: 10.0 ),
              itemBuilder: (BuildContext, index) {
                return Column(
                  children: [
                   // Image.network(mydatalist[index].cityImage, height: 200, width: 200,
                    //    fit: BoxFit.cover),
                    Container( height: 190, width: 190,
                        decoration: BoxDecoration(image:
                    DecorationImage(image:
                    NetworkImage (mydatalist[index].cityImage,
                        ),
                        fit: BoxFit.cover) ),
                    child: Center(child: Text(mydatalist[index].cityName, style: TextStyle(color: Colors.white, fontSize: 18,
                        fontWeight: FontWeight.bold) ,))
                    ),
                  ],
                );
              }
            )
          ],
        ),
      ),

    );
  }
}
