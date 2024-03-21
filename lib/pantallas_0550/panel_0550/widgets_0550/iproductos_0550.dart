import 'package:flutter/material.dart';

class Iproductos_0550 extends StatefulWidget {
  const Iproductos_0550({Key? key}) : super(key: key);

  @override
  State<Iproductos_0550> createState() => _Iproductos_0550State();
}

class _Iproductos_0550State extends State<Iproductos_0550> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 5),
                color: Theme.of(context).colorScheme.primary.withOpacity(.1),
                spreadRadius: 5,
                blurRadius: 5)
          ]),
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(
                "https://raw.githubusercontent.com/veronicaruizav/imagenes_flutlab/main/imagenes/images.jpg"),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Nuestros productos",
            style: Theme.of(context).textTheme.titleSmall,
          ),
          SizedBox(
            height: 5,
          ),
          Row(
              children: List.generate(
                  5,
                  (index) => Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 18,
                      )))
        ],
      ),
    );
  }
}
