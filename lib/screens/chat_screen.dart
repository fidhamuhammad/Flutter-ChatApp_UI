import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  final String userName;
  final String userImage;

  const ChatScreen({super.key, required this.userName, required this.userImage});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final List<Map<String, dynamic>> messages = [
    {'text': "Hello!", 'isSentByMe': true, 'time': '10:30 AM'},
    {'text': "Hi there!", 'isSentByMe': false, 'time': '10:32 AM'},
    {'text': "How are you?", 'isSentByMe': true, 'time': '10:35 AM'},
    {'text': "I'm good, thanks! And you?", 'isSentByMe': false, 'time': '10:37 AM'},
  ];

  final TextEditingController _controller = TextEditingController();

  void _sendMessage() {
    if (_controller.text.trim().isEmpty) return;

    setState(() {
      messages.add({
        'text': _controller.text,
        'isSentByMe': true,
        'time': '10:45 AM', // Static time for now
      });
    });

    _controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final brightness = theme.brightness;
    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: theme.cardColor,
        // backgroundColor: Color(0xff292F3F),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Theme.of(context).iconTheme.color, // Dynamically change color based on theme
            
            ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(widget.userImage),
            ),
            SizedBox(width: 10),
            Text(widget.userName,
            style: theme.textTheme.headlineSmall,
            ),
            
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (context, index) {
                final message = messages[index];
                final isSentByMe = message['isSentByMe'] as bool;
                return Align(
                  alignment:
                  isSentByMe ? Alignment.centerRight : Alignment.centerLeft,
                  //  message['isSentByMe']
                  //     ? Alignment.centerRight
                  //     : Alignment.centerLeft,
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    decoration: BoxDecoration(
                      // color: message['isSentByMe']
                      //     ? Colors.blueAccent
                      //     : Colors.grey[800],
                      color: isSentByMe ? theme.colorScheme.primary : theme.cardColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: 
                      isSentByMe 
                          ? CrossAxisAlignment.end
                          : CrossAxisAlignment.start,
                      children: [
                        Text(
                          message['text'],
                          style: theme.textTheme.bodyMedium!.copyWith(
                            color: isSentByMe ? theme.colorScheme.onPrimary : theme.textTheme.bodyMedium!.color,
                          )
                          // TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        SizedBox(height: 5),
                        Text(
                          message['time'],
                          style: theme.textTheme.bodySmall!.copyWith(
                            color: isSentByMe
                                ? theme.colorScheme.onPrimary.withOpacity(0.7)
                                : theme.textTheme.bodySmall!.color,),
                          // TextStyle(color: Colors.grey[400], fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    style: theme.textTheme.bodyMedium,
                    decoration: InputDecoration(
                      hintText: 'Type a message...',
                     hintStyle: theme.textTheme.bodyMedium!.copyWith(
                        color: theme.hintColor,
                      ),
                      filled: true,
                      fillColor: theme.cardColor,
                      // Color(0xff292F3F),
                      contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                CircleAvatar(
                  // backgroundColor: Colors.blueAccent,
                  backgroundColor: theme.colorScheme.primary,
                  child: IconButton(
                    // icon: Icon(Icons.send, color: Colors.white),
                    icon: Icon(Icons.send, color: theme.colorScheme.onPrimary),
                    onPressed: _sendMessage,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}









// import 'package:flutter/material.dart';

// class ChatScreen extends StatefulWidget {
//   final String userName;
//   final String userImage;
//   const ChatScreen({super.key, required this.userName, required this.userImage});

//   @override
//   State<ChatScreen> createState() => _ChatScreenState();
// }

// class _ChatScreenState extends State<ChatScreen> {
//   final List<Map<String, dynamic>> messages = [
//     {'text': 'Hello!', 'isSentByMe': true, 'time': '10:30 AM'},
//     {'text': 'Hi there!', 'isSentByMe': false, 'time': '10:32 AM'},
//     {'text': 'How are you?', 'isSentByMe': true, 'time': '10:35 AM'},
//     {'text': 'I\'m good, thanks! And you?', 'isSentByMe': false, 'time': '10:37 AM'},
//   ];
//   final TextEditingController _controller = TextEditingController();

//   void _sendMessage(){
//     if (_controller.text.trim().isEmpty) return;

//     setState(() {
//       messages.add({
//         'text': _controller.text,
//         'isSentByme': true,
//         'time' : '10:45 Am'
//       });
//       _controller.clear();
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xff1B202D),
//       appBar: AppBar(
//         backgroundColor: Color(0xff292F3F),
//         leading: IconButton(
//           onPressed:  () {
//             Navigator.of(context).pop();
//           },
//            icon: Icon(Icons.arrow_back),
//            ),
//            title: Row(
//             children: [
//               CircleAvatar(
//                 backgroundImage: AssetImage(widget.userImage),
//               ),
//               SizedBox(width: 10,),
//               Text(widget.userName),
//             ],
//            ),
//       ),
//       body: Column(
//         children: [
//           Expanded(
            
//             child: ListView.builder(
//               itemCount: messages.length,
//               itemBuilder: (context, index) {
//                 final message = messages[index];
//                 return Align(
//                   alignment: message['isSentByMe']
//                       ? Alignment.centerRight
//                       : Alignment.centerLeft,
//                   child: Container(
//                      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
//                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
//                      decoration: BoxDecoration(
//                               color: message['isSentByMe']
//                                   ? Colors.blueAccent
//                                   : Colors.grey[800],
//                               borderRadius: BorderRadius.circular(20),
//                             ),
//                             child: Column(
//                               crossAxisAlignment: message['isSentByMe']
//                                   ? CrossAxisAlignment.end
//                                   : CrossAxisAlignment.start,
//                                   children: [
//                                 Text(
//                                   message['text'],
//                                   style: TextStyle(color: Colors.white, fontSize: 16),
//                                 ),
//                                 SizedBox(height: 5),
//                                 Text(
//                                   message['time'],
//                                   style: TextStyle(color: Colors.grey[400], fontSize: 12),
//                                 ),
//                                 ],
//                             ),
                            
//                   ),
//                 );
//             },
//             ),
            
            
//           ),
//           Padding(
//             padding: const EdgeInsets.all(10.0),
//             child: Row(
//               children: [
//                 Expanded(
//                   child: TextField(
//                     controller: _controller,
//                     style: TextStyle(color: Colors.white),
//                     decoration: InputDecoration(
//                       hintText: 'Type a message...',
//                       hintStyle: TextStyle(color: Colors.grey),
//                       filled: true,
//                       fillColor: Color(0xff292F3F),
//                       contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(30),
//                         borderSide: BorderSide.none,
//                       )
//                     ),         
//                   ),
                  
//                 ),
//                 SizedBox(width: 10,),
//                 CircleAvatar(
//                   backgroundColor: Colors.blueAccent,
//                   child: IconButton(
//                     icon: Icon(Icons.send, color: Colors.white),
//                     onPressed: _sendMessage,
//                   ),
//                 )
//               ],
//             ),
//             )
//         ],
        
//       ),
//     );
//   }
// }