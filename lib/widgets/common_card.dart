import 'package:flutter/material.dart';
import 'package:machine_test_incredible_visibility/common/font_style.dart';

class CommonCard extends StatefulWidget {
  final IconData leadingIcon;
  final String title;
  final String? subTitle;
  final Widget? trailing;
  const CommonCard(
      {Key? key,
      required this.leadingIcon,
      required this.title,
      this.subTitle,
      this.trailing})
      : super(key: key);

  @override
  State<CommonCard> createState() => _CommonCardState();
}

class _CommonCardState extends State<CommonCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.blueGrey[100],
          borderRadius: BorderRadius.circular(10.0)),
      child: ListTile(
        leading: Icon(
          widget.leadingIcon,
          color: Colors.black,
        ),
        title: Text(
          widget.title,
          style: FontStyle.grey15_700,
        ),
        subtitle: Text(
          widget.subTitle ?? '',
          style: FontStyle.black15Bold,
        ),
        trailing: widget.trailing ?? const SizedBox(),
      ),
    );
  }
}
