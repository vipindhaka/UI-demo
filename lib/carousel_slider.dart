import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/rendering.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CarouselSliderWidget extends StatefulWidget {
  final List<String> images;
  final String title;
  final ScrollDirection scrollDirection;
  const CarouselSliderWidget(
      {super.key,
      required this.images,
      required this.title,
      required this.scrollDirection});

  @override
  State<CarouselSliderWidget> createState() => _CarouselSliderWidgetState();
}

class _CarouselSliderWidgetState extends State<CarouselSliderWidget> {
  int activeItem = 0;

  @override
  Widget build(BuildContext context) {
    print(widget.scrollDirection.toString());
    return Stack(
      fit: StackFit.expand,
      children: [
        CarouselSlider.builder(
          itemCount: widget.images.length,
          itemBuilder: (context, index, realIndex) {
            return Container(
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    widget.images[index],
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
          options: CarouselOptions(
            viewportFraction: 1,
            //autoPlayInterval: Duration(seconds: 1),
            autoPlay: widget.scrollDirection == ScrollDirection.reverse
                ? false
                : true,
            aspectRatio: 1,
            onPageChanged: (index, reason) {
              setState(() {
                activeItem = index;
              });
            },
          ),
        ),
        Positioned(
          bottom: 10,
          left: 0,
          right: 0,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: AnimatedSmoothIndicator(
              activeIndex: activeItem,
              count: widget.images.length,
              effect: const ExpandingDotsEffect(
                expansionFactor: 2.5,
                activeDotColor: Colors.white,
                dotColor: Colors.grey,
              ),
            ),
          ),
        ),
        Positioned(
          left: 20,
          bottom: 60,
          child: Text(widget.title,
              style: const TextStyle(
                fontSize: 30,
                color: Colors.white,
              )),
        ),
      ],
    );
  }
}
