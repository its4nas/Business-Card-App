import 'package:flutter/material.dart';

const primaryColor = Color(0xFF2B475E); 

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Business Card App',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        scaffoldBackgroundColor: primaryColor,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 80),
            const CircleAvatar(
              radius: 150,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('images/CodeWarrior.png'),
            ),
            const SizedBox(height: 50),
            const Text(
              'Anas Al-Dharei',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontFamily: 'Pacifico',
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Flutter Developer',
              style: TextStyle(fontSize: 18, color: Color(0xFFffde59)),
            ),
            const Divider(
              color: Colors.white,
              thickness: 2,
              indent: 50,
              endIndent: 50,
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  color: Colors.white,
                  height: 60,
                  child: Row(
                    children: const [
                      Spacer(flex: 1),
                      Icon(
                        Icons.phone,
                        size: 30,
                        color: primaryColor,
                      ),
                      Spacer(flex: 1),
                      SizedBox(width: 10),
                      Text(
                        '+967 775 263 937',
                        style: TextStyle(
                          fontSize: 18,
                          color: primaryColor,
                        ),
                      ),
                      Spacer(flex: 3),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  color: Colors.white,
                  height: 60,
                  child: Row(
                    children: const [
                      Spacer(flex: 1),
                      Icon(
                        Icons.mail,
                        size: 30,
                        color: primaryColor,
                      ),
                      Spacer(flex: 1),
                      SizedBox(width: 10),
                      Text(
                        'anas202255@gmail.com',
                        style: TextStyle(
                          fontSize: 18,
                          color: primaryColor,
                        ),
                      ),
                      Spacer(flex: 3),
                    ],
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
