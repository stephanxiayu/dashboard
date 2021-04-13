import 'package:dashboard/home.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Hero(tag: "logo", child: Container(
              width: 100,
              child: Image.asset("lib/assets/m1.png"),
            )),
            Text("Manara Dashboard",
            style: TextStyle(fontSize: 40),),
           
          ],
        ),
         SizedBox(height: 50,),
            CustomButton(text: "Login",
            callback: (){Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Home()),
  );},),

           
            CustomButton(text: "Register",
            callback: (){},)

      ],)
      
    );
  }
}
class CustomButton extends StatelessWidget {
  final VoidCallback callback;
  final String text;

  const CustomButton({Key key, this.callback, this.text}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Material(
        elevation: 8.0,
        borderRadius: BorderRadius.circular(30),
        child:MaterialButton(onPressed: callback,
        minWidth: 300.0,
        height: 70,
        child: Text(text),
        )
        
         ,),
    );
  }
}