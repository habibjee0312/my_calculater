import 'package:flutter/material.dart';
class  SpleshScreen extends StatefulWidget {
  const SpleshScreen({Key? key}): super (key:key);

  @override
  State<SpleshScreen> createState() => _SpleshScreenState();
}

class _SpleshScreenState extends State<SpleshScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image(
        height: double.infinity ,
          image: NetworkImage('https://images.pexels.com/photos/64296/pexels-photo-64296.jpeg')),
    );
  }
}
