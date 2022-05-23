import 'package:flutter/material.dart';
import 'package:nft_flutter/pages/detail/components/product_list_item.dart';

class detailPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _detailPageState();
  }
}

class _detailPageState extends State<detailPage> {
  bool _showAllText = true;

  List list = []; //列表要展示的数据

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
    print("初始化数据");
  }

  //  初始化list数据 加延时模仿网络请求
  Future getData() async {
    setState(() {
      list = List.generate(15, (i) => '哈喽,我是原始数据 $i');
    });
  }

  Widget _renderRow(BuildContext context, int index) {
    return ListTile(
      title: Text(list[index]),
    );
  }

  /// 下拉刷新方法,为list重新赋值
  Future<Null> _onRefresh() async {
    print('refresh');
    setState(() {
      list = List.generate(20, (i) => '哈喽,我是新刷新的 $i');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 36, 80, 121),
        body: SingleChildScrollView(
          child: Stack(children: [
            const Image(
              image: AssetImage("images/1651233053520BG.png"),
            ),
            Container(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 260),
                        padding: const EdgeInsets.all(6),
                        color: const Color.fromARGB(255, 255, 255, 255),
                        child: const Text(
                          "05月13日15:00开售",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                        top: 15, right: 10, bottom: 20, left: 15),
                    color: const Color.fromARGB(160, 36, 90, 121),
                    width: 380,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "《仙剑奇侠传七》数字神兵",
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 0,
                                ),
                                child: Image(
                                  image: NetworkImage(
                                      'https://growth-1300522992.cos.ap-guangzhou.myqcloud.com/zz/xj/logo/logo.jpg'),
                                  width: 26,
                                  height: 26,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text("仙剑奇侠传",
                                    style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                      fontSize: 16,
                                    )),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 10),
                          child: Stack(
                            children: <Widget>[
                              Text(
                                '《仙剑奇侠传》是一款国民级仙侠IP，以五灵六界为世界观，糅合了中国特有的武侠和仙侠元素，作品内容极具国风特色。从1995年推出仙剑一代的单机角色扮演游戏后，至今已延续至第九部作品。除此之外，亦有影视、舞台剧、漫画等载体，仙剑系列有着深厚的粉丝基础，是影响了几代玩家的经典作品。',
                                style: const TextStyle(
                                  color: Color.fromARGB(205, 255, 255, 255),
                                  fontSize: 15,
                                  height: 1.5, // 设置高度 可以避免文字先半部分被遮挡
                                ),
                                overflow: !_showAllText
                                    ? TextOverflow.visible
                                    : TextOverflow.ellipsis,
                                maxLines: !_showAllText ? 100000 : 3,
                                textAlign: TextAlign.justify,
                              ),
                              Positioned(
                                bottom: 5,
                                right: 0,
                                child: Offstage(
                                  offstage: !_showAllText,
                                  child: GestureDetector(
                                    child: const Image(
                                      image: AssetImage("images/icon_down.png"),
                                      width: 12,
                                      height: 8,
                                    ),
                                    onTap: () => {
                                      setState(() {
                                        _showAllText = !_showAllText;
                                      })
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 88,
                    margin: const EdgeInsets.only(top: 15),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("images/lotterybanner.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Flex(
                        direction: Axis.horizontal,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flex(
                            direction: Axis.vertical,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "查看提前购资格抽奖结果",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                "189133人已参与",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  height: 2,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            width: 80,
                            height: 30,
                            decoration: const BoxDecoration(
                              color: Colors.transparent,
                              image: DecorationImage(
                                image: AssetImage("images/icons_btn.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: TextButton(
                                child: const Text(
                                  "去查看",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                onPressed: () => {print("object")}),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.only(
                      top: 15,
                      bottom: 15,
                    ),
                    decoration: const BoxDecoration(
                      border: Border(
                        top: BorderSide(
                          color: Color.fromARGB(160, 36, 90, 121),
                          width: 1,
                          style: BorderStyle.solid,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 0, right: 15),
                    child: Flex(
                      direction: Axis.horizontal,
                      mainAxisAlignment:
                          MainAxisAlignment.spaceBetween, // 和前端的flex一样
                      children: const [
                        Text(
                          "本期共8种藏品",
                          style: TextStyle(
                            color: Color.fromARGB(159, 158, 182, 197),
                            fontSize: 11,
                          ),
                        ),
                        Text(
                          "购买藏品需先在“我的”内完成实名认证",
                          style: TextStyle(
                            color: Color.fromARGB(159, 158, 182, 197),
                            fontSize: 11,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity, // 最大宽度
                    margin: const EdgeInsets.only(top: 15),
                    child: TextButton(
                      child: const Text(
                        "刷新列表",
                        style: TextStyle(
                          color: Color.fromARGB(160, 0, 202, 204),
                        ),
                      ),
                      style: ButtonStyle(
                        side: MaterialStateProperty.all(
                          const BorderSide(
                            color: Color.fromARGB(160, 0, 202, 204),
                            width: 1,
                          ),
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 15),
                    child: RefreshIndicator(
                        onRefresh: _onRefresh,
                        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
                        child: Column(
                          children: [
                            Wrap(
                              direction: Axis.horizontal,
                              spacing: 15,
                              runSpacing: 15,
                              children: [
                                productListItem(),
                                productListItem(),
                                productListItem(),
                                productListItem(),
                                productListItem(),
                                productListItem(),
                                productListItem(),
                                productListItem(),
                                productListItem(),
                                productListItem(),
                                productListItem(),
                                productListItem(),
                              ],
                            ),
                          ],
                        )),
                  )
                ],
              ),
            ),
          ]),
        ));
  }
}
