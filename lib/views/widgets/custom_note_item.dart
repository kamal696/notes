import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.amber[200],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
        Padding(
          padding: const EdgeInsets.only(left: 18, top: 24, right: 18),
          child: ListTile(
            title: const Text(
              "Flutter Tips",
              style: TextStyle(color: Colors.black, fontSize: 24),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 18),
              child: Text(
                "Build your career with kamal ibrahim",
                style: TextStyle(
                    color: Colors.black.withOpacity(0.5), fontSize: 18),
              ),
            ),
            trailing: const Icon(
              FontAwesomeIcons.trash,
              color: Colors.black,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 28, bottom: 24, top: 24),
          child: Text("April 26,2023",
              style: TextStyle(color: Colors.black.withOpacity(0.5))),
        )
      ]),
    );
  }
}
