import "package:flutter/material.dart";

void main() => runApp(LoginPage());

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/loginimage.png"),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 20, 0, 50),
                    child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: 'Welcome to ',
                            style: TextStyle(fontSize: 25)),
                        TextSpan(
                            text: 'ECLIPSE',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25))
                      ], style: TextStyle(color: Colors.black)),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  TextFieldContainer(
                    TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: const InputDecoration(
                          labelText: 'Enter your email',
                          labelStyle: TextStyle(color: Colors.white)),
                    ),
                  ),
                  TextFieldContainer(
                    TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: const InputDecoration(
                        labelText: 'Enter your password',
                        labelStyle: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromRGBO(38, 0, 154, 80)),
                      onPressed: () {},
                      child: const Text('Login'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TextFieldContainer extends StatelessWidget {
  final TextField comp;
  const TextFieldContainer(this.comp);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
      margin: EdgeInsets.only(top: 30),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: Color.fromRGBO(38, 0, 154, 80),
        borderRadius: BorderRadius.circular(30),
      ),
      child: comp,
    );
  }
}
