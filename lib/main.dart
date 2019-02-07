import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SICApp',
      theme: ThemeData(
        primaryColor: Color(0xFF00538f),
        accentColor: Color(0xFF78b41e),
        primarySwatch: Colors.indigo,
      ),
      home: MyHomePage(title: 'SICApp'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/img/CUValles.jpg')
                )
              ),
              currentAccountPicture: CircleAvatar(
                child: Icon(Icons.account_circle, size: 68,),
              ),
              accountName: Text('Juanito'),
              accountEmail: Text('puto@caca.com'),
            ),
            ListTile(
              leading: Icon(Icons.chat),
              title: Text('Item 1'),
              onTap: () {
                // Update the state of the app
                // ...
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.check),
              title: Text('Item 2'),
              onTap: () {
                // Update the state of the app
                // ...
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text("Home page"),
      ),
    );
  }
}
