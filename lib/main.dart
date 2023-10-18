import 'package:flutter/material.dart';



void main() {

  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.lightBlue
      ),
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          const Image(
            image: AssetImage("lib/assets/alpaca.png"),
            fit: BoxFit.cover,
            color: Colors.blue,
            colorBlendMode: BlendMode.difference,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const FlutterLogo(
                size: 120.00,
              ),
              Form(
                child: Theme(
                  data: ThemeData(
                    brightness: Brightness.dark,
                    primarySwatch: Colors.teal,
                    inputDecorationTheme: const InputDecorationTheme(
                      labelStyle: TextStyle(
                        color: Colors.amberAccent,
                        fontSize: 20.0
                      )
                    )
                  ),
                  child: Container(
                    padding: EdgeInsets.all(25.0),
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: "Enter email:"
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                        TextFormField(
                            decoration: const InputDecoration(
                              labelText: "Enter password:"
                            ),
                            keyboardType: TextInputType.text,
                            obscureText: true,
                          ),
                      ],
                    ),
                  ),
                )
              )
            ],
          )
        ],
      ),
    );
  }
}