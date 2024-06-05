import 'package:flutter/material.dart';
import 'package:flutter_videos_share/presentation/screens.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              title: const Text('App Video Share'),
              actions: [
                IconButton(onPressed: (){
                  //context.push('/permissions');
                }, 
                icon: const Icon( Icons.settings )
                )
              ]
            ),
            const MainMenu(),
          ],
        ),
      ),
    );
  }
}



