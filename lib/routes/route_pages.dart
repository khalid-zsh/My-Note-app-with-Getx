import 'package:get/get.dart';
import 'package:my_note/routes/route_name.dart';

import '../views/home/home_view.dart';
import '../views/noteView/note_view.dart';

class RoutePages {
  static List<GetPage<dynamic>>? routes = [
    GetPage(
        name: RouteName.home,
        page: () => HomeView()
    ),
    GetPage(
        name: RouteName.noteView,
        page: () => NoteView()
    )
  ];
}