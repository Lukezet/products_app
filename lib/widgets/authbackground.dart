import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AuthBackground extends StatelessWidget {
  const AuthBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade300,
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          _BackgroundBox()
        ],
      ),
    );
  }
}
class _BackgroundBox extends StatelessWidget {
  const _BackgroundBox({super.key});

  @override
  Widget build(BuildContext context) {
    
    final size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: size.height * 0.4,
      decoration: _purpleBackground(),
      child: Stack(
        children: [
         Positioned(child:_Bubble(),top: 90,left: 30) ,
         Positioned(child:_Bubble(),top: -40,left: -10) ,
         Positioned(child:_Bubble(),bottom: -20,left: 80) ,
         Positioned(child:_Bubble(),bottom: -50,right: 40) ,
         Positioned(child:_Bubble(),top: 20,right: 20) ,

        ],
      ),

    );
  }

  BoxDecoration _purpleBackground() => BoxDecoration(
    gradient: LinearGradient(
      colors:[
        Color.fromRGBO(63, 63, 156, 1),
        Color.fromRGBO(90, 70, 178, 1)
      ] )
  );
}

class _Bubble extends StatelessWidget {
  const _Bubble({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Color.fromRGBO(255, 255, 255, 0.05)
      ),
    );
  }
}