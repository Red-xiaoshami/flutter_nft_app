import 'package:flutter/cupertino.dart';
import 'package:nft_flutter/pages/detail/detail.dart';
import 'package:nft_flutter/pages/product_detail/index.dart';
import 'package:nft_flutter/pages/login/step-1.dart';
import 'package:nft_flutter/pages/login/step-2.dart';

class Routers {
  final BuildContext context;
  Routers(this.context);
  // NFT模块详情
  static detailPageRoutes() {
    return (context) => detailPage();
  }

  // 产品详情页面
  static productDetailPageRoutes() {
    return (context) => productDetail();
  }

  // 登录页面-输入手机号
  static loginStep1PageRoutes() {
    return (context) => loginStep1();
  }

  // 登录页面-验证码
  static loginStep2PageRoutes() {
    return (context) => loginStep2();
  }
}
