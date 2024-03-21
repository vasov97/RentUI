import 'package:flutter/material.dart';
import 'package:rent_ui/colors.dart';

class VerticalRoomTitle extends StatelessWidget {
  const VerticalRoomTitle({
    required this.room,
    super.key,
  });

  final String room;

  double _selectRight(String room) {
    if (room == 'Living room') {
      return 7;
    } else if (room == 'Kitchen') {
      return 110;
    } else if (room == 'Bedroom') {
      return 68;
    } else {
      return 45;
    }
  }

  @override
  Widget build(BuildContext context) {
    // final dx = 50 * animationValue;
    // final opacity = 1 - animationValue;
    return Align(
      alignment: Alignment.centerLeft,
      child: RotatedBox(
        quarterTurns: -1,
        child: FittedBox(
          child: Padding(
            padding: EdgeInsets.only(left: 5, right: _selectRight(room)

                //room == 'Living room' ? 7 : 30,
                ),
            child: Text(
              room.replaceAll(' ', ''),
              maxLines: 1,
              style: const TextStyle(
                color: AppColors.textGrey,
                fontSize: 78,
                letterSpacing: 2.2,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
