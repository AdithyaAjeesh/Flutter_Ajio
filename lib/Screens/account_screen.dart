import 'package:flutter/material.dart';
import 'package:flutter_ajio_clone_app/Screens/notification_screen.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Account'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            width: double.infinity,
            child: Row(
              children: [
                const CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 50,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 60,
                  ),
                ),
                const SizedBox(width: 30),
                SizedBox(
                  width: 200,
                  height: 40,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black),
                      child: const Text(
                        'Sign In / Join',
                        style: TextStyle(color: Colors.white),
                      )),
                )
              ],
            ),
          ),
          Expanded(
              child: Container(
            child: ListView.separated(
                itemBuilder: (context, index) {
                  String title = '';
                  if (index == 0) {
                    title = 'Customer Care';
                  } else if (index == 1) {
                    title = 'Invite Friends & Earn';
                  } else if (index == 2) {
                    title = 'Coupen Quest';
                  } else if (index == 3) {
                    return Column(
                      children: [
                        Container(
                          height: 10,
                          color: const Color.fromARGB(255, 201, 195, 195),
                        ),
                        ListTile(
                          title: const Text(
                            'Notifications',
                            style: TextStyle(fontWeight: FontWeight.w800),
                          ),
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const Notifications()));
                          },
                          trailing: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_right),
                          ),
                        ),
                        Container(
                          color: const Color.fromARGB(255, 201, 195, 195),
                          height: 10,
                        ),
                      ],
                    );
                  } else if (index == 4) {
                    title = "return Creation Demo";
                  } else if (index == 5) {
                    title = 'how to return';
                  } else if (index == 6) {
                    title = 'how to redeem My Coupon';
                  } else if (index == 7) {
                    title = 'Terms & Conditions';
                  } else if (index == 8) {
                    title = 'promotions Terms & conditions';
                  } else if (index == 9) {
                    title = 'Refunds and return policy';
                  } else if (index == 10) {
                    title = 'We Respect Your Policy';
                  } else if (index == 11) {
                    title = 'fees and payment';
                  } else if (index == 12) {
                    title = 'Who We Are';
                  } else if (index == 13) {
                    title = 'Join Our Team';
                  }
                  return ListTile(
                    title: Text(
                      title,
                      style: const TextStyle(fontWeight: FontWeight.w500),
                    ),
                    trailing: IconButton(
                        onPressed: () {}, icon: const Icon(Icons.arrow_right)),
                  );
                },
                separatorBuilder: (ctx, index) {
                  return const Divider();
                },
                itemCount: 14),
          ))
        ],
      ),
    );
  }
}
