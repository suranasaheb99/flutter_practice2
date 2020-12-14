import 'package:flutter/material.dart'; //simple material app or uske bhot saree components deta hai


//stateful: jinhe hm dynamically change kr pate hai runtime pe.
//stateless: ise change nai kar sakte.
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      title: "StateFull",
      home: homepage(),
    );
  }
}

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  int datatochange = 0;
  void datachange(){
    setState(() {
      datatochange += 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AppBar"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
                padding:const EdgeInsets.all(20.0),
              child: Text(
                "$datatochange",
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            RaisedButton(
                onPressed: datachange,
              padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
              splashColor: Colors.amber[700],
              child: Text(
                "Click Me",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              //color: Colors.cyan,

                ),
          ],
        ),
      ),
    );
  }
}



//-------------------------------------------STATELESS ------------------------------------
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "Sample app",
//       theme: ThemeData(
//         primarySwatch: Colors.amber,
//       ),
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text(
//               "My app",
//           style: new TextStyle(
//               fontFamily: "Times New Roman",
//             fontSize: 24,
//             fontWeight: FontWeight.bold,
//           ),
//             //softWrap: ya true ya false----hide krme kaam aata hai,
//           ),
//         ),
//         //BUTTONS
//         // FLAT BUTTON
//         // RAISE BUTTON
//         // MATERIAL BUTTOM  -- HIGHLY CUSTOMIZABLE
//         // ICON BUTTON
//         body: Column(
//           children: <Widget>[
//             RaisedButton(
//               onPressed: (){},
//               splashColor: Colors.cyan,
//               child: Text(
//                 "Click Me"
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

