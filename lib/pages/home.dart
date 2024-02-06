import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cardify"),
        centerTitle: true,
        leading: Container(
          padding: const EdgeInsets.all(8),
          child: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () => {},
          ),
        ),
        actions: [
          Padding(
              padding: const EdgeInsets.all(8),
              child: IconButton(
                icon: Icon(Icons.account_circle_outlined,
                    color: Theme.of(context).colorScheme.onSurfaceVariant),
                onPressed: () => {},
              ))
        ],
      ),
      drawer: const Drawer(
        child: Text("data"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              margin: const EdgeInsets.only(bottom: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                      child: Text("Yotu Willo",
                          style: theme.textTheme.headlineMedium)),
                  Text("active card",
                      style: (theme.textTheme.headlineSmall
                          ?.apply(color: theme.colorScheme.onSurfaceVariant)))
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
