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
        scaffoldBackgroundColor: Color.fromARGB(218, 0, 0, 0),
      ),
      home: const MyHomePage(title: '幻核'),
      locale: const Locale('zh', 'CN'),
      routes: {
        // "/": (context) => MyHomePage(title: '首页'),
        "detail_page": Routers.detailPageRoutes(),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title,
            style: TextStyle(letterSpacing: 5, fontSize: 20)),
        centerTitle: false,
        titleSpacing: 0, // 设置文字和图片icon之间的距离
        backgroundColor: Color.fromARGB(1, 0, 0, 0),
        leading: IconButton(
          icon: new Image.network(
            'https://huanhe-1300522992.cos.ap-guangzhou.myqcloud.com/assets/images/2%E6%9C%9F%E5%88%87%E5%9B%BE/icon_detail_logo%403x.png',
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
          padding: EdgeInsets.fromLTRB(10, 20, 10, 120),
          children: <Widget>[
            VideoPlayerScreen(),
            VideoPlayerScreen(),
            VideoPlayerScreen(),
            guidImage()
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
