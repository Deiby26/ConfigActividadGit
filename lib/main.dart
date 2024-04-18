import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Facebook",
            style: TextStyle(
                fontFamily: 'Arial',
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 150,
                  width: 150,
                  child: const Image(
                      image: NetworkImage(
                          'https://upload.wikimedia.org/wikipedia/commons/c/cd/Facebook_logo_%28square%29.png')),
                ),
                const Text(" "),
                Form(
                  child: Column(
                    children: [
                      SizedBox(
                        width: 400, 
                        child: TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Ingrese su nombre',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}