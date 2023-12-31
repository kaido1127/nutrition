
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutritrion/app/features/ai_chatbot/domain/base_message_entity.dart';

class UserChatCard extends ConsumerWidget {
  final UserMessageEntity userMessageEntity;

  const UserChatCard({super.key, required this.userMessageEntity});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Material(
        color: Colors.white,
        child: ListTile(
            leading: const CircleAvatar(
              backgroundColor: Colors.lightBlue,
              child: Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
            title: Text(
              userMessageEntity.answer,
              style: const TextStyle(fontWeight: FontWeight.bold),
            )));
  }
}

// isUser
// ?
//     : Text(
// aiResponseEntity?.answer ?? '',
// style: const TextStyle(fontWeight: FontWeight.bold),
// )),
// if (aiResponseEntity?.funcType == 1)
// ...aiResponseEntity!.foods.map(
// (foodName) {
// int index = aiResponseEntity.foods.indexOf(foodName);
// return Padding(
// padding: const EdgeInsets.fromLTRB(18, 0, 18, 18),
// child: ref
//     .watch(
// foodSelectedControllerProvider(foodName, true, DataSourceType.remote))
//     .when(
// data: (data) {
// if (data == null) {
// return const Text("Not found food");
// } else {
// String servingQty = data.servingQty?.toInt().toString() ?? '1';
// String servingUnit =
// StringFormatHelper.upperCaseFirstCharOfString(
// (data.altMeasures ?? [])
//     .where((measures) =>
// measures.measure == data.servingUnit)
//     .first
//     .measure ??
// '');
// String calorie = (data.nfCalories ?? 0).toStringAsFixed(2);
// return ListTile(
// contentPadding: EdgeInsets.zero,
// leading: CircleAvatar(
// child: CachedNetworkImage(
// fit: BoxFit.cover,
// imageUrl: data.photo?.thumb ?? CommonString.foodImageUrl,
// placeholder: (context, url) =>
// const CircularProgressIndicator(),
// errorWidget: (context, url, error) =>
// const CircleAvatar(child: Icon(Icons.fastfood_sharp)),
// ),
// ),
// title: Text(
// "$servingQty $servingUnit ${StringFormatHelper.upperCaseFirstCharOfString(data.foodName ?? '')}"),
// subtitle: Text('$calorie Cal'),
// trailing: ref.watch(isSavedStateProvider((id, index)))
// ? CommonIconButton(
// iconData: Icons.done,
// function: () {},
// iconColor: Colors.green,
// )
//     : CommonIconButton(
// iconData: Icons.add,
// function: () {
// showModalBottomSheet(
// context: context,
// builder: (BuildContext context) {
// return Padding(
// padding: const EdgeInsets.all(8.0),
// child: AddNewDishWidget(
// data,
// idAndIndex: (id, index),
// ),
// );
// // return AddNewDishWidget(foodName: foodName, isSearch: isSearch, dataSourceType: dataSourceType);
// });
// }),
// );
// }
// },
// error: (e, st) => ErrorStateWidget(error: e.toString()),
// loading: () => const LoadingStateWidget()));
// },
// ).toList()
// ],
// )
