import 'package:flutter/material.dart';
import 'package:minimalist_components/minimalist_components.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MinimalistAppBar(
        title: Text('Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Column(
          children: [
            const MinimalistTextFormField(
              hintText: 'Your text',
            ),
            MinimalistButton(
              child: const Text('Next page'),
              onPressed: () => Navigator.push(
                context,
                MinimalistAnimatedPageRoute.slide(
                  screen: const PageTwo(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PageTwo extends StatelessWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MinimalistAppBar(
        title: Text('Second page'),
      ),
      body: Center(
        child: Text(
          'Page 2!',
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
    );
  }
}
