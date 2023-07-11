import 'package:flutter/material.dart';
import 'package:integrate_3screens/Owners/Dashboard/Navigation.dart';
import 'Customers/Customer_Home.dart';
import 'Service_Staff/Service_staff_dashboard_75.dart';
import 'main.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  String _errorMessage = '';

  Future<bool> showExitPopup() async {
    return await showDialog(
      context: context,
      builder: (context) => AlertDialog(actionsAlignment: MainAxisAlignment.center,
        title: Center(child: Text('Exit App !',style: TextStyle(color: Colors.pinkAccent[400]),)),
        content: SizedBox(
            height: 50,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Column(
                  children: [
                    const Text('Do you Really Want to'),
                    const Text('Close the App ?')
                  ],
                ),
              ),

            )),
        actions:[
          Padding(
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: Text('No',style: TextStyle(color: Colors.green[700]),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () => Navigator.of(context).pop(true),
              child: Text('Yes',style: TextStyle(color: Colors.pinkAccent[400]),),
            ),
          ),
        ],
      ),
    )??false;
  }

  void _login() {
    String username = _emailController.text;
    String password = _passwordController.text;

    if (username == '111' && password == '111') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => CustomerHomeScreen()),
      );
    } else if (username == '222' && password == '222') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => StaffServiceDashboard()),
      );
    } else if (username == '333' && password == '333') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Navigation()),
      );
    } else if (username == '444' && password == '444') {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => MyHomePage()),
      );
    } else {
      setState(() {
        _errorMessage = 'Invalid username or password';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: showExitPopup,
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF48a3c2),
                Color(0xFF1A344F),
              ],
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 32.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.2),
                    labelText: 'User name',
                    labelStyle: TextStyle(color: Colors.white),
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.white,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 16.0),
                TextFormField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.2),
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Colors.white),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.white,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 8.0),
                Text(
                  _errorMessage,
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
                SizedBox(height: 24.0),
                ElevatedButton(
                  onPressed: _login,
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 18.0),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Color(0xFF2B4C6F),
                    padding: EdgeInsets.symmetric(horizontal: 64.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
