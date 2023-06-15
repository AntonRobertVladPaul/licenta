import 'package:flutter/material.dart';
import 'package:licenta/core/core.dart';
import 'package:licenta/resource/resource.dart';

class LocationImagesWidget extends StatelessWidget {
  const LocationImagesWidget({
    super.key,
    required this.selectedImage,
    required this.images,
    required this.onImageTap,
    required this.onSelectedImageDeleted,
  });

  final String selectedImage;
  final List<String> images;
  final void Function(String) onImageTap;
  final GestureTapCallback onSelectedImageDeleted;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: Stack(
            children: [
              Center(
                child: FadingNetworkImage(
                  url: selectedImage,
                  height: MediaQuery.of(context).size.height * 0.3,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 8,
                right: 8,
                child: GestureDetector(
                  onTap: onSelectedImageDeleted,
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color:
                          EasyBookingColors.primaryText.value.withOpacity(.5),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Asset.bin.widget(
                      color: EasyBookingColors.white.value,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 120,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: images
                .map(
                  (image) => Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: GestureDetector(
                      onTap: () => onImageTap(image),
                      child: Stack(
                        children: [
                          FadingNetworkImage(
                            url: image,
                            height: 120,
                            width: 120,
                            fit: BoxFit.cover,
                          ),
                          if (image != selectedImage) _buildBlackOverlay(),
                        ],
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }

  Widget _buildBlackOverlay() {
    // ignore: use_colored_box
    return Positioned.fill(
      child: Container(
        color: EasyBookingColors.primaryText.value.withOpacity(.5),
      ),
    );
  }
}
