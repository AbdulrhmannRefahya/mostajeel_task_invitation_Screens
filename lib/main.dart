import 'package:flutter/material.dart';
import 'package:invite_screens_mostajel_v001/config/router/GoRouter.dart';
import 'package:invite_screens_mostajel_v001/pages/ReferralScreen.dart';
import 'package:invite_screens_mostajel_v001/pages/friends_list_to_invite.dart';

void main(){
  runApp(inviteScreen());
}

class inviteScreen extends StatelessWidget {
  const inviteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router
    );
  }
}