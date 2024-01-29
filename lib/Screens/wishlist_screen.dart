import 'package:flutter/material.dart';
import 'package:flutter_ajio_clone_app/Screens/Bag_screen2.dart';

class WishList extends StatefulWidget {
  const WishList({super.key});

  @override
  State<WishList> createState() => _WishListState();
}

class _WishListState extends State<WishList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wish List'),
        centerTitle: true,
        elevation: 1,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => const ScreenBag2()));
            },
            icon: const Icon(
              Icons.shopping_bag_outlined,
              color: Colors.black,
            ),
          ),
          const SizedBox(width: 14),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  children: [
                    Image.asset(
                      'assets/wishlist.jpg',
                      width: 150,
                    ),
                    const Text("NETPLAY"),
                    const Text(
                      "Regular Fit Short-Sleeve",
                      // textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color.fromARGB(255, 185, 184, 184),
                          fontSize: 12),
                    ),
                    const Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '₹320 ',
                          style: TextStyle(fontSize: 13),
                        ),
                        Text(
                          '₹799',
                          style: TextStyle(
                              fontSize: 13,
                              decoration: TextDecoration.lineThrough),
                        ),
                        Text(
                          ' 72%off',
                          style: TextStyle(fontWeight: FontWeight.w800),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        OutlinedButton(
                          onPressed: () {},
                          child: const Icon(Icons.delete),
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        ElevatedButton.icon(
                            onPressed: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (ctx) {
                                return const ScreenBag2();
                              }));
                            },
                            icon: const Icon(Icons.shopping_bag),
                            label: const Text('Add to Bag'))
                      ],
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
