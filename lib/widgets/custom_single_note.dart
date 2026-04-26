import 'package:flutter/material.dart';
import 'package:my_note/utils/colors/colors.dart';

class CustomSingleNote extends StatelessWidget {
  final String title;
  final String description;
  final String date;


  const CustomSingleNote(
      {
        super.key,
        required this.title,
        required this.description,
        required this.date
      }
      );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          bottom: 10
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: Colors.black.withValues(alpha: .2),
          )
      ),
      child: ListTile(
        horizontalTitleGap: 0,
        leading: Container(
          height: 13,
          width: 13,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColor.backgroundColor,

          ),
        ),
        title: Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              description,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  color: Colors.black.withValues(alpha: .5)
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  date,
                  style: TextStyle(
                      fontSize: 10,
                      color: Colors.black.withValues(alpha: .5)
                  ),
                ),
                InkWell(
                    onTap: (){},
                    child: Icon(Icons.delete_outline)
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
