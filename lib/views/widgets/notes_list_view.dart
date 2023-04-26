import 'package:flutter/material.dart';
import 'package:notes/views/widgets/custom_note_item.dart';

class CustomNotesListView extends StatelessWidget {
  const CustomNotesListView({super.key});
  final List colorsItem = const [
    Colors.red,
    Colors.yellow,
    Colors.blue,
    Colors.green
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: colorsItem.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(top: 10),
                child: CustomNoteItem(color: colorsItem[index]),
              );
            }),
      ),
    );
  }
}
