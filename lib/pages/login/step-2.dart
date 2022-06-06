import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:async';

class loginStep2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _loginStep2();
  }
}

class _loginStep2 extends State<loginStep2> {
  late Timer _timer;
  int _count = 0;

  myTimer() {
    _timer = Timer.periodic(const Duration(milliseconds: 1000), (t) {
      _count++;
      if (_count == 60) {
        _count = 0;
        t.cancel();
      }
      setState(() {});
    });
  }

  @override
  void dispose() {
    if (_timer != null) {
      // 判断定时器是否是激活状态
      if (_timer.isActive) {
        _timer.cancel();
      }
    }
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: const EdgeInsets.only(
          left: 50,
          right: 50,
        ),
        color: const Color.fromARGB(255, 0, 0, 0),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(
                top: 180,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "输入验证码",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 15,
              ),
              child: Column(
                children: [
                  Wrap(
                    direction: Axis.horizontal,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    alignment: WrapAlignment.center,
                    spacing: 0,
                    children: [
                      const Text(
                        "已发送到15117916578",
                        style: TextStyle(
                          color: Colors.white38,
                          fontSize: 15,
                        ),
                      ),
                      Visibility(
                        visible: _count == 0,
                        child: TextButton(
                          onPressed: () {
                            myTimer();
                          },
                          child: const Text(
                            "重新发送",
                            style: TextStyle(
                              color: Color.fromARGB(255, 80, 209, 244),
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                      Visibility(
                        visible: _count != 0,
                        child: Text(
                          " 重新发送($_count)S",
                          style: const TextStyle(
                            color: Color.fromARGB(255, 98, 135, 146),
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Flex(
                    direction: Axis.horizontal,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(
                          left: 5,
                          right: 5,
                        ),
                        width: 45,
                        child: TextField(
                          style: const TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                          ),
                          autofocus: false,
                          textAlign: TextAlign.center,
                          cursorColor: Colors.white70,
                          maxLength: 1,
                          decoration: const InputDecoration(
                            // 未获取焦点的时候的border
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white70,
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white70,
                              ),
                            ),
                          ),
                          onChanged: (value) {},
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                          left: 5,
                          right: 5,
                        ),
                        width: 45,
                        child: TextField(
                          style: const TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                          ),
                          autofocus: false,
                          textAlign: TextAlign.center,
                          cursorColor: Colors.white70,
                          maxLength: 1,
                          decoration: const InputDecoration(
                            // 未获取焦点的时候的border
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white70,
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white70,
                              ),
                            ),
                          ),
                          onChanged: (value) {},
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                          left: 5,
                          right: 5,
                        ),
                        width: 45,
                        child: TextField(
                          style: const TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                          ),
                          autofocus: false,
                          textAlign: TextAlign.center,
                          cursorColor: Colors.white70,
                          maxLength: 1,
                          decoration: const InputDecoration(
                            // 未获取焦点的时候的border
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white70,
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white70,
                              ),
                            ),
                          ),
                          onChanged: (value) {},
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                          left: 5,
                          right: 5,
                        ),
                        width: 45,
                        child: TextField(
                          style: const TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                          ),
                          autofocus: false,
                          textAlign: TextAlign.center,
                          cursorColor: Colors.white70,
                          maxLength: 1,
                          decoration: const InputDecoration(
                            // 未获取焦点的时候的border
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white70,
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white70,
                              ),
                            ),
                          ),
                          onChanged: (value) {},
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                          left: 5,
                          right: 5,
                        ),
                        width: 45,
                        child: TextField(
                          style: const TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                          ),
                          autofocus: false,
                          textAlign: TextAlign.center,
                          cursorColor: Colors.white70,
                          maxLength: 1,
                          decoration: const InputDecoration(
                            // 未获取焦点的时候的border
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white70,
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white70,
                              ),
                            ),
                          ),
                          onChanged: (value) {},
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                          left: 5,
                          right: 5,
                        ),
                        width: 45,
                        child: TextField(
                          style: const TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                          ),
                          autofocus: false,
                          textAlign: TextAlign.center,
                          cursorColor: Colors.white70,
                          maxLength: 1,
                          decoration: const InputDecoration(
                            // 未获取焦点的时候的border
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white70,
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white70,
                              ),
                            ),
                          ),
                          onChanged: (value) {},
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
