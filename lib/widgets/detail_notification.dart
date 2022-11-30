import 'package:flutter/material.dart';
import 'package:finansa/styles/typography.dart';

class DetailNotification extends StatelessWidget {
  final String title, value;
  const DetailNotification({
    Key? key,
    this.title = '',
    this.value = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: blackTextStyle.copyWith(
            fontSize: 16,
          ),
        ),
        Spacer(),
        Text(
          value,
          style: blackTextStyle.copyWith(
            fontSize: 16,
            fontWeight: medium,
          ),
        ),
      ],
    );
  }
}
