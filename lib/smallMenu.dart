import 'package:flutter/material.dart';

class smallMenu extends StatefulWidget {
var radius;
var color = Color.fromARGB(255, 19, 126, 7);
var isMenuOpen = false;

//this is used to pass info from main dart to here. aka radius is % of screen width
smallMenu({
required this.radius,
});

//this creates a new state so the menu can move around
 @override
  _SmallMenuState createState() => _SmallMenuState();
}

//this is the state created above this has the menu open button and changes 
//it's position if it is open yet or not. 
class _SmallMenuState extends State<smallMenu> {
  bool isMenuOpen = true;

  void _toggleMenu() {
    setState(() {
      isMenuOpen = !isMenuOpen;
    });
  }
//this will change the loction of the button when pushed 
double getTopPosition(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return isMenuOpen ? screenHeight * 0.05 : screenHeight * 0.5;
  }
  
  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: Duration(milliseconds: 500),
      top: getTopPosition(context),
      right: MediaQuery.of(context).size.width * 0.05,
      child: InkWell(
        onTap: _toggleMenu,
        child: Container(
          width: widget.radius * 2,
          height: widget.radius * 2,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color.fromARGB(255, 19, 126, 7),
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 3, 3, 3).withOpacity(0.5),
                spreadRadius: 4,
                blurRadius: 10,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Icon(
            Icons.menu,
            color: Colors.white,
            size: widget.radius,
          ),
        ),
      ),
    );
  }
}