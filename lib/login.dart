// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          mainBackground(),
          Positioned(top: 90, child: titleimage()),
          Positioned(top: 420, right: 5, child: blackbox())
        ],
      ),
    );
  }
}

class mainBackground extends StatelessWidget {
  const mainBackground({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              //https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRByVpoOxzE7w1oGL1TpQFhZzk4m-aawOXBEA&usqp=CAU
              //
              image: NetworkImage(
                  "https://previews.123rf.com/images/davidfranklinstudioworks/davidfranklinstudioworks1506/davidfranklinstudioworks150600009/40968660-tropical-summer-beach-background-vertical-copy-space.jpg"))),
      // child: Stack(
      //   children: [
      //     titleimage(),
      //     blackbox(),
      //   ],
      // ),
    );
  }
}

class blackbox extends StatelessWidget {
  const blackbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 400,
        height: 440,
        // color: const Color.fromARGB(160, 10, 0, 15).withOpacity(0.6),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.black.withOpacity(0.8),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: const TextField(
                decoration: InputDecoration(
                    hintText: "Username",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(35)))),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(35)))),
              ),
            ),
            ElevatedButton(onPressed: () {}, child: const Text("submit")),
          ],
        ),
      ),
    );
  }
}

class titleimage extends StatelessWidget {
  const titleimage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
        "images/menw.png",
        height: 400,
        width: 400,
      ),
    );
  }
}
