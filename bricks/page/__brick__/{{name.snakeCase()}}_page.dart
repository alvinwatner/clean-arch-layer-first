import 'package:flutter/material.dart';
import 'package:jobseekerapp/core/theme_manager/text_style_manager.dart';

class {{name.pascalCase()}}Page extends StatefulWidget {
  static const routeName = '{{name.paramCase()}}-page';
  const {{name.pascalCase()}}Page({
    Key? key,
  }) : super(key: key);

  @override
  State<{{name.pascalCase()}}Page> createState() => _{{name.pascalCase()}}PageState();
}

class _{{name.pascalCase()}}PageState extends State<{{name.pascalCase()}}Page> {
  // All Value Notifier goes to here

  // All bloc goes to here

  /// All text editing controller

  // Others

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "{{name.sentenceCase()}} Page",
          style: TextStyleManager.headline(),
        ),
      ),
    );
  }
}
