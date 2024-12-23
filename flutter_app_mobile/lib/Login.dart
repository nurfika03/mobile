import 'package:flutter/material.dart';
import 'package:flutter_app_mobile/HomePage.dart';
import 'auth_widgets.dart';
import 'package:flutter_app_mobile/registrasi.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

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
                'Masuk',
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
                controller: _passwordController,
                labelText: 'Password',
                obscureText: true,
              ),
              SizedBox(height: 32.0),
              AuthButton(
                text: 'Masuk',
                onPressed: () {
                  String username = _usernameController.text;
                  String password = _passwordController.text;

                  // Validasi sederhana
                  if (username.isNotEmpty && password.isNotEmpty) {
                    // Navigasi ke halaman HomePage
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  } else {
                    // Tampilkan pesan error
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Harap isi username dan password')),
                    );
                  }
                },
              ),
              SizedBox(height: 16.0),
              AuthToggleText(
                primaryText: 'Belum memiliki akun?',
                secondaryText: 'Daftar',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegistrationPage()),
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
