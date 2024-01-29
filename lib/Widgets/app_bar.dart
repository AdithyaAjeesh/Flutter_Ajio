import 'package:flutter/material.dart';
import 'package:flutter_ajio_clone_app/Screens/notification_screen.dart';
import 'package:flutter_ajio_clone_app/Widgets/tab_bar.dart';

PreferredSize prefAppBar(BuildContext context) {
  return const PreferredSize(
    preferredSize: Size.fromHeight(100),
    child: DefaultTabController(
      length: 10,
      child: App_Bar(),
    ),
  );
}

// ignore: camel_case_types
class App_Bar extends StatefulWidget {
  const App_Bar({super.key});

  @override
  State<App_Bar> createState() => _App_BarState();
}

// ignore: camel_case_types
class _App_BarState extends State<App_Bar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 10,
      backgroundColor: Colors.white,
      title: Column(
        children: [
          Container(
            color: const Color.fromARGB(13, 8, 3, 3),
            child: Row(
              children: [
                const SizedBox(width: 5),
                const Image(
                  image: AssetImage('assets/ajio.png'),
                  width: 50,
                  height: 50,
                ),
                const SizedBox(width: 5),
                const Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Search by Product, brand . . . ',
                        border: InputBorder.none),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.camera_alt_outlined,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(width: 8),
              ],
            ),
          )
        ],
      ),
      bottom: customTabBar(context),
      actions: [
        IconButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => const Notifications()));
          },
          icon: const Icon(Icons.notifications_outlined),
        )
      ],
    );
  }
}
