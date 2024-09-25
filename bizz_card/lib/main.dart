import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget { //utilisé pour des interfaces static
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( //configure le theme, la page d'accueil, et d'autre aspects global
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'BizzCard'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center, // Center horizontally
          clipBehavior: Clip.none, // Allows the image to overflow
          children: [
            Container(
              height: 400,
              padding: EdgeInsets.all(20), // Padding inside the container
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.5),
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 60), // To push the text down a bit
                  Text(
                    "EUNICE ABOMAN ADIEY",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "20 years old",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: 40),
                  Text(
                    "abomaneunice@gmail.com",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "+2250779115158",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
            Positioned(
              top: -50, // Half of the image's radius (e.g., if radius is 50, offset by -50)
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/eunice_bw.JPG'),
                radius: 80,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
