import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/common/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: SvgPicture.asset(
              'bg.svg',
            ),
          ),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 20),
              child: ScrollConfiguration(
                behavior:
                    ScrollConfiguration.of(context).copyWith(scrollbars: false),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 100),
                      Text(
                        'Hi all. I am',
                        style: GoogleFonts.jetBrainsMono(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        'JUSTINPRABHAKARAN M',
                        style: GoogleFonts.jetBrainsMono(
                            color: Colors.white,
                            fontSize: 62,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '> Flutter Developer',
                        style: GoogleFonts.jetBrainsMono(
                            color: Colors.white,
                            fontSize: 32,
                            fontWeight: FontWeight.normal),
                      ),
                      const SizedBox(
                        height: 60,
                      ),
                      SizedBox(
                        width: 450,
                        child: Text(
                          'I am well-versed in several programming languages and frameworks, including Java, Python, Dart, Flutter, Node.js, C, and C++. With a passion for software development, I enjoy tackling challenges and crafting innovative solutions.',
                          style: GoogleFonts.jetBrainsMono(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                      const SizedBox(
                        height: 200,
                      ),
                      Text(
                        'Projects',
                        style: GoogleFonts.jetBrainsMono(
                          color: AppColors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 30),
                      const SingleChildScrollView( //! scroll not working
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            SizedBox(width: 50),
                            ProjectCard(),
                            SizedBox(
                              width: 40,
                            ),
                            ProjectCard()
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 16,
            bottom: 16,
            child: Column(
              children: [
                const Icon(
                  Icons.abc,
                  size: 25,
                  color: AppColors.lightIconColor,
                ),
                const SizedBox(
                  height: 5,
                ),
                const Icon(
                  Icons.abc,
                  size: 25,
                  color: AppColors.lightIconColor,
                ),
                Container(
                  height: 150,
                  width: 2,
                  color: AppColors.lightIconColor,
                )
              ],
            ),
          ),
          Positioned(
            right: 16,
            bottom: 16,
            child: Column(
              children: [
                const Icon(
                  Icons.abc,
                  size: 25,
                  color: AppColors.lightIconColor,
                ),
                const SizedBox(
                  height: 5,
                ),
                const Icon(
                  Icons.abc,
                  size: 25,
                  color: AppColors.lightIconColor,
                ),
                Container(
                  height: 300,
                  width: 2,
                  color: AppColors.lightIconColor,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.cardBgColor,
      shape: const RoundedRectangleBorder(
        side: BorderSide(color: AppColors.borderSideColor),
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      elevation: 8,
      child: Container(
        height: 314,
        width: 370,
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'chat_share.jpg',
              height: 145,
              width: 370,
            ),
            const SizedBox(
              height: 18,
            ),
            Text(
              'Classroom Chat and File Sharing Application',
              style: GoogleFonts.jetBrainsMono(
                color: AppColors.white,
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 38,
              width: 130,
              decoration: const BoxDecoration(
                  color: AppColors.buttonBgColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  )),
              child: Center(
                child: Text(
                  'view project',
                  style: GoogleFonts.jetBrainsMono(
                    color: AppColors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
