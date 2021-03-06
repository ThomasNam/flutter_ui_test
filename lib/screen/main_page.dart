import 'package:flutter/material.dart';
import 'package:flutteruitest/model/list_model.dart';
import 'package:flutteruitest/screen/ani2_test.dart';
import 'package:flutteruitest/screen/ani_test.dart';
import 'package:flutteruitest/screen/bloc/simple_counter.dart';
import 'package:flutteruitest/screen/chat/my_chat_page.dart';
import 'package:flutteruitest/screen/counter_v2_page.dart';
import 'package:flutteruitest/screen/dice_page.dart';
import 'package:flutteruitest/screen/func/bmi_page.dart';
import 'package:flutteruitest/screen/bottom_navi_page.dart';
import 'package:flutteruitest/screen/infinite_list.dart';
import 'package:flutteruitest/screen/list_in_list.dart';
import 'package:flutteruitest/screen/my_custom_form.dart';
import 'package:flutteruitest/screen/nest_tab_page.dart';
import 'package:flutteruitest/screen/func/stop_watch.dart';
import 'package:flutteruitest/screen/new_page.dart';
import 'package:flutteruitest/screen/refresh_pull_page.dart';
import 'package:flutteruitest/screen/widget/prog_test.dart';

import 'login/login_root_page.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<ListModel> listModels = [
    ListModel(title: '타이틀1'),
    ListModel(title: '타이틀2'),
    ListModel(title: '타이틀3'),
    ListModel(title: '타이틀4'),
    ListModel(title: '타이틀5'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: _buildDrawContent(),
      ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              pinned: true,
              expandedHeight: 180,
              flexibleSpace: FlexibleSpaceBar(
                title: Text(
                  'UI Sample',
                  style: TextStyle(color: Colors.white60),
                ),
                background: Image.asset('assets/sample.png', fit: BoxFit.cover),
                collapseMode: CollapseMode.pin,
              ),
            ),
            SliverFillRemaining(
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('메인 화면'),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: RaisedButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      InfiniteListPage()));
                            },
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.list),
                                Text('무한 스크롤'),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: RaisedButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      NestTabPage(title: '서브탭')));
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.tab,
                                  color: Colors.white60,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  '서브탭',
                                  style: TextStyle(
                                    color: Colors.white60,
                                  ),
                                ),
                              ],
                            ),
                            color: Colors.deepPurple,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: RaisedButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      StopWatchPage()));
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.stop,
                                  color: Colors.white60,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  '스톱워치',
                                  style: TextStyle(
                                    color: Colors.white60,
                                  ),
                                ),
                              ],
                            ),
                            color: Colors.indigo,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: RaisedButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      ListInListPage(
                                        lists: listModels,
                                      )));
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.stop,
                                  color: Colors.white60,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'List in List',
                                  style: TextStyle(
                                    color: Colors.white60,
                                  ),
                                ),
                              ],
                            ),
                            color: Colors.lime,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: RaisedButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      BmiMain()));
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.stop,
                                  color: Colors.white60,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'BMI',
                                  style: TextStyle(
                                    color: Colors.white60,
                                  ),
                                ),
                              ],
                            ),
                            color: Colors.orangeAccent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: RaisedButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      BottomNaviPage()));
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.border_bottom,
                                  color: Colors.white60,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: FittedBox(
                                    fit: BoxFit.scaleDown,
                                    child: Text(
                                      'Bottom Navigation',
                                      style: TextStyle(
                                        color: Colors.white60,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            color: Colors.green,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        )
                      ],
                    ),
                    RaisedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) =>
                                SimpleCounter()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.border_bottom,
                            color: Colors.white60,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Simple Counter',
                            style: TextStyle(
                              color: Colors.white60,
                            ),
                          ),
                        ],
                      ),
                      color: Colors.purple,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        FlatButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        NewPage()));
                          },
                          color: Colors.yellow,
                          child: Text(
                            '추가 UI',
                            style: TextStyle(color: Colors.red),
                          ),
                        ),
                        SizedBox(width: 10,),
                        FlatButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        RefreshPullPage()));
                          },
                          color: Colors.yellow,
                          child: Text(
                            'Pull to Refresh',
                            style: TextStyle(color: Colors.red),
                          ),
                        ),
                        SizedBox(width: 10,),

                        FlatButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        DicePage()));
                          },
                          color: Colors.yellow,
                          child: Text(
                            'Dice',
                            style: TextStyle(color: Colors.red),
                          ),
                        ),
                        SizedBox(width: 10,),


                      ],
                    ),

                    Row(children: <Widget>[
                      FlatButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      AniPage()));
                        },
                        color: Colors.yellow,
                        child: Text(
                          'Ani',
                          style: TextStyle(color: Colors.red),
                        ),
                      ),

                      SizedBox(width: 10,),

                      FlatButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      Ani2Test()));
                        },
                        color: Colors.yellow,
                        child: Text(
                          'Ani2',
                          style: TextStyle(color: Colors.red),
                        ),
                      ),

                      SizedBox(width: 10,),

                      FlatButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      ProgressTest()));
                        },
                        color: Colors.redAccent,
                        child: Text(
                          'Progress',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildDrawContent() {
    return ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Header!!!',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white70,
                ),
              ),
              Text(
                'Sub title!!!',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.green,
                ),
              ),
            ],
          ),
          decoration: BoxDecoration(
            color: Colors.red,
          ),
        ),
        ListTile(
          title: Text('입력폼 샘플'),
          onTap: () async {
            await Navigator.push(context,
                MaterialPageRoute(builder: (BuildContext context) {
              return MyCustomFormPage();
            }));
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: Text('Counter V2'),
          onTap: () async {
            await Navigator.push(context,
                MaterialPageRoute(builder: (BuildContext context) {
              return CounterV2Page();
            }));
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: Text('Login Provider Test'),
          onTap: () async {
            await Navigator.push(context,
                MaterialPageRoute(builder: (BuildContext context) {
              return LoginRootPage();
            }));
            Navigator.pop(context);
          },
        ),

        ListTile(
          title: Text('My Chat'),
          onTap: () async {
            await Navigator.push(context,
                MaterialPageRoute(builder: (BuildContext context) {
                  return MyChatPage();
                }));
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
