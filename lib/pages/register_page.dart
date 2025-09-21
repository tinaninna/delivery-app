import 'package:delivery_app/components/my_button.dart';
import 'package:delivery_app/components/my_textfield.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget{
  final void Function()? onTap;

  const RegisterPage({super.key, required this.onTap,});

  @override
  State<RegisterPage> createState ()  => _RegisterPageState();

}

class _RegisterPageState extends State<RegisterPage>{
  //text editing cpntrollers
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmpasswordController = TextEditingController();


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
              "Let's create an account for you",
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

            //confirming password textfield
            MyTextfield(
              controller: confirmpasswordController, 
              hintText: "Confirm password",
              obsecureText: true,
            ),

            const SizedBox(height: 25,),


            //sign in
            MyButton(
              text: "Sign up", 
              onTap: () {},
            ),

            const SizedBox(height: 25,),

            //already have an account login here
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "already have an account?",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
                const SizedBox(width: 4,),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    "Login now",
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