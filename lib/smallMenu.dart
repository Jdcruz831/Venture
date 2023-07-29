import 'package:flutter/material.dart';

class smallMenu extends StatelessWidget {
 var radius;
var color = Color.fromARGB(255, 19, 126, 7);

smallMenu({
  required this.radius
});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: radius * 2,
      height: radius * 2,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
         boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 3, 3, 3).withOpacity(0.5), // Shadow color
            spreadRadius: 4, // Spread radius
            blurRadius: 10, // Blur radius
            offset: Offset(0, 3), // Offset from the container
          ),
        ],
      ),
       child: Icon(
        Icons.menu, // Specify the icon to be displayed
        color: Colors.white, // Optionally, specify the color of the icon
        size: radius, // Optionally, specify the size of the icon
     
      )
    );
  }
}