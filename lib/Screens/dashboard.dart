import 'package:flutter/material.dart';
import 'package:mpower/Config/globals.dart' as globals;
import 'package:mpower/Screens/chat.dart';
import 'package:mpower/Screens/money.dart';
import 'package:mpower/Screens/shop.dart';

import '../widgets/fadetransition.dart';
import 'login.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);
  static const String routeName = '/dashboard';

  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => Dashboard(),
    );
  }
  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _tabIndex = 1;

  int get tabIndex => _tabIndex;

  set tabIndex(int v) {
    _tabIndex = v;
    setState(() {});

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
        borderRadius:
        BorderRadius.only(bottomLeft: Radius.circular(32)),
    ),
    elevation: 0,
    leading: Builder(
    builder: (context) => IconButton(
    icon: Icon(
      size: 40,
    Icons.list,
    color: globals.SecondaryColor,
    ),
    onPressed: () => Scaffold.of(context).openDrawer(),
    )),

    actions: [
    IconButton(
    onPressed: () {},
      icon: Icon(Icons.notifications),
      color: globals.SecondaryColor,
    ),
    // IconButton(onPressed: (){}, icon:Icon(Icons.more_vert),color: Colors.blue)
    ],
    flexibleSpace: SafeArea(
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Image.asset(
          "assets/images/mpower.png",
          height: 35,
          width: 35,
          matchTextDirection: true,
          ),
          SizedBox(
          width: 10,
          ),
          Text("MPower",
          style: TextStyle(
          color: Colors.deepOrangeAccent,
          fontSize: 30,
          fontWeight: FontWeight.bold,
          ))
        ],
      ),
    )),
    // bottom: PreferredSize(
    //     child: Container(
    //       child: Text(
    //         "Hi",
    //         textAlign: TextAlign.left,
    //         style: TextStyle(color: Colors.brown, fontSize: 25),
    //       ),
    //       width: double.infinity,
    //       height: 50,
    //       color: Colors.yellow,
    //     ),
    //     preferredSize: Size.fromHeight(35.0))
    ),
    body: Container(
      child: Text("Welcome"),
    ),
      drawer: SafeArea(
          child: Drawer(
              width: 250,
              elevation: 1.0,
              child: Column(
                children: <Widget>[
                  Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(15),
                      //margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        //border: Border.all(color: Colors.green, width: 1),
                        color: Colors.white,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.4 * 1),
                              offset: const Offset(1.1, 1.1),
                              blurRadius: 30.0),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                "assets/images/mpower.png",
                                width: 30,
                                height: 30,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Mpower",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.orangeAccent,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          // Text(Globals.Comp_Name),
                          // Text(Globals.ClientInfo[0].Client_Code),
                        ],
                      )),
                  SizedBox(
                    height: 20,
                  ),


                  ListTile(
                      title: Text("Set / Change Pin"),
                      leading: Icon(Icons.key),
                      onTap: () {
                        // Navigator.push(
                        //   // or pushReplacement, if you need that
                        //   context,
                        //   FadeInRoute(
                        //     routeName: "/pingeneration",
                        //     page: PinGeneration(),
                        //   ),
                        // );

                        //Navigator.pushNamed(context, "/pingeneration");
                        //   Navigator.push(
                        //     context,
                        //     MaterialPageRoute(builder: (context) => const TestShared()),
                        //   );
                      }),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(height: 1),
                  ListTile(
                      title: Text("Settings"),
                      leading: Icon(Icons.settings),
                      onTap: () {
                        // Navigator.push(
                        //   // or pushReplacement, if you need that
                        //   context,
                        //   FadeInRoute(
                        //     routeName: "/appsettings",
                        //     page: AppSettings(),
                        //   ),
                        // );


                      }),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(height: 1),
                  ListTile(
                    title: Text("Feedback"),
                    leading: Icon(Icons.feed),
                  ),
                  Divider(height: 1),
                  // ListTile(
                  //     title: Text("Logout"),
                  //     leading: Icon(Icons.logout),
                  //     trailing: Text(
                  //       "Ver" + Globals.AppVer.toString(),
                  //       style: TextStyle(fontSize: 12),
                  //     ),
                  //     onTap: () {
                  //       showAlertDialog(context);
                  //     }),
                  Divider(height: 1),
                  SizedBox(
                    height: 30,
                  ),
                  Text("MPower Fin Solutions"),
                  Text("www.mpower.in")
                ],
              ))),

      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey.shade600,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
        unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
        type: BottomNavigationBarType.fixed,
        onTap: (value){
          if (value == 0) Navigator.push(
            // or pushReplacement, if you need that
            context,
            FadeInRoute(
              routeName: "/loanhistory",
              page: Money(),
            ),
          );
          if (value == 1) Navigator.push(
            // or pushReplacement, if you need that
            context,
            FadeInRoute(
              routeName: "/loanhistory",
              page: Chat(),
            ),
          );
          if (value == 2) Navigator.push(
            // or pushReplacement, if you need that
            context,
            FadeInRoute(
              routeName: "/loanhistory",
              page: Shop(),
            ),
          );
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance),
            label: "Accounts",

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: "Chats",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Shop",

          ),
        ],
      ),
    );
  }
}
