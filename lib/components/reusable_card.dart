import 'package:flutter/material.dart';

// When initially creating your own widget and it is used multiple times
// Ctrl + Click the widget to open it in the Flutter outline
// Then right click the widget and click Extract Widget
// Pick a name and click Refactor
// This create a new class of that widget. Now just call the class.

// look at the Key documentation
// but key is not needed here. watch https://www.youtube.com/watch?v=kn0EOS-ZiIc

// const is made when compiled
//final is when app is running
class ReusableCard extends StatelessWidget {
  final Color colour;
  final Widget cardChild;
  // use VoidCallback when you want to pass a function but it needs to be passes through a void function
  final VoidCallback onPress;
  ReusableCard(
      {required this.colour, required this.cardChild, required this.onPress});

  //  const ReusableCard({
//    Key? key,
//  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
