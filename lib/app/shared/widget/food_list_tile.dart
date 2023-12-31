import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:nutritrion/app/helper/string_format_helper.dart';
import 'package:nutritrion/app/shared/widget/common_icon_button.dart';

class FoodListTile extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  final String calorie;
  final Widget? add;
  final bool? isNonePadding;

  const FoodListTile(
      {super.key,
      required this.imageUrl,
      required this.title,
      required this.subtitle,
      required this.calorie,
      this.add,
      this.isNonePadding});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: (isNonePadding != null)?EdgeInsets.zero:null,
      leading: CircleAvatar(
        child: CachedNetworkImage(
          fit: BoxFit.cover,
          imageUrl: imageUrl,
          placeholder: (context, url) => const CircularProgressIndicator(),
          errorWidget: (context, url, error) =>
              const CircleAvatar(child: Icon(Icons.fastfood_sharp)),
        ),
      ),
      title: Text(StringFormatHelper.upperCaseFirstCharOfString(title)),
      subtitle: Text(subtitle),
      trailing: (add == null)
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  calorie,
                  style: const TextStyle(fontSize: 14, color: Colors.lightBlue),
                ),
                const Text(
                  "Cal",
                  style: TextStyle(fontSize: 13),
                ),
              ],
            )
          : add,
    );
  }
}
