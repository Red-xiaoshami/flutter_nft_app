import 'package:flutter/material.dart';
import 'pages/index/video.dart';
import 'package:nft_flutter/pages/index/guid.dart';
import 'package:nft_flutter/routes/index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '首页',
      initialRoute: "/",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: const Color.fromARGB(218, 0, 0, 0),
      ),
      home: const MyHomePage(title: '幻核'),
      locale: const Locale('zh', 'CN'),
      routes: {
        // "/": (context) => MyHomePage(title: '首页'),
        "detail_page": Routers.detailPageRoutes(),
        "profuct_detail_page": Routers.productDetailPageRoutes(),
        "login_steps_1": Routers.loginStep1PageRoutes(),
        "login_steps_2": Routers.loginStep2PageRoutes(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(
            widget.title,
            style: const TextStyle(
              letterSpacing: 5,
              fontSize: 20,
            ),
          ),
          centerTitle: false,
          titleSpacing: 0, // 设置文字和图片icon之间的距离
          backgroundColor: const Color.fromARGB(1, 0, 0, 0),
          leading: IconButton(
            icon: const Image(
              image: AssetImage("images/icon_detail_logo@3x.png"),
              fit: BoxFit.cover,
              width: 30,
            ),
            tooltip: 'Navigation',
            onPressed: () => debugPrint('标题 icon'),
            iconSize: 20,
          ),
        ),
        body: Center(
          child: ListView(
            shrinkWrap: false,
            padding: const EdgeInsets.fromLTRB(10, 20, 10, 120),
            children: <Widget>[
              const VideoPlayerScreen(),
              const VideoPlayerScreen(),
              const VideoPlayerScreen(),
              guidImage()
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color.fromARGB(218, 0, 0, 0),
          selectedItemColor: const Color.fromARGB(218, 126, 235, 235),
          unselectedItemColor: Colors.white,
          items: const [
            BottomNavigationBarItem(
              backgroundColor: Colors.white,
              icon: Icon(Icons.home),
              label: "首页",
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.white,
              icon: Icon(Icons.account_circle_rounded),
              label: "我的",
            ),
          ],
        ));
  }
}
