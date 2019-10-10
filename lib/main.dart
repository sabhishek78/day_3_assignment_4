import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  //We are making custom stateless widget here
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(

          child: Container(

              decoration: BoxDecoration(
                  border: Border.all(color: Colors.red, width: 5.0)),
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: <Widget>[
                          SizedBox(height:40),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black, width: 2.0)),
                            child: Row(
                              children: <Widget>[
                                Flexible(
                                    fit:FlexFit.tight,
                                       child: Text('StrawBerry Pavlova',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20))),
                              ],
                            ),
                          ),
                          SizedBox(height:20),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black, width: 2.0)),
                            child: Row(
                              children: <Widget>[Flexible(
                                  fit:FlexFit.tight,
                                  child: Text('Pavlova is a meringue-based dessert named after the Russian ballerine Anna Pavlova.Pavlova features a crisp crust and soft , light inside , topped with fruit and whipped cream ')),],
                            ),
                          ),
                          SizedBox(height:20),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black, width: 2.0)),
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.star),
                                Icon(Icons.star),
                                Icon(Icons.star),
                                Icon(Icons.star),
                                Icon(Icons.star),
                                Text('170 Reviews'),
                              ],
                            ),
                          ),
                          SizedBox(height:20),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black, width: 2.0)),
                            child: Column(

                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Icon(Icons.star),
                                    Icon(Icons.star),
                                    Icon(Icons.star),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Text('Prep'),
                                    Text('Cook'),
                                    Text('Feeds')
                                  ],
                                ),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: <Widget>[
                                  Text('25 min'),
                                  Text('1 hr'),
                                  Text('4-6')
                                ]),


                              ],
                            ),
                          ),



                        ],
                      ),
                    ),
        Expanded(
            flex:2,
            child: Image.asset('assets/recepie.jpg',fit: BoxFit.cover,))  ]

      )

              )
    )

    );
  }
}
