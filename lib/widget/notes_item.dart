import 'package:flutter/material.dart';

class NotesItem extends StatelessWidget {
  const NotesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0 , left: 16 , right: 16),
      child: Container
      (
        // height: 100,
        // width: 100,
        decoration: BoxDecoration
        (
          color: Colors.orangeAccent,
          borderRadius: BorderRadius.circular(16),
      
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile
            (
              title: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text
                (
                  'Flutter Notes' , 
                  style: TextStyle
                  (
                    fontSize: 18 , 
                    fontWeight: FontWeight.bold , 
                    color: Colors.black
                  ),
                ),
              ),
            
              subtitle: Text
              (
                'Flutter is Google’s mobile app SDK for crafting high-quality native interfaces on iOS and Android in record time.',
                style: TextStyle
                (
                  fontSize: 14 , 
                  color: Colors.black.withValues(alpha: .7)
                ),
              ),
              trailing: IconButton
              (
                onPressed: (){}, 
                icon: Icon
                ( 
                  Icons.delete , 
                  color: Colors.black,
                ),
              ),
            ),
      
            Padding(
              padding: const EdgeInsets.only(right: 32.0 , bottom: 16 , top: 8),
              child: Text
                      (
              'may 21 , 2024' , 
              style: TextStyle
              (
                fontSize: 12 , 
                color: Colors.black.withValues(alpha: .7)
              ),
                      ),
            )
          ],
        ),
      ),
    );
  }
}