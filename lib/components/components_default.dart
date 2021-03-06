import 'package:flutter/material.dart';
import '../../themes/theme_default.dart';

abstract class ComponentsDefault {
  String? pathToLogo;
  Image? logoOfApp;
//  late double width, heigh;

  ComponentsDefault();

  Widget menuOfApp(BuildContext context);

  ElevatedButton buttonAccount(String name, String route, BuildContext context);
  
  IconButton buttonReturn(String route, BuildContext context);

  Container cardFunction(BuildContext context, String name);

  Container cardProduct();

  Text textbanner();

  Container backgroundApp(BuildContext context);

  TextField form();

  GestureDetector detector(BuildContext context, String route, Widget child);

  Map<String, Widget Function(BuildContext context)> routes(
      BuildContext context);
}
