import 'package:clock_app/alarms.dart';
import 'package:clock_app/stopwatch.dart';
import 'package:flutter/material.dart';
//import'package:clock_app/alarms.dart' as clock;
import 'clock.dart' as clock;
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
    );
  }
}
int time = 10;
class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.white24,
        title: Text("Alarm Clock",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            clock.ClockView(),
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                      return ScaleTransition(
                        alignment: Alignment.center,
                        scale: Tween<double>(begin: 0.75, end: 1).animate(
                          CurvedAnimation(
                            parent: animation,
                            curve: Curves.easeInOutCirc,
                          ),
                        ),
                        child: child,
                      );
                    },
                    transitionDuration: Duration(seconds: 1),
                    pageBuilder: (BuildContext context,
                        Animation<double> animation,
                        Animation<double> secondaryAnimation) {
                      return alarms();
                    },
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.black,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 1), // changes position of shadow
                    ),
                  ],
                ),

                height: 100,
                width: 350,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Text("Alarms",
                          style: TextStyle(
                              color: Colors.white,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold,
                              fontSize: 30)),
                    ),
                    Icon(
                      Icons.access_time_rounded,
                      size: 40,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                /*gradient: LinearGradient(
                    colors: [Colors.black, Colors.black12],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),*/
                color: Colors.black,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 1), // changes position of shadow
                  ),
                ],
              ),
              height: 200,
              width: 350,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text("Timer",
                        style: TextStyle(
                            color: Colors.white,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            fontSize: 30)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        icon: Icon(Icons.add_circle_rounded),
                        iconSize: 40,
                        color: Colors.white,
                        tooltip: 'Increase duration by 1 second',
                        onPressed: () {
                          setState(() {
                            time++;
                          });
                        },
                      ),
                      Text("${time}",
                          style: TextStyle(
                              color: Colors.white,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold,
                              fontSize: 30)),
                      IconButton(
                        icon: Icon(Icons.remove_circle_rounded),
                        iconSize: 40,
                        color: Colors.white,
                        tooltip: 'Decrease duration by 1 second',
                        onPressed: () {
                          setState(() {
                            time--;
                          });
                        },
                      ),
                    ],
                  ),
                  TextButton(child: Text("Start ",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => stopwatch(timer: time,)),
                      );
                    },),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

