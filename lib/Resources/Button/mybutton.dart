import 'package:flutter/material.dart';
import 'package:health/Resources/AppColors/app_colors.dart';

class RoundButton extends StatelessWidget {
  final void Function()? onTap;
  final String text;
  final bool loading;
  const RoundButton(
      {super.key,
      required this.text,
      required this.onTap,
      this.loading = false});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          height: 55,
          width: 250,
          decoration: BoxDecoration(
            color: MyColors.greenColorauth,
            borderRadius: BorderRadius.circular(12),
            //border color
          ),
          child: Center(
            child: loading
                ? CircularProgressIndicator(
                    strokeWidth: 2,
                    color: Colors.white,
                  )
                : Text(
                    text,
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
          )),
    );
  }
}
