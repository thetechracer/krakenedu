import "package:flutter/material.dart";
import "package:flutter/src/widgets/icon_data.dart";

class TopearnCustomize extends StatelessWidget {
  final String optionText;
  final IconData optionIcon;
  final Color containerColor, fontColor, iconColor;
  final Function()? onTap;
  TopearnCustomize({
    super.key,
    required this.onTap,
    required this.optionText,
    required this.optionIcon,
    required this.containerColor,
    required this.fontColor,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: containerColor,
                      ),
                      child: Icon(
                        optionIcon,
                        color: iconColor,
                        size: 30,
                      )),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      optionText,
                      style: TextStyle(
                          fontSize: 15,
                          color: fontColor,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
