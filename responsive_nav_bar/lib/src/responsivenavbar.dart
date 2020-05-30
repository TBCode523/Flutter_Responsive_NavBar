library responsivenavbar;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//ResponsiveNav needs the following parameters:  startItem: Widget, navItems: List<Widget>, edgeInsets: EdgeInsets
class ResponsiveNavBar extends StatelessWidget{
  //Plan to implement a sticky NavBar property final bool isSticky
  final Widget startItem;
  final List<Widget> navItems;
  final EdgeInsets edgeInsets;
  final Color color;


  ResponsiveNavBar({Key key,  this.color, @required this.edgeInsets,  @required this.navItems, @required this.startItem}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return  Container(
              padding: edgeInsets,
              color: color,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [startItem, Row(children: navItems)]
              )
          );

        }  else {
          return Container(
              padding: edgeInsets,
              color: color,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [startItem, Row(children: navItems)]
              )
          );
        }
      },
    );
  }


}
class NavItem extends StatelessWidget{
  final Widget item;
  final double padding;
  NavItem({Key key, this.item, this.padding}): super(key:key);
  @override
  Widget build(BuildContext context) {

    return SizedBox(width: padding, child: item);
  }

}