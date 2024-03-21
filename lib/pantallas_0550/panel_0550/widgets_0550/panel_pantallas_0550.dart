import 'package:flutter/material.dart';
import 'package:ruiz/pantallas_0550/panel_0550/widgets_0550/iproductos_0550.dart';

class Panelpantallas_0550 extends StatelessWidget {
  const Panelpantallas_0550({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffb281bc),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu, color: Colors.white),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 25),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://raw.githubusercontent.com/veronicaruizav/imagenes_flutlab/main/iconos/iconocelular.png"),
            ),
          ),
        ],
        title:
            Text('Ruiz AccessPhone0550', style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(15),
            padding: EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 5),
                    color:
                        Theme.of(context).colorScheme.primary.withOpacity(0.1),
                    spreadRadius: 5,
                    blurRadius: 5,
                  ),
                ]),
            child: const TextField(
              decoration: InputDecoration(
                hintText: "Hola aqui estoy",
                hintStyle:
                    TextStyle(fontWeight: FontWeight.w300, color: Colors.white),
                border: InputBorder.none,
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.brown,
                ),
              ),
            ),
          ),
          Container(
            height: 180,
            margin: const EdgeInsets.all(15),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://raw.githubusercontent.com/veronicaruizav/imagenes_flutlab/main/imagenes/descarga.jpg")),
            ),
          ),
          ListTile(
            title: Text("Top Productos"),
            titleTextStyle: Theme.of(context).textTheme.titleLarge,
            trailing: Icon(Icons.filter_list_outlined),
          ),
          Expanded(
            child: GridView.count(
              padding: EdgeInsets.all(15),
              crossAxisCount: 2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 15,
              children: [for (int i = 1; i <= 10; i++) const Iproductos_0550()],
            ),
          )
        ],
      ),
    );
  }
}
