import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:notes/views/widgets/edit_note_view_body.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, EditNoteViewBody.id);
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 18,
              top: 24,
            ),
            child: ListTile(
                title: const Text(
                  "Flutter Tips",
                  style: TextStyle(color: Colors.black, fontSize: 28),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Text(
                    "Build your career with kamal ibrahim",
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.5), fontSize: 18),
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    FontAwesomeIcons.trash,
                    size: 24,
                    color: Colors.black,
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 28, bottom: 24, top: 12),
            child: Text("April 26,2023",
                style: TextStyle(
                    color: Colors.black.withOpacity(0.5), fontSize: 16)),
          )
        ]),
      ),
    );
  }
}
