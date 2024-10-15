import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mpower/Screens/dashboard.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  static const String routeName = '/login';

  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => Login(),
    );
  }

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  TextEditingController usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: Column(
         children: [
           Container(
             height: 400,
             child: Image.asset("assets/images/mpower.png", height: 200, width: 200,),
           ),
           Expanded(
              flex: 7,
              child: Container(
               width: MediaQuery.of(context).size.width,
               padding: EdgeInsets.all(15),
               decoration: BoxDecoration(
                 color: Colors.orangeAccent,
               ),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text("Login",style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold ),),
                   SizedBox(height: 10,),
                   TextFormField(
                     style: TextStyle(color: Colors.white),
                     keyboardType: TextInputType.number,
                     inputFormatters: <TextInputFormatter>[
                       FilteringTextInputFormatter.digitsOnly
                     ],
                     validator: (value) {
                       if (value == null || value.isEmpty) {
                         return "Enter Mobile Number";
                       } else {
                         if (value.length < 10) {
                           return "Enter Valid Mobile Number";
                         }
                       }
                     },
                     controller: usernameController,
                     decoration: new InputDecoration(
                       prefixIcon: Row(
                         mainAxisSize: MainAxisSize.min,
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: const [
                           Text(
                             '+91',
                             style: TextStyle(
                               color: Colors.white,
                               fontSize: 16
                             ),
                           ),
                         ],
                       ),


                       focusedBorder: OutlineInputBorder(
                         borderSide: BorderSide(color: Colors.white, width: 1.0),
                       ),
                       enabledBorder: OutlineInputBorder(
                         borderSide: BorderSide(color: Colors.white, width: 1.0),
                       ),
                       hintText: 'Mobile Number',
                       hintStyle: TextStyle(color: Colors.white)
                     ),
                   ),

                   SizedBox(height: 20,),

                   Text("We will send you an OTP to confirm your mobile number", style: TextStyle(color: Colors.white70,)),

                   SizedBox(height: 20,),

                   ElevatedButton(

                       style: ElevatedButton.styleFrom(
                           foregroundColor: Colors.orange),
                       onPressed: () {
                         Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                           return Dashboard();
                         }));
                       },
                       child: Container(

                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             // Icon(Icons.login),
                             SizedBox(
                               width: 20,
                             ),
                             Text("Continue")
                           ],
                         ),
                       )),

                 ],
               ),
             ),
           )

         ],

        )
      ),
    );
  }
}
