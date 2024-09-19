import 'package:chat_app/widgets/chat_list_tile.dart';
import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  // List of users with their image paths and names
  final List<Map<String, String>> users = [
    {'name': 'Bobo', 'image': 'assets/images/profil_img0.png'},
    {'name': 'Alice', 'image': 'assets/images/profile_img1.png'},
    {'name': 'Charlie', 'image': 'assets/images/profile_img2.png'},
    {'name': 'Lala', 'image': 'assets/images/profile_img3.png'},
    {'name': 'Chikki', 'image': 'assets/images/profile_img4.png'},
    {'name': 'Deyli', 'image': 'assets/images/profile_img5.png'},
    {'name': 'yella', 'image': 'assets/images/profile_img6.png'},
  ];
  ProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return  
        Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            // color: Colors.blueGrey,
            borderRadius: BorderRadius.circular(10),
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              // crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: users.map<Widget>((user) {
                return Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10), // Space between items
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(user['image']!),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        user['name']!,
                        style: theme.textTheme.bodyMedium,
                        // TextStyle(color: Colors.white, fontSize: 18, fontFamily: 'Quicksand'), 
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
            
          ),
        );
       
  }
}
    // Container(
    //   padding: EdgeInsets.all(20),
    //   decoration: BoxDecoration(
    //     color: Colors.blueGrey,
    //     borderRadius: BorderRadius.circular(10),
    //   ),
    //   child: Column(
    //     crossAxisAlignment: CrossAxisAlignment.center,
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     children: users.map(user){
    //       return Padding(
    //         padding: const EdgeInsets.only(bottom: 20), // Space between items
    //         child :
    //       );
    //     },
    //   )
    // );


// Row(
//         children:  [
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               CircleAvatar(
//                 radius: 30,
//                 backgroundImage:
//                     Image.asset('assets/images/profil_img0.png').image,
//               ),
//               const SizedBox(
//                 height: 5,
//               ),
//               const Text(
//                 'Bobo',
//                 style: TextStyle(color: Colors.white, fontSize: 18),
//               ),
//             ],
//           ),
//         ],
//       ),
