// import 'package:flutter/widgets.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';

// /// Wrapper for stateful functionality to provide onInit calls in stateles widget
// class StatefulWrapper extends StatefulWidget {
//   final Function onInit;
//   final Widget child;
//   const StatefulWrapper({@required this.onInit, @required this.child});
//   @override
//   _StatefulWrapperState createState() => _StatefulWrapperState();
// }
// class _StatefulWrapperState extends State<StatefulWrapper> {
// @override
//   void initState() {
//     if(widget.onInit != null) {
//       widget.onInit();
//     }
//     super.initState();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return widget.child;
//   }
// }