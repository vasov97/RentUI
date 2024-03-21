import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rent_ui/colors.dart';
import 'package:rent_ui/widgets/arrows.dart';
import 'package:rent_ui/widgets/details.dart';
import 'package:rent_ui/widgets/parallax_card.dart';
import 'package:rent_ui/widgets/vertical_title.dart';

class AnimatedCard extends StatefulWidget {
  const AnimatedCard({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
    required this.isExpanded,
    required this.onCardDragged,
    required this.room,
    required this.imageName,
  });
  final double screenHeight;
  final double screenWidth;

  final bool isExpanded;
  final Function(DragUpdateDetails) onCardDragged;

  final String room;
  final String imageName;
  @override
  State<AnimatedCard> createState() => _AnimatedCardState();
}

class _AnimatedCardState extends State<AnimatedCard> {
  double? xAxis;
  StreamSubscription<dynamic>? listener;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 80.0, left: 20, right: 20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: SizedBox(
          height: widget.screenHeight * 0.7,
          width: widget.screenWidth * 0.78,
          child: Stack(
            fit: StackFit.expand,
            alignment: Alignment.center,
            children: [
              AnimatedPositioned(
                duration: const Duration(milliseconds: 500),
                bottom: widget.isExpanded ? 40 : 100,
                width: widget.isExpanded
                    ? widget.screenWidth * 0.78
                    : widget.screenWidth * 0.7,
                height: widget.isExpanded
                    ? widget.screenHeight * 0.55
                    : widget.screenHeight * 0.5,
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.textGrey,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  height: widget.isExpanded
                      ? widget.screenHeight * 0.55
                      : widget.screenHeight * 0.5,
                  width: widget.isExpanded
                      ? widget.screenWidth * 0.78
                      : widget.screenWidth * 0.7,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      if (widget.room == 'Bedroom')
                        bedroomDetails
                      else if (widget.room == 'Bathroom')
                        bathroomDetails
                      else if (widget.room == 'Kitchen')
                        kitchenDetails
                      else
                        livingRoomDetails,
                      const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 6,
                        ),
                        child: Divider(color: AppColors.mainGrey),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                          left: 10,
                          bottom: 7,
                          right: 10,
                        ),
                        child: Text(loremIpsum),
                      ),
                    ],
                  ),
                ),
              ),
              AnimatedPositioned(
                duration: const Duration(milliseconds: 500),
                bottom: widget.isExpanded ? 150 : 100,
                child: GestureDetector(
                  onVerticalDragUpdate: widget.onCardDragged,
                  child: SizedBox(
                    height: widget.screenHeight * 0.5,
                    width: widget.screenWidth * 0.7,
                    child: Stack(
                      children: [
                        ParallaxCard(
                          imagePath: 'assets/${widget.imageName}.jpg',
                          parallaxValue: 1,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 24.0),
                              child: VerticalRoomTitle(room: widget.room),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(bottom: 16.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Arrows(),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
