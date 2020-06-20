import 'package:awesome_app/screens/hompage_screen.dart';
import 'package:awesome_app/utils/constants.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static const routeName = '/login';
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<
      FormState>(); //formKey helps to retrieve the data and validate the data
  final _usernameControler = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset(
            'assets/man.jpg',
            fit: BoxFit.cover,
            color: Colors.black.withOpacity(0.7),
            colorBlendMode: BlendMode.darken,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: SingleChildScrollView(
                child: Form(
                    key: formKey,
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            TextFormField(
                              controller: _usernameControler,
                              decoration: InputDecoration(
                                labelText: 'Username',
                                hintText: 'Enter the email',
                              ),
                              keyboardType: TextInputType.emailAddress,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            TextFormField(
                              controller: _passwordController,
                              decoration: InputDecoration(
                                labelText: 'Password',
                                hintText: 'Enter the password',
                              ),
                              keyboardType: TextInputType.text,
                              obscureText: true,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            RaisedButton.icon(
                              onPressed: () {
                                Constants.prefs.setBool("loggedIn", true);
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (context) => HomePage()));
                                Navigator.pushReplacementNamed(
                                    context, HomePage.routeName);
                              },
                              icon: Icon(Icons.thumb_up),
                              label: Text('Sign in'),
                              color: Colors.yellow[600],
                            )
                          ],
                        ),
                      ),
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
