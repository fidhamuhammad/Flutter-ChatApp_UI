import 'package:chat_app/Widgets/profile.dart';
import 'package:chat_app/screens/theme_switch_page.dart';
import 'package:chat_app/widgets/chat_list_tile.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context); // Access the current theme

    return Scaffold(
      backgroundColor: theme
          .scaffoldBackgroundColor, // Use the scaffold background from the current theme
      // Color(0xff1B202D),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Messages',
                    style: theme.textTheme.headlineLarge,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 125,
                    ),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.search,
                            color: theme.colorScheme.secondary,
                            size: 36,
                          ),
                        ),
                        PopupMenuButton<String>(
                            onSelected: (value) {
                              if (value == 'Themes') {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ThemeSwitcherPage(),
                                    ));
                              }
                            },
                            icon: Icon(
                              Icons.more_vert,
                              color: theme.colorScheme.secondary,
                            ),
                            itemBuilder: (context) => [
                                  PopupMenuItem(
                                      value: 'Themes', child: Text('Themes'))
                                ]),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                "R E C E N T",
                style: theme.textTheme.bodyLarge,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            ProfileImage(),
            SizedBox(
              height: 10,
            ),
            Expanded(child: ChatListTile()),
          ],
        ),
      ),
    );
  }
}
