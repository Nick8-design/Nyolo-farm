
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../components/color_button.dart';
import '../components/constants.dart';
import '../components/theme_button.dart';
import '../screens/favorite_screen.dart';
import '../screens/homepage/home_page.dart';

class Home extends StatefulWidget {
  const Home({super.key,
    required this.changeTheme,
    required this.changeColor,
    required this.colorSelected,
    required this.tab});

  final int tab;
  final ColorSelection colorSelected;
  final void Function(bool useLightMode) changeTheme;
  final void Function(int value) changeColor;

  @override
  State<Home> createState() => _HomeState();

}

class _HomeState extends State<Home> {
  static const double drawerWidth = 250.0;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  List<NavigationDestination> appBarDestinations = const[
    NavigationDestination(
      icon: Icon(Icons.home_outlined),
      label: 'Home',
      selectedIcon: Icon(Icons.home),
    ),
    NavigationDestination(
      icon: Icon(Icons.add_shopping_cart),
      label: 'Cart',
      selectedIcon: Icon(Icons.shopping_cart),
    ),
    NavigationDestination(
      icon: Icon(Icons.list),
      label: 'Order',
      selectedIcon: Icon(Icons.list_alt_outlined),
    ),
    NavigationDestination(
      icon: Icon(Icons.favorite_border),
      label: 'Favourite',
      selectedIcon: Icon(Icons.favorite),
    )
  ];
  final pages = [
    const BirdListScreen(),
    const Center(child: Text('Cart'),),
    const Center(child: Text('Order'),),
    const FavoriteScreen(),

  ];


  Widget _buildDrawer() {
    return SizedBox(
      width: drawerWidth,
      child: Drawer(
          child:
              Scaffold(
                appBar: AppBar(
                  title: const Text('Welcome User'),
                  leading: IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                ),

                body:  Container(
                  color: Colors.yellow[200],
                ),
              ),

      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    String titl='Birds';
    if(widget.tab==0){
      setState(() {
        titl='All Birds';
      });
    }else if(widget.tab==1){
      setState(() {
        titl='Cart';
      });
    } else if(widget.tab==2){
      setState(() {
        titl='Order';
      });
    }else if(widget.tab==3){
      setState(() {
        titl='Favorite';
      });
    }else{
      setState(() {
        titl='Birds';
      });
    }

    return Scaffold(
      drawer: _buildDrawer(),
      appBar: AppBar(
        elevation: 4.0,
        title:  Text(titl),

        backgroundColor: Theme
            .of(context)
            .colorScheme
            .background,
        actions: [
          ThemeButton(
            changeThemeMode: widget.changeTheme,
          ),
          ColorButton(
            changeColor: widget.changeColor,
            colorSelected: widget.colorSelected,
          ),
        ],

      ),

      body: IndexedStack(index: widget.tab, children: pages),
      bottomNavigationBar: NavigationBar(
        selectedIndex: widget.tab,
        onDestinationSelected: (index) {
          context.go('/$index');
        },
        destinations: appBarDestinations,
      ),
    );
  }


}