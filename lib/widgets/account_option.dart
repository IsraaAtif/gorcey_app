

import 'package:flutter/material.dart';

class AccountOption extends StatelessWidget {
  final String text;
  final IconData icon;

  const AccountOption({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10,),
        Row(
          children: [
            Icon(icon),
            SizedBox(width: 20,),
            Expanded(
              child: Text(text,style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),),
            ),
            Icon(Icons.arrow_forward_ios,size: 17,)
          ],
        ),
          SizedBox(height: 10,),
        Divider(
          color: Color(0xffE2E2E2),
        )
      ],
    );
  }
}