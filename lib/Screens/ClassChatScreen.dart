import 'package:flutter/material.dart';

class ClassChatScreen extends StatefulWidget {
  final String? teacherName;
  final String? courseName;
  const ClassChatScreen({this.teacherName, this.courseName});

  @override
  State<ClassChatScreen> createState() => _ClassChatScreenState();
}

class _ClassChatScreenState extends State<ClassChatScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          backgroundColor: Color(0xff8C9EFF),
          automaticallyImplyLeading: false,
          // leading: Padding(
          //   padding: const EdgeInsets.all(7.0),
          //   child: CircleAvatar(
          //     backgroundColor: Colors.transparent,
          //     radius: 3,
          //     backgroundImage: AssetImage(
          //         "assets/337873474_916500876166630_7083829185730731194_n.jpg"),
          //     // Image.asset(
          //     //     "assets/337873474_916500876166630_7083829185730731194_n.jpg"),
          //   ),
          // ),
          title: Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: 25,
                  backgroundImage: AssetImage(
                      "assets/337873474_916500876166630_7083829185730731194_n.jpg"),
                  // Image.asset(
                  //     "assets/337873474_916500876166630_7083829185730731194_n.jpg"),
                ),
                SizedBox(
                  width: size.width * 0.03,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      widget.courseName!,
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      widget.teacherName!,
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Text(
                        "Class Talk",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          bottom: TabBar(
            labelPadding: EdgeInsets.symmetric(
              horizontal: 2,
            ),
            tabs: [
              Tab(
                text: "Chat",
              ),
              Tab(
                text: "Announcement",
              ),
              Tab(
                text: "Lecture",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ChatScreen(),
            AnnouncementScreen(),
            LectureScreen(),
          ],
        ),
      ),
    );
  }
}

// class ChatScreen extends StatefulWidget {
//   const ChatScreen({Key? key}) : super(key: key);
//
//   @override
//   State<ChatScreen> createState() => _ChatScreenState();
// }
//
// class _ChatScreenState extends State<ChatScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         color: Colors.grey,
//         width: double.infinity,
//         child: Column(
//           children: [
//             Container(
//               child: ListView.builder(
//                   itemCount: 3,
//                   itemBuilder: (context, index) {
//                     return Container(
//                       padding: EdgeInsets.only(
//                           left: 20, bottom: 2, right: 15, top: 10),
//                       decoration: BoxDecoration(
//                         color: Colors.black38.withAlpha(30),
//                         borderRadius: BorderRadius.only(
//                           topRight: Radius.circular(20),
//                           bottomRight: Radius.circular(20),
//                           bottomLeft: Radius.circular(20),
//                         ),
//                       ),
//                       child: Text(
//                         "Today Quiz",
//                         softWrap: true,
//                       ),
//                     );
//                   }),
//             )
//
//             // Container(
//             //   height: 500,
//             //   width: 800,
//             //   child: ListView.builder(
//             //       // padding: EdgeInsets.symmetric(horizontal: 50),
//             //       itemCount: 3,
//             //       itemBuilder: (context, index) {
//             //         return index.isOdd
//             //             ? Container(
//             //                 padding: EdgeInsets.only(
//             //                     left: 20, bottom: 2, right: 15, top: 10),
//             //                 decoration: BoxDecoration(
//             //                   color: Colors.black38.withAlpha(30),
//             //                   borderRadius: BorderRadius.only(
//             //                     topRight: Radius.circular(20),
//             //                     bottomRight: Radius.circular(20),
//             //                     bottomLeft: Radius.circular(20),
//             //                   ),
//             //                 ),
//             //                 child: Text(
//             //                   "Today Quiz",
//             //                   softWrap: true,
//             //                 ),
//             //               )
//             //             : Padding(
//             //                 padding: const EdgeInsets.all(8.0),
//             //                 child: Container(
//             //                   padding: EdgeInsets.only(
//             //                       left: 20, bottom: 2, right: 15, top: 10),
//             //                   decoration: BoxDecoration(
//             //                     color: Colors.black38.withAlpha(30),
//             //                     borderRadius: BorderRadius.only(
//             //                       topLeft: Radius.circular(20),
//             //                       bottomRight: Radius.circular(20),
//             //                       bottomLeft: Radius.circular(20),
//             //                     ),
//             //                   ),
//             //                   child: Text(
//             //                     "Today Quiz",
//             //                     softWrap: true,
//             //                   ),
//             //                 ),
//             //               );
//             //       }),
//             // ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class AnnouncementScreen extends StatefulWidget {
  const AnnouncementScreen({Key? key}) : super(key: key);

  @override
  State<AnnouncementScreen> createState() => _AnnouncementScreenState();
}

