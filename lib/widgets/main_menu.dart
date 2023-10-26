import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MenuItem{
  final String title;
  final String route;
  final String assetImage;

  MenuItem({required this.title, required this.route, required this.assetImage});
}

final menuItems = <MenuItem>[
  MenuItem(title: 'Distance', assetImage: 'assets/distancia.png', route: '/distance'),
  MenuItem(title: 'Weight', assetImage: 'assets/peso.png', route: '/weight'),
  MenuItem(title: 'Temperature', assetImage: 'assets/temperatura.png', route: '/temperature'),

  MenuItem(title: 'Time', assetImage: 'assets/tiempo.png', route: '/time'),
  MenuItem(title: 'Digital Storage', assetImage: 'assets/database.png', route: '/storage'),
  MenuItem(title: 'Energy', assetImage: 'assets/energy.png', route: '/energy'),

  MenuItem(title: 'Volume', assetImage: 'assets/volumen.png', route: '/volumen'),
  MenuItem(title: 'Area', assetImage: 'assets/area.png', route: '/area'),
  MenuItem(title: 'Force', assetImage: 'assets/fuerza.png', route: '/fuerza'),

  MenuItem(title: 'Pressure', assetImage: 'assets/presion.png', route: '/presion'),
  MenuItem(title: 'Angle', assetImage: 'assets/angulo.png', route: '/time'),
  MenuItem(title: 'Power', assetImage: 'assets/poder.png', route: '/time'),
];

class MainMenu extends StatelessWidget {
  const MainMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.count(
      crossAxisCount: 3,
      crossAxisSpacing: 5,
      mainAxisSpacing: 5,
      children: menuItems.map((item) => HomeMenuItem(
        title: item.title, 
        route: item.route, 
        assetImage: item.assetImage,
      )).toList()
    );
  }
}

class HomeMenuItem extends StatelessWidget {

  final String title;
  final String assetImage;
  final String route;
  final List<Color> bgColors;

  const HomeMenuItem({
    super.key, 
    required this.title, 
    required this.assetImage,
    required this.route, 
    this.bgColors = const [ Colors.white, Colors.white], 
    
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.push( route ),
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          padding: const EdgeInsets.all(4),
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
              SizedBox(
                height: 32,
                child: Image.asset(assetImage),
              ),
              const SizedBox(height: 10),
              Text(title, style: const TextStyle(color: Colors.black, fontSize: 14)),
            ],
          ),
        ),
      ),
    );
  }
}