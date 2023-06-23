import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'providers/theme_provider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {
  bool isChanged = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<ThemeModel>(
        builder: (context, item, child) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(isChanged ? Icons.sunny : Icons.dark_mode),
                Text(isChanged ? "Light" : "Dark", style: Theme.of(context).textTheme.displaySmall,),
                const SizedBox(
                  height: 10.0,
                ),
                const Text("Change theme"),
                Switch(
                  value: isChanged,
                  onChanged: (bool value) {
                    item.toggleMode(value);
                    setState((){
                      isChanged = value;
                    });
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
