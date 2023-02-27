import 'package:contact/modal.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // List<CONTECT> c1 =
    //     ModalRoute.of(context)!.settings.arguments as List<CONTECT>;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "CONTECT APP",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Image.asset(
            "assets/images/menu.png",
            height: 30,
            width: 30,
            color: Colors.white,
          ),
        ],
      ),
      // body: ListView.builder(
      //   itemCount: c1.length,
      //   itemBuilder: (context, index) {
      //     return con(c1[index].firstnames!, c1[index].lastnames!,
      //         c1[index].phonenumber!, index);
      //   },
      // ),
      floatingActionButton: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            Colors.blue,
          ),
        ),
        onPressed: () {
          Navigator.pushNamed(context, 'Add');
        },
        child: const Text(
          "+",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 40,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget con(String? name, String? surname, String? mono, int index) {
    return ListTile(
      leading: Text("$name"),
      title: Text("$surname"),
      trailing: Text("$mono"),
    );
  }
}
