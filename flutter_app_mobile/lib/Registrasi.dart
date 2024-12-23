import 'package:flutter/material.dart';
import 'auth_widgets.dart';
import 'package:flutter_app_mobile/login.dart';

class RegistrationPage extends StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(''),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Registrasi',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              AuthTextField(
                controller: _usernameController,
                labelText: 'Username',
              ),
              SizedBox(height: 16.0),
              AuthTextField(
                controller: _emailController,
                labelText: 'Email Address',
              ),
              SizedBox(height: 16.0),
              AuthTextField(
                controller: _passwordController,
                labelText: 'Password',
                obscureText: true,
              ),
              SizedBox(height: 16.0),
              AuthTextField(
                controller: _confirmPasswordController,
                labelText: 'Ulangi Password',
                obscureText: true,
              ),
              SizedBox(height: 32.0),
              AuthButton(
                text: 'Daftar',
                onPressed: () {
                  print('Username: ${_usernameController.text}');
                  print('Email: ${_emailController.text}');
                  print('Password: ${_passwordController.text}');
                  print('Confirm Password: ${_confirmPasswordController.text}');

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
              ),
              SizedBox(height: 16.0),
              AuthToggleText(
                primaryText: 'Sudah memiliki akun?',
                secondaryText: 'Masuk',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
