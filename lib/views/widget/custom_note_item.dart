import 'package:flutter/material.dart';
import 'package:notes_app_hive_db/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(
            context, MaterialPageRoute(
          builder: (context) {
            return EditNoteView();
        },));
      },
      child: Container(
        padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16,),
        decoration: BoxDecoration(
          color: const Color(0xffFFCC80),
          borderRadius: BorderRadius.circular(16.0,),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: const Text(
                'Flutter Tips',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 16,),
                child: Text(
                  'Build your career with Ahmed El-Sebaiy',
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.5,),
                    fontSize: 18,
                  ),
                ),
              ),
              trailing: IconButton(
                onPressed: (){},
                icon: const Icon(
                  Icons.delete,
                  color: Colors.black,
                  size: 24,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24,),
              child: Text(
                'Jan5 , 2024',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.4,),
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
