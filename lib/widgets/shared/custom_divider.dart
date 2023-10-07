import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 70),
      child: Row(
        children: [
          Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey.shade300
            ),
            child: Center(
              child: Icon(
                Icons.autorenew, 
                size: 24,
                color: Colors.grey.shade500,
              )
            )
          ),
          const SizedBox(width: 30), // Espaciado entre el Container y el Divider
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 25),
              child: Divider(
                color: Colors.grey.shade300,
                thickness: 2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}