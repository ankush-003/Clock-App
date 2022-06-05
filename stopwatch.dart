import 'package:flutter/material.dart';
import 'package:neon_circular_timer/neon_circular_timer.dart';

class stopwatch extends StatefulWidget {
  stopwatch({Key? key, required this.timer}) : super(key: key);
  final CountDownController controller = new CountDownController();
  int timer;
  @override
  State<stopwatch> createState() => _stopwatchState();
}

class _stopwatchState extends State<stopwatch> {
  final CountDownController controller = new CountDownController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.white24,
        title: Text("Timer",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            NeonCircularTimer(
                onComplete: () {
                  setState((){
                    duration: widget.timer;
                  });
                  controller.pause();
                },
                width: 300,
                controller: controller,
                duration: widget.timer,
                strokeWidth: 20,
                isTimerTextShown: true,
                neumorphicEffect: true,
                outerStrokeColor: Colors.grey.shade100,
                innerFillGradient: LinearGradient(colors: [
                  Colors.redAccent.shade200,
                  Colors.redAccent.shade400
                ]),
                neonGradient: LinearGradient(colors: [
                  Colors.redAccent.shade200,
                  Colors.redAccent.shade400
                ]),
                strokeCap: StrokeCap.round,
                innerFillColor: Colors.black12,
                backgroudColor: Colors.grey.shade100,
                neonColor: Colors.red.shade900),
            Padding(
              padding: const EdgeInsets.all(40),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                        icon: Icon(Icons.play_arrow,
                        color: Colors.white,
                            size: 30),
                        onPressed: () {
                          controller.resume();
                        }),
                    IconButton(
                        icon: Icon(Icons.pause,
                        color: Colors.white,
                            size: 30),
                        onPressed: () {
                          controller.pause();
                        }),
                    IconButton(
                        icon: Icon(Icons.repeat,
                        color: Colors.white,
                          size: 30,
                        ),

                        onPressed: () {
                          controller.restart();
                        }),
                  ]),
            )
          ],
        ),
      ),
    );
  }
}