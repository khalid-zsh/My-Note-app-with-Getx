import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_note/routes/route_name.dart';
import 'package:my_note/utils/colors/colors.dart';
import 'package:my_note/widgets/custom_single_note.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColor.backgroundColor,
        child: SafeArea(
          child: Padding(
              padding:EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "My Note",
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w400
                  ),
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed:(){},
                        icon: Icon(Icons.menu_outlined)
                    ),
                    Row(
                      children: [
                        IconButton(
                            onPressed:(){},
                            icon: Icon(Icons.search_outlined)
                        ),
                        IconButton(
                            onPressed:(){},
                            icon: Icon(Icons.more_vert_outlined)
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 15,),
                Expanded(
                  child: ListView.builder(
                      itemCount: 20,
                      itemBuilder:(context, index){
                        return CustomSingleNote(
                          title: 'Test title',
                          description: 'Test description',
                          date: '2.56PM',
                        );
                      }
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColor.backgroundColor,
        shape: CircleBorder(),
        onPressed: () => Get.toNamed(RouteName.noteView),
        child: Icon(
          Icons.add_outlined,
        ),
      ),
    );
  }
}
