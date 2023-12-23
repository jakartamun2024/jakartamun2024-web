import 'dart:ui';

import 'package:flutter/material.dart';

class Section1 extends StatelessWidget {
  const Section1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.65,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(color: Colors.white),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(32.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.3,
                      child: Text(
                        "Lorem Ipsum",
                        style: Theme.of(context).textTheme.displayLarge?.apply(color: Colors.white),
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.3,
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Volutpat lacus laoreet non curabitur gravida arcu ac.",
                        style: Theme.of(context).textTheme.bodyLarge?.apply(color: Colors.white),
                      ),
                    ),
                    const SizedBox(height: 32.0),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.3,
                      child: Text(
                        "Consectetur Adipiscing",
                        style: Theme.of(context).textTheme.displayLarge?.apply(color: Colors.white),
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.3,
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. In iaculis nunc sed augue lacus viverra vitae. Auctor elit sed vulputate mi sit amet mauris commodo quis.",
                        style: Theme.of(context).textTheme.bodyLarge?.apply(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Image.asset(
                  'assets/images/monas.png',
                  width: MediaQuery.of(context).size.width * 0.25,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
