import 'package:flutter/material.dart';
import 'package:jobtask/Components/Image_controller.dart';

class StaggerCompo extends StatefulWidget {
  const StaggerCompo({Key? key}) : super(key: key);

  @override
  State<StaggerCompo> createState() => _StaggerCompoState();
}

class _StaggerCompoState extends State<StaggerCompo> {
  bool done = true;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    // Scroll controllers for vertical and horizontal scroll views
    final scrollController = ScrollController();
    final scrollController2 = ScrollController();

    // Calculate the initial offset to scroll to the middle of the second column
    final double initialOffset = (width * 0.6 + 8.0) * 3 + width * 0.6 / 2;
    final double finalOf = width * 0.6; // Width of first column + Width of SizedBox + Half width of second column

    // If the scrolling initialization is not done, scroll to the desired positions
    if (done) {
      WidgetsBinding.instance!.addPostFrameCallback((_) {
        scrollController.jumpTo(initialOffset);
        scrollController2.jumpTo(finalOf);
        done = false;
      });
    }

    return InteractiveViewer(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        controller: scrollController,
        child: SingleChildScrollView(
          controller: scrollController2,
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Wrap(
              children: [
                // First column
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Image_Compo(
                        path: 'Assets/Reel Thumbnail.jpg',
                      ),
                      Image_Compo(
                        path: 'Assets/Reel Thumbnail (2).jpg',
                      ),
                      Image_Compo(
                        path: 'Assets/Reel Thumbnail.png',
                      ),
                    ],
                  ),
                ),

                // Second column
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Image_Compo(
                        path: 'Assets/Reel Thumbnail.jpg',
                      ),
                      Image_Compo(
                        path: 'Assets/Reel Thumbnail (2).jpg',
                      ),
                      Image_Compo(
                        path: 'Assets/Reel Thumbnail.jpg',
                      ),
                      Image_Compo(
                        path: 'Assets/Reel Thumbnail (2).jpg',
                      ),
                    ],
                  ),
                ),

                // Third column
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: height * 0.3,
                      ),
                      const Image_Compo(
                        path: 'Assets/Reel Thumbnail.jpg',
                      ),
                      const Image_Compo(
                        path: 'Assets/Reel Thumbnail (2).jpg',
                      ),
                      const Image_Compo(
                        path: 'Assets/Reel Thumbnail.jpg',
                      ),
                      const Image_Compo(
                        path: 'Assets/Reel Thumbnail (2).jpg',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
