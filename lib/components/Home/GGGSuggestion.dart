import 'package:flutter/material.dart';

class GGGSuggestion extends StatefulWidget {
  const GGGSuggestion({super.key});

  @override
  _GGGSuggestionState createState() => _GGGSuggestionState();
}

class _GGGSuggestionState extends State<GGGSuggestion> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 10),
      child: Container(
        color: Colors.blue,
        alignment: Alignment.center,
        height: 300,
        child: Text("推荐", style: TextStyle(color: Colors.white),),
      ),
    );
  }
}