import 'package:delivery_app/components/my_button.dart';
import 'package:delivery_app/components/my_textfield.dart';
import 'package:delivery_app/services/auth/auth_services.dart';
import 'package:flutter/material.dart';
import 'package:delivery_app/pages/home_page.dart'; 

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;

  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // text editing controllers
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmpasswordController = TextEditingController();

  bool _isLoading = false;

  // register method
  void register() async {
    final _authService = AuthServices();

    if (passwordController.text == confirmpasswordController.text) {
      setState(() {
        _isLoading = true;
      });

      try {
        final userCredential = await _authService.signUpWithEmailPassword(
          emailController.text.trim(),
          passwordController.text.trim(),
        );

        if (userCredential.user != null) {
          // Registration success → go to HomePage
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const HomePage()),
          );
        }
      } catch (e) {
        // display error
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text("Error"),
            content: Text(e.toString()),
          ),
        );
      } finally {
        setState(() {
          _isLoading = false;
        });
      }
    } else {
      // if passwords don't match
      showDialog(
        context: context,
        builder: (context) => const AlertDialog(
          title: Text("Passwords don't match!"),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: SingleChildScrollView( //  helps on small screens
          padding: const EdgeInsets.all(16.0),
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

              // message / app slogan
              Text(
                "Let's create an account for you",
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

              // confirm password textfield
              MyTextfield(
                controller: confirmpasswordController,
                hintText: "Confirm password",
                obsecureText: true,
              ),

              const SizedBox(height: 25),

              // sign up button
              _isLoading
                  ? const CircularProgressIndicator()
                  : MyButton(
                      text: "Sign up",
                      onTap: register, //  hooked up here
                    ),

              const SizedBox(height: 25),

              // already have an account login here
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                  ),
                  const SizedBox(width: 4),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: Text(
                      "Login now",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                        fontWeight: FontWeight.bold,
                      ),
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
