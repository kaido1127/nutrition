// import 'package:flutter/material.dart';
// import 'package:nutritrion/app/helper/string_format_helper.dart';
//
// class ExpandedHeader extends StatelessWidget {
//   const ExpandedHeader({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Text(
//               StringFormatHelper.upperCaseFirstCharOfString(data.foodName ?? ''),
//               style: const TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
//             ),
//             if (widget.isSearch == false)
//               IconButton(
//                   onPressed: () => context.pop(),
//                   icon: const CircleAvatar(child: Icon(Icons.edit)))
//             else
//               CommonIconButton(
//                   iconData: Icons.keyboard_arrow_up,
//                   function: () => ref
//                       .read(isExpandStateProvider(widget.id ?? 0).notifier)
//                       .state = false),
//           ],
//         ),
//         FoodDetailsHeader(foodCommon: data),
//         const SizedBox(
//           height: 10,
//         ),
//         ServingSelect(foodCommon: data),
//         const SizedBox(
//           height: 15,
//         ),
//         const SelectDateTime(),
//         const SizedBox(
//           height: 15,
//         ),
//       ],
//     );
//   }
// }
