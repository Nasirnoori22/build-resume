import 'package:build_resume/themse/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AppbarWidget extends StatelessWidget {
  const AppbarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Row(
          children: [
            Text(
              'Add Your Informations',
              style: Themes.lightTheme.textTheme.headline4,
            )
          ],
        ),
      ),
    );
  }
}
