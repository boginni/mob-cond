import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yukem_dashboard/sdk/utility/page_manager.dart';
import 'package:yukem_dashboard/yukem_dashboard/screens/placeholder.dart';

class Cond extends StatefulWidget {
  const Cond({Key? key}) : super(key: key);

  @override
  State<Cond> createState() => _CondState();
}

class _CondState extends State<Cond> {
  late final PageManager pageManager;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageManager = PageManager();
  }

  @override
  Widget build(BuildContext context) {
    Widget p(Widget child) {
      return WillPopScope(
        onWillPop: () => pageManager.onWillPop(),
        child: child,
      );
    }

    const pages = <Widget>[
      
      TelaPlaceholder(),

    ];

    return Provider(
      create: (BuildContext context) {
        return pageManager;
      },
      child: MaterialApp(
        home: WillPopScope(
          onWillPop: () => pageManager.onWillPop(),
          child: PageView(
            physics: const NeverScrollableScrollPhysics(),
            controller: pageManager.pageController,
            // children: [for (var page in pages) p(page)],
            children: pages,
          ),
        ),
      ),
    );
  }
}
