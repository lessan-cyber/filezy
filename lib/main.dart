import 'package:flutter/material.dart';
import "package:flutter_animate/flutter_animate.dart";
import 'loginPage.dart';
//import 'package:revision/second_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(title: 'View Events', size: size),
    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
    required this.title,
    required this.size,
  });

  final String title;
  final Size size;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

  class _MyHomePageState extends State<MyHomePage> {
    double opacityLevel = 0.0;

    @override
    void initState() {
      super.initState();
      Future.delayed(const Duration(seconds: 2), () {
        setState(() {
          opacityLevel = 1.0;
        });
      });
      Future.delayed(const Duration(seconds: 2), () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SecondScreen()),
        );
      });
    }

    @override
    Widget build(BuildContext context) {
      return GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            PageRouteBuilder(
                transitionDuration: Duration(seconds: 1),
              pageBuilder: (context, animation, secondaryAnimation) => SecondScreen(),
              transitionsBuilder: (context, animation, secondaryAnimation, child) {
                var begin = Offset(1.0, 0.0);
                var end = Offset.zero;
                var curve = Curves.easeInOutBack;

                var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

                return  SlideTransition(
                  position: animation.drive(tween),
                  child: child,
                );
              },
            ),
          );

        },
        child: Scaffold(
          backgroundColor: const Color.fromARGB(255, 34, 82, 253),
          appBar: AppBar(
            backgroundColor:const Color.fromARGB(255, 34, 82, 253),
          ),
          body: AnimatedOpacity(
            opacity: opacityLevel,
            duration: Duration(seconds: 1),
            child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                'assets/icons/folder.png',
                width: 50,),

      ),
      const Padding(
        padding: EdgeInsets.all(8.0),
        child: Text("Filezy",
          style: TextStyle(
          color: Colors.white,
          fontSize: 45,
          fontWeight: FontWeight.bold)
           ),
          ),
         ],
          ).animate()
          .scaleXY(
            delay: const Duration(milliseconds: 500),
            duration: const Duration(seconds: 1),
            curve: Curves.easeInOutBack,
            begin: 0.0,
            end: 1.0,
          )
      ),

      ),
        ));
    }
  }

