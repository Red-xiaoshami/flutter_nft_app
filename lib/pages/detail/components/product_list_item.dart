import 'package:flutter/material.dart';

class productListItem extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _productListItem();
  }
}

class _productListItem extends State<productListItem> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 165,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 180,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/碧海剑.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              height: double.infinity,
              decoration: const BoxDecoration(
                color: Color.fromARGB(168, 0, 0, 0),
              ),
              child: const Center(
                child: Image(
                  image: AssetImage("images/sell-all.png"),
                  width: 80,
                ),
              ),
            ),
          ),
          Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(168, 0, 0, 0),
              ),
              padding: const EdgeInsets.all(5),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 5,
                      bottom: 10,
                    ),
                    child: Text(
                      "《仙剑奇侠传七》数字神兵-碧海剑",
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Flex(
                    direction: Axis.horizontal,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "¥128",
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        "剩0件",
                        style: TextStyle(
                          color: Color.fromARGB(255, 201, 194, 194),
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
