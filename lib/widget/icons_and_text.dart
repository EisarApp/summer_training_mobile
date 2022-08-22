import 'package:flutter/cupertino.dart';

class IconsAndText extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color iconColor;
  const IconsAndText({
    Key? key,
    required this.text,
    required this.icon,
    required this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
          SizedBox(
          width: 15,
        ),
        Text(text,),
        SizedBox(
          width: 5,
        ),
        Icon(
          icon,
          color: iconColor,
        ),
      ],
    );
  }
}
