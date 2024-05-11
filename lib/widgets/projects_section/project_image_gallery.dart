import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

import '../../models/project_model.dart';

class ProjectImageGallery extends StatefulWidget {
  final PageController pageController;
  final List<ProjectImageModel> images;
  final int index;

  ProjectImageGallery({
    super.key,
    required this.images,
    this.index = 0,
  }) : pageController = PageController(initialPage: index);

  @override
  State<ProjectImageGallery> createState() => _ProjectImageGalleryState();
}

class _ProjectImageGalleryState extends State<ProjectImageGallery> {
  late int currentIndex = widget.index;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      clipBehavior: Clip.antiAlias,
      child: Wrap(
        direction: Axis.vertical,
        // alignment: WrapAlignment.center,
        // runAlignment: WrapAlignment.center,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.6,
            height: MediaQuery.sizeOf(context).height * 0.6,
            child: PhotoViewGallery.builder(
              scrollDirection: Axis.horizontal,
              scrollPhysics: const BouncingScrollPhysics(),
              itemCount: widget.images.length,
              backgroundDecoration: const BoxDecoration(color: Colors.black),
              pageController: widget.pageController,
              onPageChanged: onPageChanged,
              loadingBuilder: (context, event) => const Center(
                child: SizedBox(
                  width: 20.0,
                  height: 20.0,
                  child: CircularProgressIndicator(),
                ),
              ),
              builder: (BuildContext context, int index) {
                return PhotoViewGalleryPageOptions(
                  imageProvider: AssetImage(widget.images[index].imagePath),
                  initialScale: PhotoViewComputedScale.contained,
                  minScale: PhotoViewComputedScale.contained,
                  maxScale: PhotoViewComputedScale.contained * 5,
                );
              },
            ),
          ),
          Row(
            children: [
              IconButton(
                onPressed: onLeftButtonPressed,
                icon: const Icon(
                  Icons.chevron_left_rounded,
                ),
              ),
              Container(
                width: MediaQuery.sizeOf(context).width * 0.5,
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "Image ${currentIndex + 1}/${widget.images.length} \n${widget.images[currentIndex].imageSubtitle}",
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 17.0,
                    decoration: null,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              IconButton(
                onPressed: onRightButtonPressed,
                icon: const Icon(
                  Icons.chevron_right_rounded,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  void onPageChanged(index) => setState(() {
        currentIndex = index;
      });

  void onLeftButtonPressed() {
    widget.pageController.animateToPage(
      currentIndex - 1,
      duration: const Duration(milliseconds: 300),
      curve: Curves.fastEaseInToSlowEaseOut,
    );
  }

  void onRightButtonPressed() {
    widget.pageController.animateToPage(
      currentIndex + 1,
      duration: const Duration(milliseconds: 300),
      curve: Curves.fastEaseInToSlowEaseOut,
    );
  }
}
