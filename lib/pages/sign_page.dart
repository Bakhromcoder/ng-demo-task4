

  import 'package:flutter/material.dart';
import 'package:ng_demotask4/pages/home_page.dart';

class SignPage extends StatefulWidget {
  static const String? id ='sign_page';
    const SignPage({super.key});

    @override
    State<SignPage> createState() => _SignPageState();
  }

  class _SignPageState extends State<SignPage> {

   final _formKey = GlobalKey<FormState>();
   String? _email;
   String? _password;


   _doSignIn(){
     if(_formKey.currentState!.validate()){
       _formKey.currentState!.save();
       Navigator.pushNamed(context, HomePage.id);
       print("Welcome to home");
     }
   }


     @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(child: Container()),
              Text('Instagram', style: TextStyle(fontSize: 30),),
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
              Expanded(child: Container()),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account? "),
                   SizedBox(width: 30,),
                   GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, HomePage.id);
                      print("Text clicked");
                    },
                    child: Text("Sign up", style: TextStyle(fontWeight: FontWeight.w700),),
                  ),
                ],
              ),
              // Stack(children: [Column(children: [Text('data')],)],)
            ],
          ),
        ),
      );
    }
  }



































// import 'package:flutter/material.dart';
//
// class SigninPage extends StatefulWidget {
//   const SigninPage({super.key});
//
//   @override
//   State<SigninPage> createState() => _SigninPageState();
// }
//
// class _SigninPageState extends State<SigninPage> {
//
//   final _formKey = GlobalKey<FormState>();
//   String? _email;
//   String? _password;
//
//   _doSignIn(){
//     if(_formKey.currentState!.validate()){
//       _formKey.currentState!.save();
//       print("Welcome to home");
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Form(
//           key: _formKey,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 30),
//                 child: TextFormField(
//                   decoration: InputDecoration(
//                     labelText: "Email",
//                   ),
//                   validator:(input) => !input!.contains("@") ? "Please enter a valid email": null,
//                   onSaved: (input) => _email = input,
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 30,vertical: 5),
//                 child: TextFormField(
//                   decoration: InputDecoration(
//                     labelText: "Password",
//                   ),
//                   validator:(input) => input!.length<6 ? "Must be at least 6 characters": null,
//                   onSaved: (input) => _password = input,
//                   obscureText: true,
//                 ),
//               ),
//               MaterialButton(
//                 onPressed: (){
//                   _doSignIn();
//                 },
//                 textColor: Colors.white,
//                 color: Colors.blue,
//                 child: Text("Sign In"),
//               )
//             ],
//           ),
//         )
//     );
//   }
// }