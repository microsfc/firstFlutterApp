import 'package:firstapp/src/sample_feature/sample_item_list_view.dart';
import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
  static const routeName = '/';

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            elevation: 8.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const FlutterLogo(size: 80.0),
                  const SizedBox(height: 16.0),
                  const Text(
                    'Welcome!',
                    style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 16.0),
                  TextFormField(
                    controller: usernameController,
                    keyboardType: TextInputType.name,
                    maxLength: 8,
                    maxLines: 1,
                    autofocus: true,
                    decoration: InputDecoration(
                      labelText: 'Username',
                      prefixIcon: Icon(Icons.person),
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  TextFormField(
                    controller: passwordController,
                    obscureText: true,
                    maxLength: 8,
                    maxLines: 1,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      prefixIcon: Icon(Icons.lock),
                    ),
                  ),
                  const SizedBox(height: 24.0),
                  ElevatedButton(
                    onPressed: () {
                      // Replace this with your authentication logic
                      String username = usernameController.text;
                      String password = passwordController.text;

                      if (username == 'demo' && password == 'password') {
                        // Successful login, navigate to the next screen or perform other actions
                        print('Login successful');
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: ((context) => SampleItemListView()))
                        );
                      } else {
                        // Failed login, show an error message or perform other actions
                        print('Login failed');
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 12.0),
                      foregroundColor: Colors.lightBlue
                    ),
                    child: Text(
                      'Login',
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  TextButton(
                    onPressed: () {
                      // Implement forgot password logic
                      print('Forgot password pressed');
                    },
                    child: Text('Forgot Password?'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}