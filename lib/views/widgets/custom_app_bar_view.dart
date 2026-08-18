import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_icon.dart';

class CustomAppBarView extends StatelessWidget {
  const CustomAppBarView({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: TextStyle(fontSize: 24)),
        SizedBox(width: MediaQuery.of(context).size.width * 0.05),
        CustomIcon(icon: icon),
      ],
    );
  }
}
