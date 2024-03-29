import 'package:flutter/material.dart';
import 'package:untitled/Widgets/custom_button.dart';
import '../Widgets/custom_button2.dart';
import '../constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 350,
            width: double.infinity,
            decoration: BoxDecoration(
              color: kPrimaryColor,
              image: DecorationImage(
                image: AssetImage('assets/International.png'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50),bottomRight: Radius.circular(50)),
                boxShadow: [BoxShadow(
                    color: Color.fromARGB(255, 150, 147, 147),
                    offset: Offset(-5.0,5.0),
                    blurRadius: 20,
                    spreadRadius: 0.5
                ),BoxShadow(
                  color: kPrimaryColor!,
                  blurRadius: 0.0,
                  spreadRadius: 3.0,

                )]
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 230),
              child: Center(
                child: Text(
                  'Smart Garage',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,

                  ),
                ),
              ),
            ),

          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 150,),
              CustomButton2(
                  text: 'Login',
                  onTap: () {
                    Navigator.pushNamed(context, 'loginPage');
                  }),
              CustomButton2(
                  text: 'Register',
                  onTap: () {
                    Navigator.pushNamed(context, 'registerPage');
                  }),

            ],

          ),
        ],
      )
    );
  }
}
