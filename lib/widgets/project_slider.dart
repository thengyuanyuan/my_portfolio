import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/project_items.dart';
import 'package:my_portfolio/widgets/project_card.dart';

class ProjectSlider extends StatefulWidget {
  const ProjectSlider({
    super.key,
  });

  @override
  State<ProjectSlider> createState() => _ProjectSliderState();
}

class _ProjectSliderState extends State<ProjectSlider> {
  final CarouselController carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        CarouselSlider.builder(
          carouselController: carouselController,
          options: CarouselOptions(
            height: 370.0,
            viewportFraction: 380.0 / MediaQuery.sizeOf(context).width,
            initialPage: 0,
            enableInfiniteScroll: true,
            pauseAutoPlayOnManualNavigate: true,
            pauseAutoPlayOnTouch: true,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            enlargeFactor: 100.0 / MediaQuery.sizeOf(context).width,
            scrollDirection: Axis.horizontal,
          ),
          itemCount: projectItemsList.length,
          itemBuilder:
              (BuildContext context, int itemIndex, int pageViewIndex) {
            // Project Card
            return ProjectCardWidget(
              projectModel: projectItemsList[itemIndex],
            );
          },
        ),
        Positioned(
          left: 5,
          child: Material(
            color: Colors.black.withOpacity(0.3),
            child: InkWell(
              hoverColor: Colors.white.withOpacity(0.3),
              splashColor: Colors.amber,
              onTap: () {
                carouselController.previousPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.fastOutSlowIn,
                );
              },
              child: const Icon(
                Icons.arrow_left_rounded,
                size: 50,
              ),
            ),
          ),
        ),
        Positioned(
          right: 5,
          child: Material(
            color: Colors.black.withOpacity(0.3),
            child: InkWell(
              hoverColor: Colors.white.withOpacity(0.3),
              splashColor: Colors.amber,
              onTap: () {
                carouselController.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.fastOutSlowIn,
                );
              },
              child: const Icon(
                Icons.arrow_right_rounded,
                size: 50,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
