import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GAON APP',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'GAON APP'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Apps',
              style: GoogleFonts.dmSans(fontSize: 20, color: Colors.green),
            ),
            InkWell(
              onTap: () => log("image is clicked"),
              onLongPress: () => log('Image is long pressed'),
              child: SizedBox(
                  width: 100,
                  height: 100,
                  child: Image.asset('assets/images/image1.png')),
            ),

            const Text(
              "Saim ",
              style: TextStyle(color: Colors.brown),
            ),

            // OutlinedButton(
            //   onPressed: () {
            //     log('Outlined Button pressed!');
            // //   },
            //   child: Container(
            //     decoration: BoxDecoration(
            //         color: Colors.brown,
            //         borderRadius: BorderRadius.circular(100)),
            //     height: 50,
            //     width: 250,
            //     child: const Center(
            //         child: Text(
            //             style: TextStyle(color: Colors.black),
            //             'Outlined Button')),
            //   ),
            // ),

            ElevatedButton(
                child: const Text('Elevated Button'),
                onPressed: () {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text('Saim is Don')));
                  showDialog(
                      context: context,
                      builder: (_) {
                        return Dialog(
                          child: Container(
                            height: 100,
                            width: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.black),
                            padding: EdgeInsets.all(15),
                            child: Center(
                              child: Text(
                                'It is a Gaon App which does nothing.',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        );
                      });
                }),

            // TextButton(
            //     onLongPress: () {
            //       log('Long pressed');
            //     },
            //     onPressed: () {
            //       log('Text Button Tapped');
            //     },
            //     child: const Text('Click here')),

            // // InkWell(
            //   onTap: () => print('button pressed!!!'),
            //   child: Container(
            //     child: Center(
            //       child: Text('Button'),
            //     ),
            //     width: double.infinity,
            //     height: 60,
            //     decoration: BoxDecoration(
            //         color: Colors.blue,
            //         borderRadius: BorderRadius.circular(20)),
            //     margin: EdgeInsets.symmetric(horizontal: 20),
            //   // ),
            // // )

            // This trailing comma makes auto-formatting nicer for build methods.
          ],
        ),
      ),
    );
  }
}
