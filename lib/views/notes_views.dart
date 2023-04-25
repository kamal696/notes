import 'package:flutter/material.dart';
import 'package:notes/views/widgets/custom_app_bar.dart';

class NotesViews extends StatelessWidget {
  const NotesViews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          children: [
            SizedBox(
              height: 34,
            ),
            CustomAppBar()
          ],
        ),
      ),
    );
  }
}
