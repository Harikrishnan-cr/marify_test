import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:marrify/const/color/colors.dart';
import 'package:marrify/const/fonts/fonts.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});
  final ismessage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Message',
          style: GoogleFont.otherAppBarTextStyle,
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1545418776-a37fba72a75d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8cGVyc29uc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=400&q=60'),
                ),
                title: Text('Name'),
                subtitle: Text(
                  'SSSSSSSSSSSSSSSSSSSdddddffffffffffffffffdddddddSSSSS',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                trailing: ismessage
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            '10:50 am',
                            style: GoogleFont.messageScreenTimeTextStyle,
                          ),
                          CircleAvatar(
                            radius: 10,
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: LinearGradient(
                                  colors: [
                                    MarraifyColors.grediantColorTwo,
                                    MarraifyColors.grediantColorOne
                                  ],
                                ),
                              ),
                              child: Center(child: Text('2')),
                            ),
                          ),
                        ],
                      )
                    : Text(
                        '10 : 45 pm',
                        style: GoogleFont.messageScreenTimeTextStyle,
                      ));
          },
          separatorBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 90, right: 20),
              child: Divider(thickness: 0.05, color: MarraifyColors.greyColor),
            );
          },
          itemCount: 10),
    );
  }
}
