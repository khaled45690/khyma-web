

import 'package:flutter/material.dart';
import 'package:sanus/MyDrawer.dart';
import 'package:sanus/HomePage.dart';
import 'package:sanus/SecondRoute.dart';
import 'package:sanus/myStatefulWidget.dart';
import 'package:sanus/tabView1.dart';

class tabbar extends StatefulWidget {
  tabbar({Key key}) : super(key: key);

  @override
  _tabbarState createState() => new _tabbarState();
}
class _tabbarState extends State<tabbar>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = new TabController(
      length: 5,
      vsync: this,
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var tabs = <Tab>[
      new Tab(icon: new Icon(Icons.home), text: 'Tab 1'),
      new Tab(icon: new Icon(Icons.account_box), text: 'Tab 2')
    ];
    return Scaffold(
          backgroundColor: Color(0xFFAD411F),

          bottomNavigationBar: menu(context),
          body: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                color: Color(0xffFFFFFF),
                height: 200,
              ),
              new Positioned(
                top: MediaQuery
                    .of(context)
                    .size
                    .height * 0.2,
                child: new ClipRRect(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),

                  child: Container(
                    height: MediaQuery
                        .of(context)
                        .size
                        .height * 0.71,
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                    color: Color(0xFFF27F2B),
                    child: TabBarView(
                      controller: controller,
                      children: [
                        HomePage(),
                        myStatefulWidget(text: "Aly",),
                        Icon(Icons.directions_bike),
                        Icon(Icons.directions_bike),
                        tabView1(),
                      ],
                    ),
                  ),
                ),)

            ],

          ),
        );
  }

  Widget menu(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 0.3, left: 0.3),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),

        child: Container(
          height: MediaQuery
              .of(context)
              .size
              .height * 0.10,
          color: Colors.white,
          child: TabBar(
            labelColor: Color(0xFFF27F2B),
            unselectedLabelColor: Color(0xFF748A9D),
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorPadding: EdgeInsets.all(5.0),
            indicatorColor: Color(0xFFF27F2B),
            controller: controller,
            tabs: [
              Tab(
                // text: "Transactions",
                icon: Icon(Icons.home),
              ),
              Tab(
                // text: "Bills",
                icon: Icon(Icons.menu_book_rounded),
              ),
              new LayoutBuilder(builder: (context, constraint) {
                return new Icon(
                    Icons.add_circle_sharp, size: constraint.biggest.width);
              }),
              Tab(
                // text: "Options",
                icon: Icon(Icons.insert_chart_outlined),
              ),
              Tab(
                // text: "Options",
                icon: Icon(Icons.settings),
              ),
            ],
          ),
        ),
      ),
    );
  }
}