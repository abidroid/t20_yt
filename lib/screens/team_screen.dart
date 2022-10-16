import 'package:flutter/material.dart';

import '../widgets/background_widget.dart';
import '../widgets/custom_app_bar.dart';

class TeamScreen extends StatelessWidget {
  const TeamScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: CustomAppBar(
          titleText: 'Teams'
      ),
      body: BackgroundWidget(
        padding: const EdgeInsets.all(10),
        child: ListView(),
      ),
    );
  }
}