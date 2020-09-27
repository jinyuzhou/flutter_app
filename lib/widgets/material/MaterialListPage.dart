import 'package:flutter/material.dart';
import 'package:flutter_app/bean/CustomBean.dart';
import 'package:flutter_app/home/HomeListItem.dart';
import 'package:flutter_app/utils/Constant.dart';

class MaterialListPage extends StatelessWidget {
  final _dataList = [
    HomeData(
        title: 'App结构和导航',
        content: '',
        routerName: Constant.widgetsMaterialNavigationNavigationListPage),
    HomeData(
        title: '按钮',
        content: '',
        routerName: Constant.widgetsMaterialButtonMaterialButtonPage),
    HomeData(
        title: 'TextField',
        content: '文本输入框',
        routerName: Constant.widgetsMaterialTextFieldPage),
    HomeData(
        title: 'Checkbox',
        content: '复选框，允许用户从一组中选择多个选项。',
        routerName: Constant.widgetsMaterialCheckboxPage),
    HomeData(title: '信息展示', content: '', routerName: ''),
    HomeData(title: '布局', content: '', routerName: ''),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Material Widgets')),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: _dataList.map((e) => HomeListItem(homeData: e)).toList(),
      ),
    );
  }
}
