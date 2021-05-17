import 'package:flutter/material.dart';

void main() => runApp(RamirezAPP());

class RamirezAPP extends StatefulWidget {
  @override
  _RamirezAPPState createState() => _RamirezAPPState();
}

class _RamirezAPPState extends State<RamirezAPP> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, theme: ThemeData(brightness: Brightness.dark), home: Inicio());
  }
} //fon de clase _RamirezAPPState

class Inicio extends StatefulWidget {
  @override
  _InicioState createState() => _InicioState();
} //Fin de principal CON estado

class _InicioState extends State<Inicio> with SingleTickerProviderStateMixin {
  TabController controller;
  void initState() {
    super.initState();
    controller = TabController(
      length: 6,
      vsync: this,
      initialIndex: 0,
    );
  } //fin de los controladorres de los iconos

  Widget card(String text) {
    return Card(
      color: Colors.cyan,
      child: Container(
        height: 200.0,
        width: 200.0,
        child: Center(child: Text(text)),
      ),
    );
  } //fin de tarjetas

  Tab tab(String text, Icon icon) {
    return Tab(
      icon: icon,
      text: text,
    );
  } //envio de tecto L ICONO

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TabBars Ramirez"),
        centerTitle: true,
        backgroundColor: Theme.of(context).canvasColor,
        elevation: 0.0,
      ),
      body: TabBarView(
        controller: controller,
        children: <Widget>[
          card("Tarjeta de inicio"),
          card("Tarjetas de compreas"),
          card("Taejeta de atom"),
          card("Tarjeta de historial"),
          card("Tarjeta de Favoritos"),
          card("Tarjeta de regalos"),
        ],
      ),
      bottomNavigationBar: TabBar(
        controller: controller,
        isScrollable: true,
        tabs: <Widget>[
          tab("Inicio", Icon(Icons.auto_fix_high)),
          tab("Compras", Icon(Icons.add_shopping_cart_sharp)),
          tab("Atm", Icon(Icons.android)),
          tab("Historial", Icon(Icons.auto_stories)),
          tab("Favoritos", Icon(Icons.book_sharp)),
           tab("Regalos", Icon(Icons.card_giftcard_rounded)),
        ],
      ),
    );
  }
} //fin de _InicioState
