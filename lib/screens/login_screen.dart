import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  'assets/images/login.png',
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Welcome',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                            hintText: 'Enter username',
                            label: Text('Username')),
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                            hintText: 'Enter password',
                            label: Text('Password')),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, MyRoutes.homeRoute);
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(150, 40),
                        ),
                        child: const Text('Login'),
                      )
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
