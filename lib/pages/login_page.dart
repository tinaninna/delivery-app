import 'package:delivery_app/components/my_button.dart';
import 'package:delivery_app/components/my_textfield.dart';
import 'package:delivery_app/pages/home_page.dart';
import 'package:delivery_app/services/auth/auth_services.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;

  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageSatate();
}

class _LoginPageSatate extends State<LoginPage> {
  // text editing controllers
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool _isLoading = false; //  loading flag

  // login method
  Future<void> login() async {
    final _authService = AuthServices();

    setState(() {
      _isLoading = true; // show loader
    });

    try {
      final userCredential = await _authService.signInWithEmailPassword(
        emailController.text.trim(),
        passwordController.text.trim(),
      );

      if (userCredential.user != null) {
        //  only navigate if login is successful
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const HomePage()),
        );
      } else {
        showDialog(
          context: context,
          builder: (context) => const AlertDialog(
            title: Text("Login failed"),
            content: Text("Invalid email or password."),
          ),
        );
      }
    } catch (e) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text("Login Error"),
          content: Text(e.toString()),
        ),
      );
    } finally {
      setState(() {
        _isLoading = false; // hide loader after attempt
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: SingleChildScrollView( 
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // logo
              Icon(
                Icons.lock_person_rounded,
                size: 100,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),

              const SizedBox(height: 25),

              // message app slogan
              Text(
                "Food Delivery App",
                style: TextStyle(
                  fontSize: 16,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),

              const SizedBox(height: 25),

              // email textfield
              MyTextfield(
                controller: emailController,
                hintText: "Email",
                obsecureText: false,
              ),

              const SizedBox(height: 25),

              // password textfield
              MyTextfield(
                controller: passwordController,
                hintText: "Password",
                obsecureText: true,
              ),

              const SizedBox(height: 25),

              // sign in button or loader
              _isLoading
                  ? const CircularProgressIndicator()
                  : MyButton(
                      text: "Sign In",
                      onTap: login,
                    ),

              const SizedBox(height: 25),

              // not a member? register now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Not a member?",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                  ),
                  const SizedBox(width: 4),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: Text(
                      "Register now",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
