// import 'package:flutter/material.dart';
// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:skeletonizer/skeletonizer.dart';

// class CustomBookImageSkeletonizer extends StatelessWidget {
//   final bool isLoading;

//   const CustomBookImageSkeletonizer({super.key, this.isLoading = false});

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         AspectRatio(
//           aspectRatio: 2.5 / 4,
//           child: Skeletonizer(
//             enabled: isLoading,
//             child: Container(
//               decoration: const BoxDecoration(
//                 borderRadius: BorderRadius.all(
//                   Radius.circular(20),
//                 ),
//                 image: DecorationImage(
//                   fit: BoxFit.fill,
//                   image: CachedNetworkImageProvider(),
//                 ),
//               ),
//               padding: const EdgeInsets.only(
//                 right: 20,
//                 bottom: 20,
//               ),
//               alignment: Alignment.bottomRight,
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
