import 'package:flutter/material.dart';

class AppBarInside extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(56.0);
  final GlobalKey<ScaffoldState>? drawerKey;

  final Color? appBarBGColor;
  final VoidCallback? leadingLink;
  final Widget? leadingChild;
  final Widget? titleChild;

  final List<Widget>? actionsWidget;
  final bool? centerTitle;
  const AppBarInside(
      {super.key, this.appBarBGColor, this.leadingLink, this.leadingChild, this.titleChild, this.actionsWidget, this.drawerKey, this.centerTitle});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0.0,
      backgroundColor: const Color(0xff000e08),foregroundColor: Colors.white,
      leading: leadingChild != null
          ? Align(
              alignment: Alignment.center,
              child: InkWell(
                highlightColor: const Color(0xff363F3B),
                onTap: leadingLink,
                child: leadingChild,
              ),
            )
          : null,
      title: titleChild,titleTextStyle: const TextStyle(color: Color(0xffF7F7F7),fontSize: 17,fontWeight: FontWeight.w500),
      actions: actionsWidget,
      centerTitle: centerTitle,
    );
  }
}


class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(56.0);
  final GlobalKey<ScaffoldState>? drawerKey;

  final Color? appBarBGColor;
  final VoidCallback? leadingLink;
  final Widget? leadingChild;
  final Widget? titleChild;

  final List<Widget>? actionsWidget;
  final bool? centerTitle;
  const CustomAppBar(
      {super.key, this.appBarBGColor, this.leadingLink, this.leadingChild, this.titleChild, this.actionsWidget, this.drawerKey, this.centerTitle});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0.0,
      backgroundColor: Colors.white,foregroundColor: Colors.black,
      leading: leadingChild != null
          ? Align(
              alignment: Alignment.center,
              child: InkWell(
                highlightColor: Colors.transparent,
                onTap: leadingLink,
                child: leadingChild,
              ),
            )
          : null,
      title: titleChild,titleTextStyle: const TextStyle(color: Color(0xffF7F7F7),fontSize: 17,fontWeight: FontWeight.w500),
      actions: actionsWidget,
      centerTitle: centerTitle,
    );
  }
}