import 'package:flutter/material.dart';
import 'package:my_note/utils/colors/colors.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0 ,
        backgroundColor: AppColor.backgroundColor,
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(1),
            child: Divider()
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.link_outlined)),
          IconButton(onPressed: (){}, icon: Icon(Icons.share_outlined)),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert_outlined))
        ],
      ),
      body: Padding(
          padding: EdgeInsets.all(15),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Title',
                border: InputBorder.none
              ),
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),
              minLines: 1,
              maxLines: 2,
            ),
            Expanded(
              child: TextFormField(
                minLines: 1,
                maxLines: 500,
                decoration: InputDecoration(
                    hintText: 'Describe about your note',
                    border: InputBorder.none
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
