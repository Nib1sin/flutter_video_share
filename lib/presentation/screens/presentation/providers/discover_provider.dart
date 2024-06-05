import 'package:flutter/material.dart';
import 'package:flutter_videos_share/domain/entities/vide_post.dart';
import 'package:flutter_videos_share/shared/data/local_video_posts.dart';
import 'package:flutter_videos_share/infrastructure/models/local_video_model.dart';

class DiscoverProvider extends ChangeNotifier {

  //!TODO: Repository, DataSource

  bool initialLoading = true;
  List<VideoPost> videos = [];


  Future<void> loadNextPage() async {

    // await Future.delayed( const Duration(seconds: 2) );

    final List<VideoPost> newVideos = videoPosts.map( 
      ( video ) => LocalVideoModel.fromJson(video).toVideoPostEntity()
    ).toList();
    
    videos.addAll( newVideos );
    initialLoading = false;
    notifyListeners();
  }


}