import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class loginStep1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _loginStep1();
  }
}

class _loginStep1 extends State<loginStep1> {
  late bool checkboxValue;
  late Color btnOpcity;
  late Color btnOpcity_0 = const Color.fromARGB(0, 0, 0, 0);
  late Color btnOpcity_100 = const Color.fromARGB(100, 0, 0, 0);
  @override
  void initState() {
    super.initState();
    checkboxValue = false;
    btnOpcity = btnOpcity_100;
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
                  "手机号登录",
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
                top: 60,
              ),
              child: Column(
                children: [
                  TextField(
                    style: const TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                    autofocus: false,
                    cursorColor: Colors.white70,
                    maxLength: 11,
                    decoration: const InputDecoration(
                      hintText: "输入手机号",
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
                      hintStyle: TextStyle(
                        fontSize: 17,
                        color: Colors.white60,
                        fontWeight: FontWeight.normal,
                      ),
                      suffixIcon: Icon(
                        Icons.highlight_off,
                        size: 20,
                        color: Colors.white60,
                      ),
                    ),
                    onChanged: (value) {
                      setState(() {
                        if (value.length == 11) {
                          btnOpcity = btnOpcity_0;
                        } else {
                          btnOpcity = btnOpcity_100;
                        }
                      });
                    },
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color.fromARGB(255, 253, 154, 243),
                    Color.fromARGB(255, 14, 248, 238),
                  ],
                  transform: GradientRotation(120),
                ),

                // 渐变色
                borderRadius: BorderRadius.circular(2),
              ),
              child: Container(
                color: btnOpcity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "login_steps_2");
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 44,
                    child: const Text(
                      '获取验证码',
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
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                ),
                child: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Transform.scale(
                      scale: 0.9,
                      child: Checkbox(
                        value: checkboxValue,
                        materialTapTargetSize: MaterialTapTargetSize.padded,
                        onChanged: (value) {
                          setState(() {
                            checkboxValue = !checkboxValue;
                          });
                        },
                        side: const BorderSide(
                          color: Colors.white60,
                        ),
                        activeColor: const Color.fromARGB(255, 106, 212, 244),
                        // checkColor: const Color.fromARGB(255, 3, 3, 3),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    Wrap(
                      direction: Axis.horizontal,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      spacing: -8,
                      runSpacing: -9,
                      children: [
                        const Text(
                          "我已同意",
                          style: TextStyle(
                            color: Colors.white38,
                            fontSize: 12,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            "《幻核软件许可及服务协议》",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        const Text(
                          "及",
                          style: TextStyle(
                            color: Colors.white38,
                            fontSize: 12,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            "《幻核隐私保护指引》",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
