import 'package:chat_app/screens/chat_screen.dart';
import 'package:chat_app/widgets/utils/app_style.dart';
import 'package:flutter/material.dart';

import 'utils/app_style.dart';

class ChatListTile extends StatelessWidget {
  final List<Map<String, String>> users = [
    {'name': 'Bobo', 'image': 'assets/images/profil_img0.png'},
    {'name': 'Alice', 'image': 'assets/images/profile_img1.png'},
    {'name': 'Charlie', 'image': 'assets/images/profile_img2.png'},
    {'name': 'Lala', 'image': 'assets/images/profile_img3.png'},
    {'name': 'Chikki', 'image': 'assets/images/profile_img4.png'},
    {'name': 'Deyli', 'image': 'assets/images/profile_img5.png'},
    {'name': 'yella', 'image': 'assets/images/profile_img6.png'},
  ];

  ChatListTile({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
       final brightness = theme.brightness;

    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (context, index) {
        final user = users[index];
        return GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ChatScreen(
                    userName: user['name']!,
                    userImage: user['image']!,
                  ),
                ));
          },
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              decoration: BoxDecoration(
                color: Styles.getContainerColor(brightness),
                //  Color(0xff292F3F),
                borderRadius: BorderRadius.circular(35),
              ),
              child: Container(
                padding: EdgeInsets.all(15),
                // margin: EdgeInsets.symmetric(vertical: 5),
                margin: EdgeInsets.zero, // Remove space between items
                decoration: BoxDecoration(
                    color: Styles.getContainerColor(brightness),
                    //  Color(0xff292F3F),
                    borderRadius: BorderRadius.circular(35)),

                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(user['image']!),
                        backgroundColor: theme.colorScheme.secondary,
                        // Theme.of(context).primaryColor,
                      ),
                      SizedBox(width: 15),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              user['name']!,
                              style: theme.textTheme.bodyMedium,
                              //  TextStyle(
                              //   color: Colors.white,
                              //   fontSize: 18,
                              //   fontWeight: FontWeight.bold,
                              // ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Last message goes here...',
                              style: theme.textTheme.bodyMedium,
                              // TextStyle(
                              //   color: Colors.grey[600],
                              //   fontSize: 16,
                              // ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        '10:30 AM',
                        style: theme.textTheme.bodyMedium,
                        //  TextStyle(
                        //   color: Colors.grey[600],
                        //   fontSize: 14,
                        // ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
