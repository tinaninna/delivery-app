import 'package:delivery_app/components/my_button.dart';
import 'package:delivery_app/components/my_textfield.dart';
import 'package:delivery_app/pages/home_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {

  final void Function()? onTap;

  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageSatate();

}
class _LoginPageSatate extends State<LoginPage>{
  //text editing cpntrollers
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  
  // login method
  void login(){
    /*
    
    fill out authentication here
    
    */

    // navigation to home page
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const HomePage() ,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Icon(
              Icons.lock_person_rounded,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),

            const SizedBox(height: 25,),

            //message app slogan
            Text(
              "Food Delivery App",
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),

            const SizedBox(height: 25,),

            //email textfield
            MyTextfield(
              controller: emailController, 
              hintText: "Email",
              obsecureText: false,
            ),

            const SizedBox(height: 25,),

            //password textfield
            MyTextfield(
              controller: passwordController, 
              hintText: "Password",
              obsecureText: true,
            ),

            const SizedBox(height: 25,),

            //sign in
            MyButton(
              text: "Sign In", 
              onTap: login,
            ),

            const SizedBox(height: 25,),

            //not a memeber? register now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Not a member?",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
                const SizedBox(width: 4,),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    "Register now",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight:  FontWeight.bold,
                    ),
                  ) ,
                )
              ],
            )


          ],
        ),
      ),

     );
  }
}