class _AnnouncementScreenState extends State<AnnouncementScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.grey.withOpacity(0.6),
          width: double.infinity,
          height: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding:
                    EdgeInsets.only(left: 20, bottom: 2, right: 15, top: 10),
                decoration: BoxDecoration(
                  color: Colors.black38.withAlpha(30),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                ),
                child: Text(
                  "Today Quiz",
                  softWrap: true,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding:
                    EdgeInsets.only(left: 20, bottom: 2, right: 15, top: 10),
                decoration: BoxDecoration(
                  color: Colors.black38.withAlpha(30),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                ),
                child: Text(
                  "CR Arrange makeup class tomorrow",
                  softWrap: true,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding:
                    EdgeInsets.only(left: 20, bottom: 2, right: 15, top: 10),
                decoration: BoxDecoration(
                  color: Colors.black38.withAlpha(30),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                ),
                child: Text(
                  "CR Arrange class",
                  softWrap: true,
                ),
              ),
            ],
          )),
    );
  }
}

class LectureScreen extends StatefulWidget {
  const LectureScreen({Key? key}) : super(key: key);

  @override
  State<LectureScreen> createState() => _LectureScreenState();
}

class _LectureScreenState extends State<LectureScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey.withOpacity(0.6),
        child: ListView.builder(
            itemCount: 3,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                    color: Colors.black38.withAlpha(10),
                    borderRadius: BorderRadius.all(Radius.circular(16))),
                child: ListTile(
                  visualDensity: VisualDensity.compact,
                  leading: Image.asset(
                      "assets/png-transparent-adobe-pdf-logo-portable-document-format-computer-icons-icon-pdf-hd-miscellaneous-text-logo-removebg-preview.png"),
                  title: Text("Lec 6- Introduction to computing"),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Text("(What is computer?)"), Text("11 slides")],
                  ),
                  trailing: CircleAvatar(
                    backgroundColor: Colors.white12,
                    child: Icon(Icons.arrow_downward),
                  ),
                ),
              );
              // return Container(
              //   margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              //   decoration: BoxDecoration(
              //       color: Colors.purple,
              //       borderRadius: BorderRadius.circular(10),
              //       border: Border.all(color: Colors.black)),
              //   height: 70,
              // );
            }),
      ),
    );
  }
}

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _textController = TextEditingController();
  final List<ChatMessage> _messages = <ChatMessage>[];

  void _handleSubmitted(String text) {
    _textController.clear();
    ChatMessage message = ChatMessage(
      text: text,
    );
    setState(() {
      _messages.insert(0, message);
    });
  }

  Widget _buildTextComposer() {
    return IconTheme(
      data: IconThemeData(color: Theme.of(context).accentColor),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: <Widget>[
            Flexible(
              child: TextField(
                controller: _textController,
                onSubmitted: _handleSubmitted,
                decoration:
                    InputDecoration.collapsed(hintText: "Send a message"),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 4.0),
              child: IconButton(
                icon: Icon(
                  Icons.send,
                  color: Colors.black38,
                ),
                onPressed: () => _handleSubmitted(_textController.text),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey.withOpacity(0.6),
        child: Column(
          children: <Widget>[
            Flexible(
              child: ListView.builder(
                padding: EdgeInsets.all(8.0),
                reverse: false,
                itemCount: _messages.length,
                itemBuilder: (_, int index) => _messages[index],
              ),
            ),
            Divider(height: 1.0),
            Container(
              decoration: BoxDecoration(
                  // color: Theme.of(context).cardColor,
                  color: Colors.black38.withOpacity(0.2)),
              child: _buildTextComposer(),
            ),
          ],
        ),
      ),
    );
  }
}

class ChatMessage extends StatelessWidget {
  ChatMessage({required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Container(
          //   margin: const EdgeInsets.only(right: 14.0),
          //   child: CircleAvatar(child: Text('User')),
          // ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
                color: Colors.black38.withOpacity(0.2),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(16),
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16))),
            //margin: const EdgeInsets.only(top: 5.0),
            child: Text(
              text,
              style: TextStyle(fontSize: 15),
            ),
          ),
        ],
      ),
    );
  }
}
