import 'package:flutter/material.dart';
import 'package:proj_1/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name="";
  bool changeButton=false;

  final _formkey=GlobalKey<FormState>();

  moveToHome(BuildContext context) async{
    if(_formkey.currentState!.validate()) {
      setState(() {
        changeButton=true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton=false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child:
      Form(
        key: _formkey,
        child: Column(
          children: [
            SizedBox(height: 25,),
            Image.asset(
              "assets/images/login_image.png",
              fit: BoxFit.cover,
            ),
            SizedBox(height: 10,),
            Text(
              "Welcome $name",
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Colors.teal
              ),
            ),
            // SizedBox(height: 20,),
           Padding(
             padding: const EdgeInsets.all(16.0),
             child: SingleChildScrollView(
               child: Column(
                 children: [
                 TextFormField(
                   decoration: InputDecoration(
                     hintText: "Enter username",
                     labelText: "Username",
                   ),
                   validator: (value){
                     if(value!.isEmpty){
                       return "Username cannot be blank";
                     }
                     return null;
                   },
                   onChanged: (value) {
                     name = value;
                     setState(() {});
                   }
                 ),
                 SizedBox(height: 12,),
                 TextFormField(
                   obscureText: true,
                   decoration: InputDecoration(
                     hintText: "Enter password",
                     labelText: "Password",
                   ),
                   validator: (value){
                     if(value!.isEmpty){
                       return "Password cannot be blank";
                     }
                     else if(value.length<8) {
                       return "Password is too short, must be atleast 8 characters";
                     }
                     return null;
                   },
                 ),
                   SizedBox(height: 15,),

                   Material(
                     color: Colors.teal,
                     borderRadius: BorderRadius.circular(changeButton ? 50 : 10),
                     child: InkWell(
                       // splashColor: Colors.red,
                       onTap: () => moveToHome(context),
                       child: AnimatedContainer(
                         duration: Duration(seconds: 1),
                         width: changeButton ? 50 : 150,
                         height: 45,
                         alignment: Alignment.center,
                         child: changeButton ?Icon(Icons.done,color: Colors.white,) : Text(
                           "Login",
                           style: TextStyle(
                               fontWeight: FontWeight.bold,
                               color: Colors.white,
                           fontSize: 20,
                           ),
                         ),
                         ),
                       ),
                     ),
               ],),
             ),
           )
          ],
        ),
      ));
  }
}
