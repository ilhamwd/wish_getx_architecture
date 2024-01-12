import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ScreenTemplate extends StatefulWidget {
  const ScreenTemplate(
      {super.key,
      required this.child,
      this.physics,
      this.statusBarColor,
      this.statusBarIconBrightness,
      this.useSafeArea});

  final Widget child;
  final ScrollPhysics? physics;
  final Color? statusBarColor;
  final Brightness? statusBarIconBrightness;
  final bool? useSafeArea;

  @override
  State<ScreenTemplate> createState() => _ScreenTemplateState();
}

class _ScreenTemplateState extends State<ScreenTemplate> {
  bool useSafeArea = true;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    useSafeArea = widget.useSafeArea ?? true;

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarIconBrightness: widget.statusBarIconBrightness));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        if (useSafeArea)
          Container(
            height: MediaQuery.of(context).viewPadding.top,
            color: widget.statusBarColor,
          ),
        Expanded(
            child: SingleChildScrollView(
                physics: widget.physics,
                child: useSafeArea
                    ? SafeArea(child: widget.child)
                    : widget.child)),
      ],
    ));
  }
}
