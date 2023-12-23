import 'package:flutter/material.dart';
import 'package:jakartamun_web/adminpage/widgets/body/sections/tablepage.dart';
import 'package:jakartamun_web/adminpage/widgets/footer/detailpage_footer.dart';

class DetailPageBody extends StatefulWidget {
  const DetailPageBody({super.key});

  @override
  State<DetailPageBody> createState() => _DetailPageBodyState();
}

class _DetailPageBodyState extends State<DetailPageBody> {
  final scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    // Setup the listener.
    scrollController.addListener(() {
      if (scrollController.position.atEdge) {
        bool isTop = scrollController.position.pixels == 0;
        if (isTop) {
          print('At the top');
        } else {
          print('At the bottom');
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // final double statusbarHeight = MediaQuery.of(context).padding.top + 12;
    return SingleChildScrollView(
      controller: scrollController,
      child: Stack(
        children: [
          ShaderMask(
            shaderCallback: (Rect bounds) {
              return const LinearGradient(
                colors: [
                  Color(0xaaf06e34),
                  Color(0xaaf55789),
                  Color.fromARGB(170, 242, 155, 6)
                ],
                begin: FractionalOffset.topLeft,
                end: FractionalOffset.bottomRight,
                stops: [0.0, 0.5, 1.0],
                tileMode: TileMode.clamp,
              ).createShader(bounds);
            },
            blendMode: BlendMode.color,
            child: Container(
              color: const Color(0xaaf06e34),
              constraints:
                  BoxConstraints(minHeight: MediaQuery.of(context).size.height),
              child: Padding(
                padding: const EdgeInsets.all(120),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const Text(
                      "Daftar Peserta",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      height: 50,
                    ),
                    const TablePage(),
                    Container(
                      height: 50,
                    )
                  ],
                ),
              ),
            ),
          ),
          const Positioned(
            bottom: 0.0,
            child: DetailPageFooter(),
          ),
        ],
      ),
    );
  }
}