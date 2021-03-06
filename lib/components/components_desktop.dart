import 'package:flutter/material.dart';
import 'package:pdv/components/components_default.dart';
import 'package:pdv/pages/desktop/login_page_desktop.dart';
import 'package:pdv/pages/desktop/sales_page_desktop.dart';
import 'package:pdv/pages/mobile/login_page_mobile.dart';
import 'package:pdv/components/components_default.dart';
import 'package:pdv/themes/theme_desktop.dart';

class ComponentsDesktop extends ComponentsDefault {
  ComponentsDesktop();

  @override
  ElevatedButton buttonAccount(
      String name, String route, BuildContext context) {
    return ElevatedButton(
      style: ThemeDesktop().themeOfButton,
      child: Row(
        children: [Text(name)],
      ),
      onPressed: () {
        Navigator.pushNamed(context, route);
      },
    );
  }

  @override
  IconButton buttonReturn(String route, BuildContext context) {
    return IconButton(
        onPressed: () => Navigator.pushNamed(context, route),
        icon: Icon(Icons.keyboard_return_outlined));
  }

  @override
  Widget menuOfApp(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        buttonAccount('CRIAR LOGIN', '/loginpagedesktop', context),
        SizedBox(
          width: 10,
        ),
        buttonAccount('ENTRAR', '/loginpagedesktop', context)
      ],
    );
  }

  @override
  Text textbanner() {
    // TODO: implement textbanner
    throw UnimplementedError();
  }

  @override
  Container backgroundApp(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Container(
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Row(
          children: [
            detector(context, '/salespagedesktop', cardFunction(context, 'Vendas')),
            detector(context, '/', cardFunction(context, 'Estoque')),
            detector(context, '/', cardFunction(context, 'Relatório'))
          ],
        ),
      ),
      margin: EdgeInsets.only(top: 50),
      width: width,
      height: height,
      decoration: ThemeDesktop().themeBackground(),
    );
  }

  @override
  TextField form() {
    // TODO: implement form
    throw UnimplementedError();
  }

  @override
  Container cardFunction(BuildContext context, String name) {
    double width = MediaQuery.of(context).size.width * 0.15;
    double height = MediaQuery.of(context).size.height * 0.30;
    return Container(
      child: Align(
        alignment: Alignment.topCenter,
        child: Text(
          name,
          style: ThemeDesktop().getStyleTextCardFunction,
        ),
      ),
      margin: EdgeInsets.all(20),
      width: width,
      height: height,
      decoration: ThemeDesktop().themeCardFunction(),
    );
  }

  @override
  Container cardProduct() {
    return Container(
      decoration: ThemeDesktop().themeCardProduct(),
    );
  }

  @override
  Map<String, Widget Function(BuildContext context)> routes(
      BuildContext context) {
    return {
      '/loginpagedesktop': (context) => LoginPageDesktop(),
      '/salespagedesktop': (context) => SalesPageDesktop()
    };
  }

  @override
  Drawer MenuHamburguer() {
    // TODO: implement MenuHamburguer
    throw UnimplementedError();
  }

  @override
  GestureDetector detector(BuildContext context, String route, Widget child) {
    return GestureDetector(
      child: child,
      onTap: () => Navigator.pushNamed(context, route),
    );
  }
}
