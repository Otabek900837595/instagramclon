import 'package:flutter/material.dart';
import 'package:inatagramclonetasks/pages/signin_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromRGBO(183, 53, 132, 1),
                Color.fromRGBO(131, 58, 180, 1),
              ]
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Instagram", style: TextStyle(color: Colors.white, fontSize: 45, fontFamily: "billabong"),),
                  SizedBox(height: 20,),
                  //#fullname
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    height: 50,
                    padding: EdgeInsets.only(left: 10, right: 10),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: "Fullname",
                        border: InputBorder.none,
                        hintStyle:
                        TextStyle(fontSize: 17, color: Colors.white54),
                      ),
                    ),
                  ),
                  //#email
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    height: 50,
                    padding: EdgeInsets.only(left: 10, right: 10),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: "Email",
                        border: InputBorder.none,
                        hintStyle:
                        TextStyle(fontSize: 17, color: Colors.white54),
                      ),
                    ),
                  ),
                  //#password
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    height: 50,
                    padding: EdgeInsets.only(left: 10, right: 10),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: TextField(
                      obscureText: true,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: "Password",
                        border: InputBorder.none,
                        hintStyle:
                        TextStyle(fontSize: 17, color: Colors.white54),
                      ),
                    ),
                  ),
                  //#confirm
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    height: 50,
                    padding: EdgeInsets.only(left: 10, right: 10),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: TextField(
                      obscureText: true,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: "Confirm password",
                        border: InputBorder.none,
                        hintStyle:
                        TextStyle(fontSize: 17, color: Colors.white54),
                      ),
                    ),
                  ),
                  // Sign in
                  Container(
                      margin: EdgeInsets.only(top: 10),
                      height: 50,
                      padding: EdgeInsets.only(left: 10, right: 10),
                      decoration: BoxDecoration(
                          color: Colors.white38,
                          borderRadius: BorderRadius.circular(7)),
                      child: MaterialButton(
                        onPressed: (){},
                        minWidth: double.infinity,
                        child: Text("Sign Up", style: TextStyle(color: Colors.white),),
                      ),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don`t have an account?",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  TextButton(
                    onPressed: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignInPage(),));
                    },
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
