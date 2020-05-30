# responsive_nav_bar

A package designed to help Flutter web developers create a responsive NavBar

## Getting Started
For help getting started with Flutter, view our 
[online documentation](https://flutter.dev/docs), which offers tutorials, 
samples, guidance on mobile development, and a full API reference.
To use this package, add 'responsive_nav_bar.dart'as a [dependecy in pubspec.yaml file](https://flutter.dev/docs/development/packages-and-plugins/using-packages)

### Example
   ````dart
  import 'package:flutter/material.dart';
  import 'package:website_demo/widgets/landing_page.dart';
  import 'package:website_demo/widgets/nav_bar.dart';
  
  void main() {
    runApp(MyApp());
  }
  
  class MyApp extends StatelessWidget {
    // This widget is the root of your application.
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        title: 'Responsive NavBar Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: ResponsiveNavBarDemo(),
      );
    }
  }
  
  class ResponsiveNavBarDemo extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        
        body: Container(
          decoration: BoxDecoration(color: Colors.black),
          child: Column(children: <Widget>[
            ResponsiveNavBar(
                color: Colors.blue,
                edgeInsets: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                startItem: Text("Brand Item 1",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 30)),
                navItems: <Widget>[
                  NavItem(
                    item:
                        Text("Nav Item 1", style: TextStyle(color: Colors.white)),
                    padding: 100,
                  ),
                  NavItem(
                    item:
                        Text("Nav Item 2", style: TextStyle(color: Colors.white)),
                    padding: 100,
                  ),
                  NavItem(
                    padding: 100,
                    item:
                        Text("Nav Item 3", style: TextStyle(color: Colors.white)),
                  ),
                  NavItem(
                    padding: 100,
                    item: MaterialButton(
                      color: Colors.pink,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0))),
                      onPressed: () {},
                      child: Text(
                        "Nav Item 4",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ]),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: DemoBody(),
            )
          ]),
        ),
      );
    }
  }

 

