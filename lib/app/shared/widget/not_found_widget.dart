import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

Widget NotFoundWidget() {
  return const Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
            radius: 50,
            backgroundColor: Colors.lightBlueAccent,
            child: Text(
              "?",
              style: TextStyle(color: Colors.white, fontSize: 50, fontWeight: FontWeight.bold),
            )),
        SizedBox(
          height: 20,
        ),
        Text(
          "No matching food found",
          style: TextStyle(color: Colors.black54),
        ),
      ],
    ),
  );
}

Widget ClickToSearchWithAI(BuildContext context){
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const CircleAvatar(
            radius: 50,
            backgroundColor: Colors.lightBlueAccent,
            child: Text(
              "?",
              style: TextStyle(
                  color: Colors.white, fontSize: 50, fontWeight: FontWeight.bold),
            )),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: () => context.push('/ai_chatbot_page'),
          child: const Text(
            "Not found, click to search with AI Nutritionist",
            style: TextStyle(color: Colors.blue),
          ),
        )
      ],
    ),
  );
}
