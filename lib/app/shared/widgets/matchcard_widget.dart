import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:maenbal/app/common/styles/colors.dart';
import 'package:maenbal/app/common/theme/font.dart';

// ignore: must_be_immutable
class MatchCard extends StatelessWidget {
  bool isLinear;
  String imageAClub;
  String nameAClub;
  String imageBClub;
  String nameBClub;
  String location;
  String time;

  MatchCard({
    this.isLinear = false,
    required this.imageAClub,
    required this.nameAClub,
    required this.imageBClub,
    required this.nameBClub,
    required this.location,
    required this.time,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      height: 61,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 3,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
        borderRadius: BorderRadius.circular(15),
        gradient: isLinear
            ? const LinearGradient(
                begin: Alignment.topLeft,
                colors: [
                  Color(0xFF343D87),
                  Color(0xFF004B75),
                ],
              )
            : null, // jika isLinear true, gunakan gradient, jika tidak, gunakan warna background biasa
        color: isLinear ? null : kColorScheme.surface,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildInfoClub(
                  isLinear: isLinear,
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: _buildInformation(
              icon: 'assets/images/location.svg',
              title: location,
              isLinear: isLinear,
            ),
          ),
          Expanded(
            flex: 1,
            child: _buildInformation(
              icon: 'assets/images/clock.svg',
              title: time,
              isLinear: isLinear,
            ),
          ),
        ],
      ),
    );
  }

  Row _buildInfoClub({required bool isLinear}) {
    return Row(
      children: [
        _buildClub(
          imageClub: imageAClub,
          nameClub: nameAClub,
          isLinear: isLinear,
        ),
        const SizedBox(width: 10),
        _buildVersusText(isLinear: isLinear),
        const SizedBox(width: 10),
        _buildClub(
          imageClub: imageBClub,
          nameClub: nameBClub,
          isLinear: isLinear,
        ),
      ],
    );
  }

  Column _buildVersusText({required bool isLinear}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 2,
          height: 15,
          child: VerticalDivider(
            color: isLinear ? kColorScheme.surface : AppColors.neutralColors[0],
          ),
        ),
        Text(
          'VS',
          style: semiBoldText12.copyWith(
            color: isLinear ? kColorScheme.surface : AppColors.neutralColors[0],
          ),
        ),
        SizedBox(
          width: 2,
          height: 15,
          child: VerticalDivider(
            color: isLinear ? kColorScheme.surface : AppColors.neutralColors[0],
          ),
        ),
      ],
    );
  }

  Row _buildInformation(
      {required String icon, required String title, required bool isLinear}) {
    return Row(
      children: [
        SvgPicture.asset(
          icon,
          colorFilter: ColorFilter.mode(
            isLinear ? kColorScheme.surface : AppColors.neutralColors[0],
            BlendMode.modulate,
          ),
        ),
        const SizedBox(width: 7),
        Text(
          title,
          style: regularText10.copyWith(
            color: isLinear ? kColorScheme.surface : AppColors.neutralColors[0],
          ),
        )
      ],
    );
  }

  Column _buildClub(
      {required String imageClub,
      required String nameClub,
      required bool isLinear}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          imageClub,
          height: 30,
          fit: BoxFit.cover,
        ),
        Text(
          nameClub,
          style: regularText10.copyWith(
            color: isLinear ? kColorScheme.surface : AppColors.neutralColors[0],
          ),
        )
      ],
    );
  }
}
