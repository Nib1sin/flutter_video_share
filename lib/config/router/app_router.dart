
import 'package:go_router/go_router.dart';
import 'package:flutter_videos_share/presentation/screens.dart';

final appRouter = GoRouter(
  routes: [
  
    //! General
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),

    //! Permisos
    /*
    GoRoute(
      path: '/permissions',
      builder: (context, state) => const PermissionsScreen(),
    ),
    */


]);