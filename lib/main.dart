import 'package:flutter/material.dart';
import 'package:ruiz/pantallas_0550/panel_0550/widgets_0550/panel_pantallas_0550.dart';

void main() => runApp(MiAppAccessphone());

class MiAppAccessphone extends StatelessWidget {
  const MiAppAccessphone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ruiz Accessphone 0550",
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrangeAccent),
          useMaterial3: true),
      home: Panelpantallas_0550(),
    );
  } //
}
