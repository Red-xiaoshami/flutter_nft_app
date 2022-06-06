import 'dart:html';

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:nft_flutter/pages/detail/detail.dart';

class VideoPlayerScreen extends StatefulWidget {
  const VideoPlayerScreen({Key? key}) : super(key: key);

  @override
  _VideoPlayerScreenState createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();

    // Create and store the VideoPlayerController. The VideoPlayerController
    // offers several different constructors to play videos from assets, files,
    // or the internet.

    // _controller = VideoPlayerController.network(
    //   'https://growth-1300522992.cos.ap-guangzhou.myqcloud.com/zz/xj/home/xj_home.mp4',
    // );

    _controller = VideoPlayerController.asset("images/xj_home.mp4");

    // Initialize the controller and store the Future for later use.
    _initializeVideoPlayerFuture = _controller.initialize();

    // Use the controller to loop the video.
    _controller.setLooping(true);
    _controller.play();
  }

  @override
  void dispose() {
    // Ensure disposing of the VideoPlayerController to free up resources.
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(bottom: 30),
        child: Column(
          children: [
            FutureBuilder(
              future: _initializeVideoPlayerFuture,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  // If the VideoPlayerController has finished initialization, use
                  // the data it provides to limit the aspect ratio of the video.
                  return AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    // Use the VideoPlayer widget to display the video.
                    child: VideoPlayer(_controller),
                  );
                } else {
                  // If the VideoPlayerController is still initializing, show a
                  // loading spinner.
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              decoration: BoxDecoration(
                  color: const Color.fromARGB(221, 53, 52, 52),
                  borderRadius: BorderRadius.circular(2)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Padding(
                          padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                          child: SizedBox(
                            // width: 320,
                            child: Text(
                              '《仙剑奇侠传七》数字神兵',
                              softWrap: true,
                              style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                            ),
                          ))
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Image(
                          image: AssetImage("images/logo.jpeg"),
                          width: 26,
                          height: 26,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text("仙剑奇侠传",
                            style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                            )),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 20, 20, 25),
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromARGB(255, 253, 154, 243),
                            Color.fromARGB(255, 14, 248, 238),
                          ],
                          transform: GradientRotation(120),
                        ),

                        // 渐变色
                        borderRadius: BorderRadius.circular(2)),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "detail_page");
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 44,
                        child: const Text(
                          '立即查看',
                          style: TextStyle(
                            color: Color.fromARGB(255, 7, 6, 6),
                            fontSize: 16,
                          ),
                        ),
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.transparent),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
