import 'package:flutter/material.dart';
import 'package:show_opacity_bottomsheet/app_router.dart';

void main() {
  runApp(const Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
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
      appBar: AppBar(
        title: const Text('Show Opacity BottomSheet'),
      ),
      body: SizedBox.expand(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 30,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 100,
                width: 200,
                color: Colors.red,
              ),
              Container(
                height: 100,
                width: 200,
                color: Colors.blue,
              ),
              ElevatedButton(
                onPressed: () {
                  AppRouter().showCustomBottomSheet(
                    context,
                    SizedBox(
                      height: 400,
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(5),
                            height: 100,
                            width: 150,
                            color: Colors.green,
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            height: 100,
                            width: 150,
                            color: Colors.green,
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            height: 100,
                            width: 150,
                            color: Colors.green,
                          ),
                        ],
                      ),
                    ),
                  );
                },
                child: const Text('ボトムシート表示'),
              ),
              Container(
                height: 100,
                width: 200,
                color: Colors.red,
              ),
              Container(
                height: 100,
                width: 200,
                color: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
