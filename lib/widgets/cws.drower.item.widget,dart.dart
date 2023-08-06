import 'package:flutter/material.dart';

class CWSDrowerItem extends StatelessWidget {
  final String title;
  final IconData leading;
  final IconData trailing;
  final Function onAction;

  CWSDrowerItem(
      {super.key,
      required this.title,
      required this.leading,
      required this.trailing,
      required this.onAction});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleLarge,
      ),
      leading: Icon(
        leading,
        color: Theme.of(context).primaryColor,
      ),
      trailing: Icon(
        trailing,
        color: Theme.of(context).primaryColor,
      ),
      onTap: () => onAction(),
    );
  }
}
