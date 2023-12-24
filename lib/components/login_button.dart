import 'package:flutter/material.dart';

class login_button extends StatelessWidget{
  
  final Function()? onTap;
  const login_button( {super.key,required this.onTap});

  @override
  Widget build(BuildContext){
    return GestureDetector(
      onTap: onTap,
      child: Container(
      padding: const EdgeInsets.all(25),
      margin: const EdgeInsets.symmetric(horizontal: 25),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(8), 
        ),
      child: const Center(
        child: Text(
          "LOG IN",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16,
            ),
        ),
      ),
    ),
    );
  }
}