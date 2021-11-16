import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  Color formColor = HexColor('#080F5B').withOpacity(0.1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            width: MediaQuery.of(context).size.width*0.8,
            height:600,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
              children: [
                Image.asset('assets/images/chimera.png'),
                TextFormField(
                  cursorColor: HexColor('#f8ae4b'),
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'E-mail',
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: HexColor('#f8ae4b'))),
                  ),
                ),
                TextFormField(
                  obscureText: true,
                  textAlign: TextAlign.center,
                  cursorColor: HexColor('#f8ae4b'),
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Password',
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: HexColor('#f8ae4b'))),
                  ),
                ),
                TextButton.icon(
                  onPressed: null,
                  icon: const Icon(Icons.login, color: Colors.white,),
                  label: const Text('Login',style: TextStyle(color: Colors.white),),
                  style:
                      TextButton.styleFrom(
                      backgroundColor: HexColor('#f8ae4b'),
                      fixedSize: const Size(150, 22),
                      ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
