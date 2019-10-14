import 'package:flutter/cupertino.dart';
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
    if (MediaQuery.of(context).orientation == Orientation.portrait){ //portrait
      return Scaffold(
          //backgroundColor: Colors.white,
          body:  Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget> [
                          Flexible(
                              flex: 1,
                              fit: FlexFit.tight,
                              child: Image.asset('assets/recipie.jpg',fit: BoxFit.cover,)),
                          SizedBox(height:20),
                           Flexible(
                             flex: 1,
                             child: Container(

                               padding: const EdgeInsets.all(5.0),

                               child: Column(
                                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                                 children: <Widget>[
                                               Flexible(
                                                  flex: 1,
                                                   fit: FlexFit.tight,
                                                   child: Text('StrawBerry Pavlova',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),textAlign: TextAlign.center,)),
                                               //SizedBox(height:10),
                                               Flexible(

                                                flex: 3,
                                                  fit: FlexFit.loose,
                                                  child: Text('Pavlova is a meringue-based dessert named after the Russian ballerina Anna Pavlova. Pavlova features a crisp crust and soft, light inside, topped with fruit and whipped cream.',style: TextStyle(fontSize: 15),textAlign: TextAlign.center,)),
                                                //SizedBox(height:20),
                                                Flexible(
                                               flex: 1,
                                                fit: FlexFit.tight,
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: <Widget>[
                                                    Icon(Icons.star),
                                                    Icon(Icons.star),
                                                    Icon(Icons.star),
                                                    Icon(Icons.star),
                                                    Icon(Icons.star),
                                                    SizedBox(width:10),
                                                    Text('170 Reviews'),],
                                                ),
                                              ),
                                              //SizedBox(height:20),
                                              Flexible(
                                               flex: 2,
                                               fit: FlexFit.tight,
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                                                  children: <Widget>[
                                                    Column(

                                                      children: <Widget>[
                                                        Icon(Icons.check_circle_outline,color: Colors.green,),
                                                        SizedBox(height:5),
                                                        Text('PREP'),
                                                        SizedBox(height:10),
                                                        Text('25 min'),

                                                      ],
                                                    ),
                                                    Column(

                                                      children: <Widget>[
                                                        Icon(Icons.timer,color: Colors.green,),
                                                        SizedBox(height:5),
                                                        Text('COOK'),
                                                        SizedBox(height:10),
                                                        Text('1 hr'),

                                                      ],
                                                    ),
                                                    Column(
                                                      children: <Widget>[
                                                      Icon(Icons.person_outline,color: Colors.green,),
                                                      SizedBox(height:5),
                                                      Text('FEEDS'),
                                                      SizedBox(height:10),
                                                      Text('4-6')
                                                    ]),


                                                  ],
                                                ),
                                              ),
                          ]
                               ),
                             ),
                           ),
                        ],
                          ),
                        );




    }
    else               //LANDSCAPE
      {
      return Scaffold(
         // backgroundColor: Colors.white,
          body: Row(
                 crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[

                    Flexible(
                      flex: 1,
                      child: Container(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(height: 10,),
                          Text('StrawBerry Pavlova',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign: TextAlign.center,),
                              Text('Pavlova is a meringue-based dessert named after the Russian ballerina Anna Pavlova. Pavlova features a crisp crust and soft, light inside, topped with fruit and whipped cream ',style: TextStyle(fontSize: 17),textAlign: TextAlign.center,),
                              Wrap(
                                 alignment: WrapAlignment.center,

                                  children: <Widget>[
                                    Icon(Icons.star),
                                    Icon(Icons.star),
                                    Icon(Icons.star),
                                    Icon(Icons.star),
                                    Icon(Icons.star),
                                    Text('170 Reviews'),
                                  ],
                                ),


                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                                children: <Widget>[
                                  Column(

                                    children: <Widget>[
                                      Icon(Icons.check_circle_outline,color: Colors.green,),
                                      SizedBox(height:5),
                                      Text('PREP'),
                                      SizedBox(height:10),
                                      Text('25 min'),

                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Icon(Icons.timer,color: Colors.green,),
                                      SizedBox(height:5),
                                      Text('COOK'),
                                      SizedBox(height:10),
                                      Text('1 hr'),

                                    ],
                                  ),
                                  Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: <Widget>[
                                    Icon(Icons.person_outline,color: Colors.green,),
                                    SizedBox(height:5),
                                    Text('FEEDS'),
                                    SizedBox(height:10),
                                    Text('4-6')
                                  ]),


                                ],
                              ),
                            ]
                        ),
                      ),
                    ),
                    Flexible(
                        flex: 2,
                        child: Image.asset('assets/recipie.jpg',fit: BoxFit.cover,))
                  ]
          )
      );
      }
  }
}




                  /*
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(8.0,15.0,8.0,15.0),
                        child: Container(

                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.cyanAccent, width: 5.0)), //BLUE BORDER
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,//MAIN COLUMN
                            children: <Widget>[
                              SizedBox(height:5),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.cyan[100],
                                      border: Border.all(color: Colors.black, width: 2.0)),

                                  child: Row(
                                    children: <Widget>[
                                      Flexible(
                                          fit:FlexFit.tight,
                                          child: Text('StrawBerry Pavlova',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign: TextAlign.center,)),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height:10),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.cyan[100],
                                      border: Border.all(color: Colors.black, width: 2.0)),
                                  child: Row(
                                    children: <Widget>[Flexible(
                                        fit:FlexFit.tight,
                                        child: Text('Pavlova is a meringue-based dessert named after the Russian ballerine Anna Pavlova.Pavlova features a crisp crust and soft,light inside,topped with fruit and whipped cream ',style: TextStyle(fontSize: 17),textAlign: TextAlign.center,)),],
                                  ),
                                ),
                              ),
                              SizedBox(height:10),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.cyan[100],
                                      border: Border.all(color: Colors.black, width: 2.0)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: <Widget> [Container(
                                      child:
                                      Row(
                                        children: <Widget>[
                                          Icon(Icons.star),
                                          Icon(Icons.star),
                                          Icon(Icons.star),
                                          Icon(Icons.star),
                                          Icon(Icons.star),],
                                      )
                                    ),Container(
                                      child: Text('170 Reviews'),
                                            )
                                   // mainAxisAlignment: MainAxisAlignment.spaceEvenly,



                                 ] ),
                                ),
                              ),
                              SizedBox(height:20),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.cyan[100],
                                      border: Border.all(color: Colors.black, width: 2.0)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                                    children: <Widget>[
                                      Column(

                                        children: <Widget>[
                                          Icon(Icons.kitchen),
                                          SizedBox(height:5),
                                          Text('PREP'),
                                          SizedBox(height:10),
                                          Text('25 min'),

                                        ],
                                      ),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: <Widget>[
                                          Icon(Icons.timer),
                                          SizedBox(height:5),
                                          Text('COOK'),
                                          SizedBox(height:10),
                                          Text('1 hr'),

                                        ],
                                      ),
                                      Column(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: <Widget>[
                                        Icon(Icons.restaurant),
                                        SizedBox(height:5),
                                        Text('FEEDS'),
                                        SizedBox(height:10),
                                        Text('4-6')
                                      ]),


                                    ],
                                  ),
                                ),
                              ),



                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                        flex:2,
                        child: Image.asset('assets/recipie.jpg',fit: BoxFit.cover,))  ]

              )



      );
// is landscape

    }

  }
}
*/