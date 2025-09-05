import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Spacer(flex: 4),

        Align(
          alignment: Alignment(-0.9, 0),
          child: SizedBox(
            width: 150,
            child: const Text(
              'Welcome to the Apk',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ),
        ),

        Spacer(flex: 3),

        Align(
          alignment: Alignment.center,
          child: Container(
            width: 220,
            height: 220,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.red[300],
              border: Border.all(color: Colors.black, width: 5),
              borderRadius: BorderRadius.all(Radius.circular(14)),
            ),
            child: CachedNetworkImage(
              imageUrl: 'https://media.tenor.com/yCFHzEvKa9MAAAAj/hello.gif',
              placeholder: (context, url) => const CircularProgressIndicator(),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ),
        ),

        Spacer(flex: 2),
        // Image.network('https://media.tenor.com/yCFHzEvKa9MAAAAj/hello.gif'),
      ],
    );

    // Scaffold(
    // App Bar of the application
    // appBar: AppBar(
    //   title: Text('Welcome App'),
    //   centerTitle: true,
    //   leading: Icon(CupertinoIcons.home),
    // ),

    //body of the application
    // body: Stack(
    //   fit: StackFit.expand,
    //   // alignment: Alignment.topRight,
    //   children: [
    //     const Text(
    //       'Welcome to the Apk',
    //       style: TextStyle(
    //         color: Colors.red,
    //         fontWeight: FontWeight.w500,
    //         fontSize: 30,
    //       ),
    //     ),

    //     Image.network('https://media.tenor.com/yCFHzEvKa9MAAAAj/hello.gif'),
    //   ],
    // ),

    // body: Column(
    //   mainAxisAlignment: MainAxisAlignment.center,
    //   crossAxisAlignment: CrossAxisAlignment.stretch,
    //   children: [
    //     const Text(
    //       'Welcome to the Apk',
    //       textAlign: TextAlign.center,
    //       style: TextStyle(
    //         color: Colors.red,
    //         fontWeight: FontWeight.w500,
    //         fontSize: 30,
    //       ),
    //     ),
    //     Image.network('https://media.tenor.com/yCFHzEvKa9MAAAAj/hello.gif'),
    //   ],
    // ),
    // );
  }
}
