import 'package:flutter/material.dart';
import 'Colors.dart';

class Image_Compo extends StatelessWidget {
  final String path; // Path of the image asset
  const Image_Compo({Key? key, required this.path}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: SizedBox(
        height: height * 0.8,
        width: width * 0.7,
        child: Stack(
          children: [
            // Image widget with rounded corners
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image(
                fit: BoxFit.cover,
                height: height * 0.8,
                width: width * 0.7,
                image: AssetImage(path),
              ),
            ),
            // Text content overlay
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // User information
                  ListTile(
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image(
                        fit: BoxFit.fill,
                        height: height * 0.06,
                        width: width * 0.1,
                        image: const AssetImage('Assets/dp.jpg'),
                      ),
                    ),
                    title: const Text(
                      'Kendil Jim',
                      style: TextStyle(fontFamily: 'semi', color: textColor),
                    ),
                    subtitle: const Text(
                      '@kendil123',
                      style: TextStyle(fontFamily: 'regular', color: textColor),
                    ),
                    trailing: const Text(
                      '123 Views',
                      style: TextStyle(fontFamily: 'semi', color: textColor),
                    ),
                  ),
                  // Image description
                  const Padding(
                    padding: EdgeInsets.only(left: 12),
                    child: Text(
                      'Lorem ipsum dolor sit axamet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis.',
                      style: TextStyle(fontFamily: 'semi', color: textColor),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
