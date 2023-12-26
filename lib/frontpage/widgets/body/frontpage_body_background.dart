import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class FrontpageBodyBackground extends StatelessWidget {
  const FrontpageBodyBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height *
              getValueForScreenType(
                context: context,
                mobile: 7.2,
                tablet: 5.0,
                desktop: 5.3,
              ),
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color(0xffFD8653),
              Color(0xffFFC363),
              Color(0xffFD8653),
            ], tileMode: TileMode.clamp),
          ),
        ),
        Opacity(
          opacity: 0.68,
          child: Image.asset(
            'assets/images/testbackground.png',
            fit: BoxFit.fitWidth,
            height: MediaQuery.of(context).size.height *
                getValueForScreenType(
                  context: context,
                  mobile: 7.2,
                  tablet: 5.0,
                  desktop: 5.3,
                ),
            width: MediaQuery.of(context).size.width,
            repeat: ImageRepeat.repeatY,
          ),
        ),
      ],
    );
  }
}