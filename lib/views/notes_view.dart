import 'package:flutter/material.dart';
import 'package:notes_app_hive_db/constants.dart';
import 'package:notes_app_hive_db/views/widget/add_note_bottom_sheet.dart';
import 'package:notes_app_hive_db/views/widget/notes_view_body.dart';



class NotesView extends StatelessWidget {
  const NotesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: kPrimaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(28,),
        ),
        onPressed: (){
          showModalBottomSheet(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16,),
            ),
              context: context,
              builder: (context) {
                return const AddNoteBottomSheet();
              },
          );
        },
        //clipBehavior: Clip.hardEdge,
        child: Icon(Icons.add_outlined,),
      ),
      body:const NotesViewBody(),
    );
  }
}


