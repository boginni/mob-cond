// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:forca_de_vendas/api/models/interface/queue_action.dart';
//
// class ListViewScrollable extends StatefulWidget {
//   final int limiterDefault;
//   final int limiterPlus;
//
//   final int maxCount;
//   final ScrollController scrollController;
//
//   final Widget Function(BuildContext context, int i) itemBuilder;
//
//   const ListViewScrollable(
//       {Key? key,
//       this.limiterDefault = 15,
//       this.limiterPlus = 50,
//       required this.maxCount,
//       required this.itemBuilder,
//       required this.scrollController})
//       : super(key: key);
//
//   @override
//   State<StatefulWidget> createState() => _ListViewScrollableState();
// }
//
// class _ListViewScrollableState extends State<ListViewScrollable> {
//   bool checkPosition() {
//     double px, mx;
//     px = widget.scrollController.position.pixels;
//     mx = widget.scrollController.position.maxScrollExtent;
//     if (widget.scrollController.position.atEdge || true) {
//       bool isTop = px == mx;
//
//       if (isTop && mx != 0) {
//         return true;
//       }
//     }
//
//     return false;
//   }
//
//   bool localReset = true;
//
//   testSize({forceState = true}) {
//     if (!firstBuild && checkPosition()) {
//       renderLimit += widget.limiterPlus;
//
//       localReset = false;
//
//       if (forceState) {
//         setState(() {});
//         QueueAction.doLoop();
//       }
//     }
//   }
//
//   int renderLimit = 0;
//
//   @override
//   void initState() {
//     super.initState();
//     renderLimit = widget.limiterDefault;
//     // Setup the listener.
//
//     widget.scrollController.addListener(() {
//       testSize();
//     });
//
//     WidgetsBinding.instance!.addPostFrameCallback((_) {
//       isBuilding = false;
//       QueueAction.doLoop();
//     });
//   }
//
//   bool isBuilding = true;
//
//   bool firstBuild = true;
//
//   @override
//   Widget build(BuildContext context) {
//     if (!isBuilding && !firstBuild) testSize(forceState: false);
//     firstBuild = false;
//
//     return ListViewNested(
//       children: [
//         ListView.builder(
//           shrinkWrap: true,
//           physics: const ClampingScrollPhysics(),
//           itemCount:
//               renderLimit < widget.maxCount ? renderLimit : widget.maxCount,
//           itemBuilder: (context, index) {
//             return widget.itemBuilder(context, index);
//           },
//         ),
//         if (widget.maxCount > renderLimit)
//           const Center(
//             child: Text(
//               'Carregando mais...',
//               style: TextStyle(fontSize: 18),
//             ),
//           ),
//         const SizedBox(
//           height: 84,
//         )
//       ],
//     );
//   }
// }
//
// class ListViewNested extends StatelessWidget {
//   final List<Widget> children;
//
//   const ListViewNested({Key? key, required this.children}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//         shrinkWrap: true,
//         physics: const ClampingScrollPhysics(),
//         children: children);
//   }
// }
//
// class ListViewNested2 extends StatelessWidget {
//   final List<Widget> children;
//
//   final Widget title;
//
//   const ListViewNested2({Key? key, required this.children, required this.title})
//       : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//         shrinkWrap: true,
//         physics: const ClampingScrollPhysics(),
//         children: <Widget>[
//               Padding(
//                 padding: const EdgeInsets.all(12),
//                 child: title,
//               )
//             ] +
//             children);
//   }
// }
