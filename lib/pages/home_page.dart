import 'package:flutter/material.dart';
import 'package:wallet/widgets/rounded.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xFF131313),
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top:0.0),
            child: Container(
              height: 0.4 * screenHeight,
              width: screenWidth,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Color.fromRGBO(250, 173, 61, 1),
                    Color.fromRGBO(242, 198, 19, 1)
                  ],
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      child: Column(
                        children: <Widget>[
                          Text(
                            'BALANCE',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 22.0,
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            "\$1,539.19",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 32.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            "Multi-coin wallet 1",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20.0,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 30.0),
                    Padding(
                      padding: EdgeInsets.only(right: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          RoundedButton(
                            iconData: LineAwesomeIcons.upload,
                            color: Colors.red[300],
                          ),
                          // SizedBox(width: 20.0),
                          RoundedButton(
                            iconData: LineAwesomeIcons.download,
                            color: Colors.green[300],
                          ),
                          // SizedBox(width: 20.0),
                          RoundedButton(
                            iconData: LineAwesomeIcons.shopping_cart,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
