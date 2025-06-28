import 'package:flutter/material.dart';

class MY_Button extends StatelessWidget {
  final String title;
  final Color color;
  final VoidCallback onPress;

  MY_Button({Key? key, required this.title,
    this.color = const Color(0xffa5a5a5),
    required this.onPress

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded( // Keep Expanded to ensure proper button layout
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: onPress,
          child: Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color,
            ),
            child: Center(child: Text(title,style: const TextStyle(color: Colors.white),)),
          ),
        )
         
        
      ),
    );
  }
}
