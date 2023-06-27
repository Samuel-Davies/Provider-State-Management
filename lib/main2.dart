import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './models/app-data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    print('Building MainPage');
    return ChangeNotifierProvider(
      create: (context) => AppData(),
      builder: (context, child) {
        return Scaffold(
          appBar: AppBar(
            // title: Text(Provider.of<AppData>(context, listen: true).name),
            title: Consumer<AppData>(
              builder: (context, value, child) {
                return Text(value.name);
              },
            ),
          ),
          body: Screen2(),
        );
      },
    );
  }
}

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    print('Building Screen2');
    return Container(
      child: Screen3(),
    );
  }
}

class Screen3 extends StatelessWidget {
  const Screen3({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    print('Building Screen3');
    return Container(
      child: Screen4(),
    );
  }
}

class Screen4 extends StatelessWidget {
  const Screen4({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    print('Building Screen4');
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Text(Provider.of<AppData>(context, listen: true).name),
          Consumer<AppData>(
            builder: (context, value, child) {
              return Text(value.name);
            },
          ),
          ElevatedButton(
            onPressed: () {
              // Provider.of<AppData>(context, listen: false)
              // .changeData('Jack Sparrow');
              context.read<AppData>().changeData("John Jurrius");
            },
            child: const Text('Change data'),
          ),
        ],
      ),
    );
  }
}

// when using provider
// next time write this class in its own file
// in a folder called models

// finally did the instructions at top!!
