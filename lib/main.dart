import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Column(
                children: <Widget>[
                  Text('Strawberry Pavlova'),
                  Text(
                      'Pavlova is a meringue based dessert named after the Russian ballerine Anna  Pavlova.Pavlova features a crisp crust and soft ,light inside, topped with fruit and whipped cream'),
                  Row(
                    children: <Widget>[
                  Icon(
                    Icons.star,
                    color: Colors.black,
                    //size: 24.0,
                    //semanticLabel: 'Text to announce in accessibility modes',
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.black,
                    //size: 24.0,
                    // semanticLabel: 'Text to announce in accessibility modes',
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.black,
                    //size: 24.0,
                    //semanticLabel: 'Text to announce in accessibility modes',
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.black,
                    //size: 24.0,
                    //semanticLabel: 'Text to announce in accessibility modes',
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.black,
                    //size: 24.0,
                    //semanticLabel: 'Text to announce in accessibility modes',
                  ),
                  Text('170 Reviews')
                    ],
                  ),
                ],
              ),
            ),

            Expanded(
                    child: FittedBox(
                      fit: BoxFit.contain, // otherwise the logo will be tiny
                      child: Image.network('https://www.thehindu.com/news/national/73kpsr/article26333229.ece/ALTERNATES/FREE_460/TH22KRASALMAN'),
                    ),
                  ),
          ],
        ),
      ),
    ),
  );
}
