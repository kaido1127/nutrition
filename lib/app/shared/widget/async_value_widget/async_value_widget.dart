import 'package:flutter/material.dart';

class ErrorStateWidget extends StatelessWidget {
  final String error;
  const ErrorStateWidget({super.key,required this.error});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(error),
    );
  }
}

class LoadingStateWidget extends StatelessWidget {
  const LoadingStateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}

