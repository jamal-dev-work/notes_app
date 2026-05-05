import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row
      (
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: 
        [
          const Text('Notes' , style: TextStyle(fontSize: 30 , fontWeight: FontWeight.bold),),
          Container
          (
            height: 45,
            width: 45,
            decoration: BoxDecoration
            (
              color: Colors.white.withValues(alpha: .3),
              borderRadius: BorderRadius.circular(16),
      
            ),
            child: const Icon(Icons.search , color: Colors.white,),
          )
        ],
      ),
    );
  }
}