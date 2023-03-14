import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:marrify/const/color/colors.dart';
import 'package:marrify/const/fonts/fonts.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Notification',
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
                title: Text('Harikrishnan viewed your Profile'),
                trailing: Text(
                  'just now',
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
