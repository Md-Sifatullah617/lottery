import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int x = 4;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lottery App'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Text('Your lottery winning number is $x')),
            SizedBox(height: 20,),
            Container(
              height: 250,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(.3),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Icon(Icons.error, color: Colors.red, size: 35,),
                   SizedBox(height: 15,),
                   Text('Better luck next time, yor number is $x try again')
                 ],
                ),
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){
          
        },
        child: Icon(Icons.refresh),
        ),
      ),
    );
  }
}


