import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MenuItem{
  final String title;
  final IconData icon;
  final String route;

  MenuItem({required this.title, required this.icon, required this.route});
}

final menuItems = <MenuItem>[
  MenuItem(title: 'Distance', icon: Icons.public_sharp, route: '/distance'),
  MenuItem(title: 'Weight', icon: Icons.accessibility, route: '/weight'),
  MenuItem(title: 'Temperature', icon: Icons.fireplace_outlined, route: '/temperature'),
  MenuItem(title: 'Time', icon: Icons.access_time_filled, route: '/time'),
  MenuItem(title: 'Example', icon: Icons.account_tree, route: '/example'),
  MenuItem(title: 'Example2', icon: Icons.account_tree, route: '/example2'),
];

class MainMenu extends StatelessWidget {
  const MainMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.count(
      crossAxisCount: 2,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      children: menuItems.map((item) => HomeMenuItem(
        title: item.title, 
        icon: item.icon, 
        route: item.route
      )).toList()
    );
  }
}

class HomeMenuItem extends StatelessWidget {

  final String title;
  final IconData icon;
  final String route;
  final List<Color> bgColors;

  const HomeMenuItem({
    super.key, 
    required this.title, 
    required this.icon, 
    required this.route, 
    this.bgColors = const [ Colors.orange, Colors.deepOrange]
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.push( route ),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            colors: bgColors,
            begin: Alignment.topCenter,
            // begin: Alignment.topCenter,
            end: Alignment.bottomCenter
            // end: Alignment.bottomCenter
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon( icon, color: Colors.white, size: 40, ),
            const SizedBox(height: 10),
            Text(title, style: const TextStyle(color: Colors.white, fontSize: 18),)
          ],
        ),
      ),
    );
  }
}