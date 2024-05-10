import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

import '../models/project_model.dart';

class ProjectOverlay extends StatefulWidget {
  final ProjectModel model;
  ProjectOverlay({
    super.key,
    required this.model,
  });

  @override
  State<ProjectOverlay> createState() => _ProjectOverlayState();
}

class _ProjectOverlayState extends State<ProjectOverlay> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: SizedBox(
        width: MediaQuery.sizeOf(context).width * 0.8,
        height: MediaQuery.sizeOf(context).height * 0.8,
        child: PhotoViewGallery.builder(
          scrollPhysics: const BouncingScrollPhysics(),
          builder: (BuildContext context, int index) {
            return PhotoViewGalleryPageOptions(
              imageProvider: AssetImage(widget.model.images[index].imagePath),
              initialScale: PhotoViewComputedScale.contained,
              heroAttributes: PhotoViewHeroAttributes(
                  tag: widget.model.images[index].imageSubtitle),
            );
          },
          itemCount: widget.model.images.length,
          loadingBuilder: (context, event) => const Center(
            child: SizedBox(
              width: 20.0,
              height: 20.0,
              child: CircularProgressIndicator(),
            ),
          ),
          // TODO: Gallery view
          // backgroundDecoration: widget.backgroundDecoration,
          // pageController: widget.pageController,
          // onPageChanged: onPageChanged,
        ),
      ),
    );
  }
}
