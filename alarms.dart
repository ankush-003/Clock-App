import 'package:flutter/material.dart';
import 'package:flutter_alarm_clock/flutter_alarm_clock.dart';

class alarms extends StatefulWidget {
  const alarms({Key? key}) : super(key: key);

  @override
  State<alarms> createState() => _alarmsState();
}

class _alarmsState extends State<alarms> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.white24,
        title: Text("Alarms",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  border: Border.all(color: Colors.redAccent),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.label,
                              color: Colors.white,
                              size: 24,
                            ),
                            SizedBox(width: 8),
                            Text(
                              "College",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'avenir'),
                            ),
                          ],
                        ),
                        Switch(
                          onChanged: (bool value) {},
                          value: true,
                          activeColor: Colors.red,
                        ),
                      ],
                    ),
                    Text(
                      'Mon-Fri',
                      style: TextStyle(
                          color: Colors.white, fontFamily: 'avenir'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "7:00",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'avenir',
                              fontSize: 30,
                              fontWeight: FontWeight.w700),
                        ),
                        IconButton(
                            icon: Icon(Icons.delete),
                            color: Colors.white,
                            onPressed: () {

                            }),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  border: Border.all(color: Colors.redAccent),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.label,
                              color: Colors.white,
                              size: 24,
                            ),
                            SizedBox(width: 8),
                            Text(
                              "Home",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'avenir'),
                            ),
                          ],
                        ),
                        Switch(
                          onChanged: (bool value) {},
                          value: false,
                          activeColor: Colors.red,
                        ),
                      ],
                    ),
                    Text(
                      'Sat-Sun',
                      style: TextStyle(
                          color: Colors.white, fontFamily: 'avenir'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "9:00",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'avenir',
                              fontSize: 30,
                              fontWeight: FontWeight.w700),
                        ),
                        IconButton(
                            icon: Icon(Icons.delete),
                            color: Colors.white,
                            onPressed: () {

                            }),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    // Add your onPressed code here!
                  },
                  backgroundColor: Colors.redAccent,
                  child: const Icon(Icons.add,
                  color: Colors.white,
                  size: 30),
                ),
              ],
            )
          ]
        ),
          ),
    );
  }
}

