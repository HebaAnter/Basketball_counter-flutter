import 'package:flutter/material.dart';

void main() {
  runApp(MyWidget());
}

class MyWidget extends StatefulWidget {
  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int Apoints = 0;

  int Bpoints = 0;

  void addonepoint() {}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.pink,
              title: Text('Points Counter'),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(children: [
                        Text(
                          'Team A',
                          style: TextStyle(fontSize: 30),
                        ),
                        Text(
                          '$Apoints',
                          style: TextStyle(fontSize: 80),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.pink, minimumSize: Size(110, 60)),
                          onPressed: () {
                            setState(() {
                              Apoints++;
                            });
                            print(Apoints);
                          },
                          child: Text(
                            'Add 1 point',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.pink, minimumSize: Size(110, 60)),
                          onPressed: () {
                            setState(() {
                              Apoints = Apoints + 2;
                            });
                            print(Apoints);
                          },
                          child: Text(
                            'Add 2 points',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.pink, minimumSize: Size(110, 60)),
                          onPressed: () {
                            setState(() {
                              Apoints = Apoints + 3;
                            });
                            print(Apoints);
                          },
                          child: Text(
                            'Add 3 points',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                      ]),
                      SizedBox(
                        height: 490,
                        child: VerticalDivider(
                          color: Colors.black,
                          thickness: 3,
                          indent: 65,
                        ),
                      ),
                      Column(children: [
                        Text(
                          'Team B',
                          style: TextStyle(fontSize: 30),
                        ),
                        Text(
                          '$Bpoints',
                          style: TextStyle(fontSize: 80),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.pink, minimumSize: Size(110, 60)),
                          onPressed: () {
                            setState(() {
                              Bpoints++;
                            });
                            print(Bpoints);
                          },
                          child: Text(
                            'Add 1 point',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.pink, minimumSize: Size(110, 60)),
                          onPressed: () {
                            setState(() {
                              Bpoints = Bpoints + 2;
                            });
                            print(Bpoints);
                          },
                          child: Text(
                            'Add 2 points',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.pink, minimumSize: Size(110, 60)),
                          onPressed: () {
                            setState(() {
                              Bpoints = Bpoints + 3;
                            });
                            print(Bpoints);
                          },
                          child: Text(
                            'Add 3 points',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ])
                    ]),
                SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.pink, minimumSize: Size(110, 60)),
                  onPressed: () {
                    setState(() {
                      Apoints = 0;
                      Bpoints = 0;
                    });
                  },
                  child: Text(
                    'Reset',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Spacer(
                  flex: 1,
                ),
              ],
            )));
  }
}
