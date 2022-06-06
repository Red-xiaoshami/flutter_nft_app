import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class productDetail extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _productDetail();
  }
}

class _productDetail extends State<productDetail> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListView(children: [
        Column(
          children: [
            Container(
              width: double.infinity,
              height: 450,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/光寒.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                margin: const EdgeInsets.only(bottom: 20),
                child: Flex(
                  direction: Axis.horizontal,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    SvgPicture.asset(
                      "images/icon_detail_lock.svg",
                      width: 12,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        "购买即可体验内容",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/光寒.jpeg"),
                  fit: BoxFit.cover,
                  repeat: ImageRepeat.repeat,
                ),
              ),
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(210, 0, 0, 0),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 15,
                    right: 15,
                    top: 15,
                    bottom: 15,
                  ),
                  child: Column(
                    children: [
                      Flex(
                        direction: Axis.horizontal,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Flex(
                              direction: Axis.horizontal,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline
                                  .alphabetic, // CrossAxisAlignment.baseline 的时候必须设置
                              children: const [
                                Text(
                                  "¥",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Text(
                                  "128",
                                  style: TextStyle(
                                    fontSize: 38,
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 40,
                            width: 1,
                            margin: const EdgeInsets.only(
                              left: 10,
                              right: 20,
                            ),
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(210, 209, 202, 202),
                            ),
                          ),
                          const Image(
                            image: AssetImage("images/icon_rare_3x.png"),
                            width: 48,
                          ),
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                          top: 15,
                        ),
                        width: double.infinity,
                        child: const Text(
                          "《仙剑奇侠传七》数字神兵-光寒",
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 30,
                          bottom: 35,
                        ),
                        child: GestureDetector(
                          onTap: () => {
                            showModalBottomSheet(
                              context: context,
                              useRootNavigator: true,
                              isScrollControlled: true,
                              builder: (BuildContext context) {
                                return Container(
                                  padding: const EdgeInsets.only(
                                    top: 10,
                                    bottom: 30,
                                    left: 10,
                                    right: 10,
                                  ),
                                  height: 430,
                                  color: Color.fromARGB(255, 51, 51, 51),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 15),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Flex(
                                              direction: Axis.horizontal,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: const [
                                                Image(
                                                  image: AssetImage(
                                                      "images/icon_detail_logo@3x.png"),
                                                  fit: BoxFit.cover,
                                                  width: 16,
                                                  height: 14,
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    left: 10,
                                                  ),
                                                  child: Text(
                                                    "品牌保障",
                                                    style: TextStyle(
                                                      fontSize: 15,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      height: 2,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        padding:
                                            const EdgeInsets.only(bottom: 20),
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Flex(
                                                  direction: Axis.horizontal,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: const [
                                                    Icon(
                                                      Icons.task_alt,
                                                      size: 20,
                                                      color: Colors.white,
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 5),
                                                      child: Text(
                                                        "官方授权",
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          height: 2,
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                )
                                              ],
                                            ),
                                            const Padding(
                                              padding: EdgeInsets.only(
                                                top: 5,
                                              ),
                                              child: Text(
                                                "该商品由品牌方官方授权，幻核平台联合代理发行，购买后可以凭借售后凭证信息进行正品验证，盗版必究。",
                                                style: TextStyle(
                                                  fontSize: 13,
                                                  color: Colors.white38,
                                                  fontWeight: FontWeight.normal,
                                                  height: 1.4,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        padding:
                                            const EdgeInsets.only(bottom: 20),
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Flex(
                                                  direction: Axis.horizontal,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: const [
                                                    Icon(
                                                      Icons.task_alt,
                                                      size: 20,
                                                      color: Colors.white,
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 5),
                                                      child: Text(
                                                        " 腾讯区块链®技术支持 ",
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          height: 2,
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                )
                                              ],
                                            ),
                                            const Padding(
                                              padding: EdgeInsets.only(
                                                top: 5,
                                              ),
                                              child: Text(
                                                " 幻核数字藏品是基于「腾讯区块链®」技术协议发行的数字藏品。每个数字藏品在「腾讯区块链®」都有链上唯一标识，且不可篡改。「腾讯区块链®」为数字藏品的发行交易提供区块链底层技术支持，为幻核数字收藏平台提供可信存证技术、数字藏品凭证技术服务。 ",
                                                style: TextStyle(
                                                  fontSize: 13,
                                                  color: Colors.white38,
                                                  fontWeight: FontWeight.normal,
                                                  height: 1.4,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        padding:
                                            const EdgeInsets.only(bottom: 20),
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Flex(
                                                  direction: Axis.horizontal,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: const [
                                                    Icon(
                                                      Icons.task_alt,
                                                      size: 20,
                                                      color: Colors.white,
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 5),
                                                      child: Text(
                                                        " 限量发行 ",
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          height: 2,
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                )
                                              ],
                                            ),
                                            const Padding(
                                              padding: EdgeInsets.only(
                                                top: 5,
                                              ),
                                              child: Text(
                                                " 所有数字商品均为限量、限时发售，每个发售的数字商品均持有独一无二的所有权凭证。同时，平台将会致力于持续升级商品的消费和收藏体验。遇到心动的商品，就请果断入手吧！ ",
                                                style: TextStyle(
                                                  fontSize: 13,
                                                  color: Colors.white38,
                                                  fontWeight: FontWeight.normal,
                                                  height: 1.4,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            )
                          },
                          child: Flex(
                            direction: Axis.horizontal,
                            children: [
                              Expanded(
                                flex: 1,
                                child: Row(
                                  children: const [
                                    Image(
                                      image: AssetImage(
                                          "images/icon_detail_logo@3x.png"),
                                      width: 14,
                                    ),
                                    Text(
                                      " 官方授权 • 腾讯区块链®技术支持 • 限量发行 ",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.white,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Icon(
                                Icons.chevron_right,
                                color: Colors.white70,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Flex(
                        direction: Axis.horizontal,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(
                              right: 10,
                            ),
                            child: Image(
                              image: AssetImage("images/logo.jpeg"),
                              width: 44,
                            ),
                          ),
                          Flex(
                            direction: Axis.vertical,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(
                                  bottom: 5,
                                ),
                                child: Text(
                                  "仙剑奇侠传",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                              Text(
                                "《仙剑奇侠传》是一款国民级仙侠IP。",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white38,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(
                              top: 20,
                              bottom: 15,
                            ),
                            child: Flex(
                              direction: Axis.horizontal,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                Text(
                                  "藏品描述",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Image(
                            image: AssetImage("images/1.jpeg"),
                            fit: BoxFit.cover,
                          ),
                          const Image(
                            image: AssetImage("images/2.jpeg"),
                            fit: BoxFit.cover,
                          ),
                          const Image(
                            image: AssetImage("images/4.jpeg"),
                            fit: BoxFit.cover,
                          ),
                          const Image(
                            image: AssetImage("images/5.jpeg"),
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                      Container(
                        width: double.infinity,
                        alignment: Alignment.centerLeft,
                        padding: const EdgeInsets.only(
                          top: 20,
                          bottom: 80,
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                              ),
                              child: Flex(
                                direction: Axis.horizontal,
                                children: const [
                                  Text(
                                    "藏品信息",
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.white,
                                      fontWeight: FontWeight.normal,
                                      height: 2,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Flex(
                              direction: Axis.horizontal,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  "品牌方",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white54,
                                    fontWeight: FontWeight.normal,
                                    height: 2,
                                  ),
                                ),
                                Text(
                                  "LINE FRIENDS",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white54,
                                    fontWeight: FontWeight.normal,
                                    height: 2,
                                  ),
                                ),
                              ],
                            ),
                            Flex(
                              direction: Axis.horizontal,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  "发行方",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white54,
                                    fontWeight: FontWeight.normal,
                                    height: 2,
                                  ),
                                ),
                                Text(
                                  "幻核",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white54,
                                    fontWeight: FontWeight.normal,
                                    height: 2,
                                  ),
                                ),
                              ],
                            ),
                            Flex(
                              direction: Axis.horizontal,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  "发行日期",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white54,
                                    fontWeight: FontWeight.normal,
                                    height: 2,
                                  ),
                                ),
                                Text(
                                  "2022/4/26",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white54,
                                    fontWeight: FontWeight.normal,
                                    height: 2,
                                  ),
                                ),
                              ],
                            ),
                            Flex(
                              direction: Axis.horizontal,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  "主题编号",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white54,
                                    fontWeight: FontWeight.normal,
                                    height: 2,
                                  ),
                                ),
                                Text(
                                  "H2022042644014050",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white54,
                                    fontWeight: FontWeight.normal,
                                    height: 2,
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
              ),
            ),
          ],
        )
      ]),
    );
  }
}
