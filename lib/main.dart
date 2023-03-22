import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(0, 51, 102, 1),
        appBar: AppBar(
            backgroundColor: Color.fromRGBO(0, 51, 102, 1),
            title: Text(
              'Flutter AppBar 5',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'Arial',
                fontStyle: FontStyle.italic,
              ),
            ),
            leading: IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.white,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            ),
            actions: [
              IconButton(
                icon: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
              IconButton(icon: Icon(Icons.more_vert), onPressed: () {})
            ]),
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 8.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.home),
                onPressed: () {},
              ),
              SizedBox(width: 3),
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {},
              ),
              SizedBox(width: 5),
              ElevatedButton(
                child: Icon(Icons.add, color: Colors.black),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
                onPressed: () {},
              ),
              SizedBox(width: 5),
              IconButton(
                icon: Icon(Icons.notifications),
                onPressed: () {},
              ),
              SizedBox(width: 3),
              IconButton(
                icon: Icon(Icons.person),
                onPressed: () {},
              ),
            ],
          ),
        ),
        body: SafeArea(
            child: Stack(children: [
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.vertical(bottom: Radius.circular(10))),
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(244, 243, 243, 1),
                                borderRadius: BorderRadius.circular(15)),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  prefixIcon: Icon(
                                    Icons.search,
                                    color: Colors.black87,
                                  ),
                                  hintText: "Buraya yazabilirsiniz...",
                                  hintStyle: TextStyle(
                                      color: Colors.grey, fontSize: 15)),
                            ),
                          )
                        ]
                      )
                    )
                  ]
                )
              ]
            )
          )
       );
    }
  }
