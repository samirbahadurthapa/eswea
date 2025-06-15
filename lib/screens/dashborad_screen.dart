import 'package:esewa_app/screens/home_screen.dart';
import 'package:esewa_app/screens/more_screen.dart';
import 'package:esewa_app/screens/statement_screen.dart';
import 'package:esewa_app/screens/support_screen.dart';
import 'package:flutter/material.dart'; 
class DashboardScreee extends StatefulWidget {
  const DashboardScreee({super.key});

  @override
  State<DashboardScreee> createState() => _DashboardScreeeState();
}

class _DashboardScreeeState extends State<DashboardScreee> { 
  int _currentIndex=0; 
  final List<Widget> _pages=[ 
        HomeScreen(),
        MoreScreen(),
       StatementScreen(),
        SupportScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: _pages[_currentIndex], 
      bottomNavigationBar: BottomNavigationBar( 
        type: BottomNavigationBarType.fixed, 
        selectedItemColor: Colors.indigo, 
        unselectedItemColor: Colors.grey, 
        currentIndex: _currentIndex,
        onTap: (value){ 
          setState(() {
            _currentIndex=value;
          });
        }, items: const[ 
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "add"), 
          
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: "Profile"),
        ], 
      ),
    );
  }
}