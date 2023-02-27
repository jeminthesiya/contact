import 'package:contact/modal.dart';
import 'package:flutter/material.dart';

class Add extends StatefulWidget {
  const Add({Key? key}) : super(key: key);

  @override
  State<Add> createState() => _AddState();
}

class _AddState extends State<Add> {
  TextEditingController fname = TextEditingController();
  TextEditingController lname = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController email = TextEditingController();
  List<CONTECT> contects = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "EDIT CONTECT",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          leading: Center(
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Text(
                "<",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
          ),
          actions: [
            InkWell(
              onTap: () {
                CONTECT c1 = CONTECT(
                  firstnames: fname.text,
                  lastnames: lname.text,
                  phonenumber: phone.text,
                  emailid: email.text,
                );
                setState(() {
                  contects.add(c1);
                });
                Navigator.pushReplacementNamed(context, 'HomeScreen', arguments: contects);
               // Navigator.pop(context,"/contects");
              },
              child: Image.asset(
                "assets/images/done.png",
                height: 45,
                width: 45,
                color: Colors.white,
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: fname,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  label: const Text(
                    "FIRST NAME.",
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: lname,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  label: const Text(
                    "LAST NAME.",
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: phone,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  label: const Text(
                    "MOBILE NO.",
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: email,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  label: const Text(
                    "E-MAIL",
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
