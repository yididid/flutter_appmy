//导入相关控件
import 'package:flutter/material.dart';

//入口函数
void main() {
  runApp(const MyApp());
}

//无状态控件  有状态控件

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //每个项目最外成，必须要有MaterialApp
    return MaterialApp(
      title: '小志专用',
      theme: ThemeData(primarySwatch: Colors.purple),
      //通过home指定首页
      home: MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('电影列表'),
        centerTitle: true,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(0),
          children: [
            //头部显示
            UserAccountsDrawerHeader(
              accountEmail: Text('@1979476918.cn'),
              accountName: Text('小志'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://profile-avatar.csdnimg.cn/531591d5ca554937b19dd5c8d0cd3ab3_weixin_43452154.jpg!1'),
              ),
              //美化当前控件
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://www.jiazhuangpei.com/img/index/2022/bg_01.jpg'))),
            ),
            ListTile(
              title: Text('用户反馈'),
            )
          ],
        ),
      ),
    );
  }
}
