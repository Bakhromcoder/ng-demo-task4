

 import 'package:flutter/material.dart';

class LogInPage extends StatefulWidget {
   const LogInPage({super.key});

   @override
   State<LogInPage> createState() => _LogInPageState();
 }

 class _LogInPageState extends State<LogInPage> {

   final _formKey = GlobalKey<FormState>();
   String? _name;
   String? _email;
   String? _password;



   _doSignIn(){
     if(_formKey.currentState!.validate()){
       _formKey.currentState!.save();
       print("Welcome to home");
     }
   }

   @override
   Widget build(BuildContext context) {
     return Scaffold(
          body: Form(
            child: Column(
              children: [
                Expanded(child: Container()),
                  Text('Instagram', style: TextStyle(fontSize: 25),),
                Padding(padding: EdgeInsets.symmetric(horizontal: 30),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Name',
                    ),
                    validator: (input) => !input!.contains(toString()) ? "Please enter your name":null,
                    onSaved: (input)=> _name=input,
                  ),
                ),
                Padding(padding: EdgeInsets.symmetric(horizontal: 30),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "Email",
                    ),
                    validator:(input) => !input!.contains("@") ? "Please enter a valid email": null,
                    onSaved: (input) => _email = input,
                  ),
                ),
                Padding(padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Password',
                    ),
                    validator:(input) => input!.length<6 ? "Must be at least 6 characters": null,
                    onSaved: (input) => _password = input,
                    obscureText: true,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(25),
                  width: double.infinity,
                  child: MaterialButton(
                    onPressed: (){
                      _doSignIn();
                    },
                    textColor: Colors.white,
                    color: Colors.blue,
                    child: Text("Sign In"),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Alreayd have an account? "),
                    SizedBox(width: 30,),
                    GestureDetector(
                      onTap: (){
                        print("Text clicked");
                      },
                      child: Text("Log in ", style: TextStyle(fontWeight: FontWeight.w700),),
                    ),
                  ],
                ),
                Expanded(child: Container())

              ],

            ),
          ),
     );
   }
 }
