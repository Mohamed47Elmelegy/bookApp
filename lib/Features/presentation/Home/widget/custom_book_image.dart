import 'package:book_with_claen_architecture/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AspectRatio(
          aspectRatio: 2.5 / 4,
          //Book Main Container
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  AssetsData.textImageContainer, //!chatch Image From Api Her
                ),
              ),
            ),
            padding: const EdgeInsets.only(
              right: 20,
              bottom: 20,
            ),
            alignment: Alignment.bottomRight,
            //Play Icon Container
            //   child: Container(
            //     width: 50,
            //     height: 40,
            //     decoration: BoxDecoration(
            //       boxShadow: [
            //         BoxShadow(
            //             color: Colors.grey.withOpacity(0.7),
            //             blurRadius: 5,
            //             spreadRadius: 5),
            //       ],
            //       borderRadius: const BorderRadius.all(
            //         Radius.circular(100),
            //       ),
            //     ),
            //     child: IconButton(
            //       onPressed: () {},
            //       icon: const Icon(
            //         Icons.play_arrow,
            //         color: Colors.white,
            //       ),
            //     ),
            //   ),
          ),
        ),
      ],
    );
  }
}
