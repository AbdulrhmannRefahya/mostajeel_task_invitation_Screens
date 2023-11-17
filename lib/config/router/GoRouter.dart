import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:invite_screens_mostajel_v001/pages/ReferralScreen.dart';
import 'package:invite_screens_mostajel_v001/pages/friends_list_to_invite.dart';

final GoRouter router=GoRouter(routes: <RouteBase>[
  GoRoute(path: '/',builder: (BuildContext context, GoRouterState state) {
    return ReferralScreen();
  },

  routes: <RouteBase>[
    GoRoute(path: 'FriendList',builder: (context, state) => FriendsList(items: ["asas","asass","asas"]),)
  ]
  )
]);