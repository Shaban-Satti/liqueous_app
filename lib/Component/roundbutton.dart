import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RoundButton extends StatelessWidget {
  const RoundButton(
      {super.key,
      this.buttonColor = const Color(0xFF5C96FD),
      this.textColor = Colors.white,
      required this.title,
      required this.onPress,
      this.width = '',
      this.height = '',
      this.loading = false});
  final bool loading;
  final String title;
  final String height, width;
  final VoidCallback onPress;
  final Color textColor, buttonColor;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        height: MediaQuery.sizeOf(context).height / 13,
        width: MediaQuery.sizeOf(context).width / .5,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: loading
            ? Center(child: CircularProgressIndicator())
            : Center(
                child: Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: Colors.white),
                ),
              ),
      ),
    );
  }
}
