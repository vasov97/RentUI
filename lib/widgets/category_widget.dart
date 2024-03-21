import 'package:flutter/material.dart';
import 'package:rent_ui/colors.dart';

class CategoryWidget extends StatefulWidget {
  CategoryWidget({
    super.key,
    required this.index,
    required this.category,
    required this.onClick,
    required this.clicked,
  });
  final int index;
  final List category;
  final Function() onClick;
  final int clicked;

  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: GestureDetector(
        onTap: widget.onClick,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          decoration: widget.clicked == widget.index
              ? BoxDecoration(
                  color: AppColors.mainYellow,
                  // boxShadow: [
                  //   const BoxShadow(
                  //     color: AppColors.mainYellow,
                  //     blurRadius: 5,
                  //     spreadRadius: 0,
                  //     offset: const Offset(2, 6),
                  //   ),
                  // ],
                  borderRadius: BorderRadius.circular(12),
                )
              : BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: AppColors.mainGrey),
          child: Center(
            child: Text(
              widget.category[widget.index],
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: widget.clicked == widget.index
                      ? AppColors.mainGrey
                      : Color.fromARGB(255, 188, 188, 188),
                  fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}
