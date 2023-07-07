import 'package:flutter/material.dart';

import 'Owners/Owner_dashboard.dart';
import 'Service_Staff/Service_staff_dashboard_75.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  String _errorMessage = '';

  void _login() {
    String username = _emailController.text;
    String password = _passwordController.text;

    if (username == 'one' && password == 'one') {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Tester()),
      );
    } else if (username == 'two' && password == 'two') {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Tester()),
      );
    } else if (username == 'three' && password == 'three') {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Tester()),
      );
    } else if (username == 'four' && password == 'four') {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => StaffServiceDashboard()),
      );
    } else {
      setState(() {
        _errorMessage = 'Invalid username or password';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              Text(
                'Laundry App',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 64.0),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.2),
                  labelText: 'User',
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
    );
  }
}
