import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:welcome_app/background_painter.dart';
import 'package:welcome_app/home.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.red,
          // brightness: Brightness.dark,
        ),
        textTheme: GoogleFonts.poppinsTextTheme(),
        appBarTheme: AppBarTheme(
          elevation: 10,
          // backgroundColor: Colors.red[300],
        ),
        // scaffoldBackgroundColor: Colors.orange[500],
      ),

      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome App'),
          centerTitle: true,
          leading: Icon(CupertinoIcons.home),
        ),

        body: Stack(
          fit: StackFit.expand,
          children: [
            CustomPaint(painter: BackgroundPainter()),
            Positioned.fill(child: Home()),
          ],
        ),
      ),
    );
  }
}
