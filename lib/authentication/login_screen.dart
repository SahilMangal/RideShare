import 'package:flutter/material.dart';
import 'package:rideshare_driver/authentication/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2D2727),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [

              const SizedBox(height: 40,),

              // Image
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Image.asset("images/logo5.png"),
              ),

              const SizedBox(height: 10,),

              //Login as a Driver Name
              const Text(
                "Login as a Driver",
                style: TextStyle(
                    fontSize: 26,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                ),
              ),

              //Email Field
              TextField(
                controller: emailTextEditingController,
                keyboardType: TextInputType.emailAddress,
                style: const TextStyle(
                  color: Color(0xFFB0BEC5),
                ),
                decoration: const InputDecoration(
                  labelText: "Email",
                  hintText: "Email",
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFff725e))
                  ),

                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)
                  ),
                  hintStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                  ),
                  labelStyle: TextStyle(
                    color: Color(0xFFff725e),
                    fontSize: 15,
                  ),


                ),
              ),

              //Password Field
              TextField(
                controller: passwordTextEditingController,
                keyboardType: TextInputType.text,
                obscureText: true,
                style: const TextStyle(
                  color: Color(0xFFB0BEC5),
                ),
                decoration: const InputDecoration(
                  labelText: "Password",
                  hintText: "Password",
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFff725e))
                  ),

                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)
                  ),
                  hintStyle: TextStyle(
                    color: Color(0xFFB0BEC5),
                    fontSize: 10,
                  ),
                  labelStyle: TextStyle(
                    color: Color(0xFFff725e),
                    fontSize: 15,
                  ),


                ),
              ),

              const SizedBox(height: 40,),

              // Login Button
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    //Navigator.push(context, MaterialPageRoute(builder: (c)=> CarInfoScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFFff725e),
                  ),
                  child: const Text(
                    "Login Now",
                    style: TextStyle(
                      color: Color(0xFF1a2e35),
                      fontSize: 18,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20,),

              //Already have an account? Login here
              TextButton(
                child: const Text(
                  "Don't have an account? Register Now!",
                  style: TextStyle(
                    color: Colors.white24,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (c)=> SignUpScreen()));
                },
              ),

            ],
          ),
        ),
      ),
    );
  }
}
