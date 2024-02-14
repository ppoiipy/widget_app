import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(title: 'Home page'),
        '/emergencyCall': (context) => EmergencyCallPage(
              dataFromHomePage: '\n191\n1669',
            ),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, this.title = ""}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
      ),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
        children: <Widget>[
          Text(
            "TueanPhai", textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
          ),
          CircleAvatar(
            radius: 80,
            child: Image.network(
              "https://cdn-icons-png.flaticon.com/128/3135/3135715.png",
              width: 160,
              height: 160,
              fit: BoxFit.contain,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
          ),
          Text(
            "Users",
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          SizedBox(
            height: 20,
          ),
          Container( // News Button
            height: 50,
            width: MediaQuery.of(context).size.width * 0.1,
            child: TextButton(
              onPressed: () {
                print("News");
              },
              style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                backgroundColor: Colors.red[900],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    'https://cdn-icons-png.flaticon.com/512/2965/2965879.png',
                    width: 40, 
                    height: 40,
                  ),
                  Padding(padding: EdgeInsets.fromLTRB(10, 30.0, 0, 30.0),),
                  Text(
                    "News",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container( // Set User Location Button
            height: 50,
            width: MediaQuery.of(context).size.width * 0.1,
            child: TextButton(
              onPressed: () {
                print("Set User Location");
              },
              style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                backgroundColor: Color.fromARGB(255, 238, 67, 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    'https://cdn-icons-png.flaticon.com/512/7474/7474511.png',
                    width: 40, 
                    height: 40,
                  ),
                  Padding(padding: EdgeInsets.fromLTRB(10, 30.0, 0, 30.0),),
                  Text(
                    "Set User Location",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container( // Suggest Avoid Button
            height: 50,
            width: MediaQuery.of(context).size.width * 0.1,
            child: TextButton(
            onPressed: () {
              print("Suggest Avoid");
            },
            style: TextButton.styleFrom(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              backgroundColor: Color.fromARGB(255, 9, 109, 6),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  'https://cdn-icons-png.flaticon.com/512/10782/10782398.png',
                  width: 40, 
                  height: 40,
                ),
                Padding(padding: EdgeInsets.fromLTRB(10, 30.0, 0, 30.0),),
                Text(
                  "Suggest Avoid",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: <Widget>[
            Expanded( // Home Button
              child: TextButton(
                onPressed: () {
                  print("Home");
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      'https://cdn-icons-png.flaticon.com/128/619/619153.png',
                      width: 40, 
                      height: 40,
                    ),
                    Padding(padding: EdgeInsets.fromLTRB(10, 30.0, 0, 30.0),),
                    Text(
                      "Home",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
            Expanded( // Emergency Call Button
              child: TextButton(
                onPressed: () {
                  print("Emergency Call");
                  Navigator.pushNamed(context, '/emergencyCall');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      'https://cdn-icons-png.flaticon.com/512/2991/2991174.png',
                      width: 24, 
                      height: 24,
                    ),
                    Padding(padding: EdgeInsets.fromLTRB(10, 30.0, 0, 30.0),),
                    Text(
                      "Emergency Call",
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class EmergencyCallPage extends StatelessWidget {
  final String dataFromHomePage;

  EmergencyCallPage({required this.dataFromHomePage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Emergency Call Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                'Emergency Call Number:$dataFromHomePage',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24.0),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}