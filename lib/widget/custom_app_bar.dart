import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final IconData icon;
  const CustomAppBar({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Row
    (
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: 
      [
        Text( title , style: TextStyle(fontSize: 30 , fontWeight: FontWeight.bold),),
        Container
        (
          height: 45,
          width: 45,
          decoration: BoxDecoration
          (
            color: Colors.white.withValues(alpha: .3),
            borderRadius: BorderRadius.circular(16),
    
          ),
          child: Icon(icon , color: Colors.white,),
        )
      ],
    );
  }
}