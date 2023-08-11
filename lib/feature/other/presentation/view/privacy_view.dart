import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store/config/boiler/widget_boiler.dart';
import 'package:store/config/boiler/resource_boiler.dart';

class PrivacyView extends StatefulWidget {
  static const String route = '/page/privacy';

  const PrivacyView({super.key});

  @override
  State<PrivacyView> createState() => _PrivacyViewState();
}

class _PrivacyViewState extends State<PrivacyView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: appBar(), body: body());
  }

  PreferredSizeWidget appBar() {
    return AppBarWidget().appBar(
      title: AppBarWidget().appBarTitle(title: ''.tr),
      leading: AppBarWidget().backAction(),
    );
  }

  Widget body() {
    return Container(
      padding: SpacingConfig.s20Horizontal,
      alignment: Alignment.topRight,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: SizeConfig.s20.r),
          title(),
          divide(),
          privacy(),
        ],
      ),
    );
  }

  Widget title() {
    return Text('privacyTitle'.tr, style: TextStyleConfig.otherTitle);
  }

  Widget divide() {
    return DividerWidget().horizontal(
      color: ColorConfig.primary,
      matchParent: false,
      thickness: SizeConfig.s02.r,
      space: SizeConfig.s20.r,
    );
  }

  Widget privacy() {
    return Expanded(
      child: SingleChildScrollView(
        child: Text(
          'privacyDescription'.tr,
          style: TextStyleConfig.otherContent,
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
