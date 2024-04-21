import 'package:flutter/material.dart';

class DrawerListTile extends StatelessWidget {
  final IconData icon;
  final dynamic trailing;
  final String text;
   final void Function()? onTap;
  const DrawerListTile({
    Key? key,
    required this.icon,
    this.trailing,
    required this.text,
     this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.shortestSide < 600;
    return Padding(
      padding: const EdgeInsets.only(left: 5),
      child: SizedBox(
        height: isMobile ? 45:55,
        child: ListTile(
          leading: Icon(
            icon,
            color: Colors.black,
          ),
          onTap: onTap,
          trailing: trailing,
          title: Text(
            text,
            style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
