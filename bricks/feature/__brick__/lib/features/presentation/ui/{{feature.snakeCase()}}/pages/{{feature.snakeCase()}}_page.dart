import 'package:flutter/material.dart';
import '../../../../../injection_container.dart';

class {{feature.pascalCase()}}Page extends StatefulWidget {
  static const routeName = '{{feature.paramCase()}}-page';
  const {{feature.pascalCase()}}Page({super.key});

  @override
  State<{{feature.pascalCase()}}Page> createState() => _{{feature.pascalCase()}}PageState();
}

class _{{feature.pascalCase()}}PageState extends State<{{feature.pascalCase()}}Page> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SizedBox(
      child: Text("{{feature}} page"),
    ));
  }
}