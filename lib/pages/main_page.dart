import 'package:flutter/material.dart';
import '../widgets/nav_item.dart';
import '../pages/dummy_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  void navigateToDummyPage(BuildContext context, String title) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DummyPage(title: title),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Main Page")),
      body: const Center(child: Text("Welcome to the Main Page!")),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            NavItem(
              icon: Icons.home,
              label: "Home",
              onTap: () => navigateToDummyPage(context, "Home Page"),
            ),
            NavItem(
              icon: Icons.event,
              label: "Tickets",
              onTap: () => navigateToDummyPage(context, "Tickets Page"),
            ),
            NavItem(
              icon: Icons.account_circle,
              label: "Profile",
              onTap: () => navigateToDummyPage(context, "Profile Page"),
            ),
          ],
        ),
      ),
    );
  }
}
