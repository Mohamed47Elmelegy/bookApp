import 'package:book_with_claen_architecture/core/config/constants.dart';
import 'package:book_with_claen_architecture/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Constants.mediaQuery.height * 0.33,
      //To maintain the element's dimensions in terms of height and width
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                AssetsData.textImageContainer,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
