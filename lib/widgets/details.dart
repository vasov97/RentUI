import 'package:flutter/material.dart';
import 'package:rent_ui/colors.dart';

const bedroomDetails = Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    Row(
      children: [
        Icon(
          Icons.bed,
          color: AppColors.mainGrey,
        ),
        Text(
          'x1',
          style: TextStyle(color: AppColors.mainGrey, fontSize: 18),
        ),
      ],
    ),
    Row(
      children: [
        Icon(
          Icons.balcony,
          color: AppColors.mainGrey,
        ),
        Icon(
          Icons.check,
          color: AppColors.mainGrey,
        ),
      ],
    ),
    Row(
      children: [
        Icon(
          Icons.tv,
          color: AppColors.mainGrey,
        ),
        Text(
          'x1',
          style: TextStyle(color: AppColors.mainGrey),
        ),
      ],
    ),
  ],
);

const bathroomDetails = Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    Row(
      children: [
        Icon(
          Icons.hot_tub,
          color: AppColors.mainGrey,
        ),
        Text(
          'x1',
          style: TextStyle(color: AppColors.mainGrey, fontSize: 18),
        ),
      ],
    ),
    Row(
      children: [
        Icon(
          Icons.shower,
          color: AppColors.mainGrey,
        ),
        Text(
          'x1',
          style: TextStyle(color: AppColors.mainGrey, fontSize: 18),
        ),
      ],
    ),
    Row(
      children: [
        Icon(
          Icons.person,
          color: AppColors.mainGrey,
        ),
        Text(
          'x2',
          style: TextStyle(color: AppColors.mainGrey),
        ),
      ],
    ),
  ],
);

const kitchenDetails = Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    Row(
      children: [
        Icon(
          Icons.kitchen,
          color: AppColors.mainGrey,
        ),
        Text(
          'x1',
          style: TextStyle(color: AppColors.mainGrey, fontSize: 18),
        ),
      ],
    ),
    Row(
      children: [
        Icon(
          Icons.coffee_maker_rounded,
          color: AppColors.mainGrey,
        ),
        Icon(
          Icons.check,
          color: AppColors.mainGrey,
        ),
      ],
    ),
    Row(
      children: [
        Icon(
          Icons.dining_outlined,
          color: AppColors.mainGrey,
        ),
        Icon(
          Icons.check,
          color: AppColors.mainGrey,
        ),
      ],
    ),
  ],
);

const livingRoomDetails = Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    Row(
      children: [
        Icon(
          Icons.wifi,
          color: AppColors.mainGrey,
        ),
        Icon(
          Icons.check,
          color: AppColors.mainGrey,
        ),
      ],
    ),
    Row(
      children: [
        Icon(
          Icons.chair,
          color: AppColors.mainGrey,
        ),
        Text(
          'x3',
          style: TextStyle(color: AppColors.mainGrey),
        ),
      ],
    ),
    Row(
      children: [
        Icon(
          Icons.charging_station,
          color: AppColors.mainGrey,
        ),
        Text(
          'x2',
          style: TextStyle(color: AppColors.mainGrey),
        ),
      ],
    ),
    Row(
      children: [
        Icon(
          Icons.fireplace,
          color: AppColors.mainGrey,
        ),
        Icon(
          Icons.check,
          color: AppColors.mainGrey,
        ),
      ],
    ),
  ],
);

const loremIpsum =
    ' Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s' +
        'when an unknown printer took a galley of type and scrambled.';
