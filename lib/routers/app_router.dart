

import 'package:go_router/go_router.dart';
import 'package:untitled2/pages/App/Home/Take_Away.dart';
import 'package:untitled2/routers/app_router_name.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(
    path: takeAwayRoute,
    builder: (context, state) => const Take_Away(),

  ),
]);
