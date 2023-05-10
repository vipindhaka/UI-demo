import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:passprt/carousel_slider.dart';
import 'package:passprt/rating.dart';
import 'package:passprt/repository/repository.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  final ValueNotifier<ScrollDirection> scrollDirectionNotifier =
      ValueNotifier<ScrollDirection>(ScrollDirection.idle);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ref.watch(getLakeProvider).when(
          data: (lake) => NotificationListener<UserScrollNotification>(
                onNotification: (notification) {
                  if (notification.direction == ScrollDirection.forward ||
                      notification.direction == ScrollDirection.reverse) {
                    scrollDirectionNotifier.value = notification.direction;
                  }
                  return true;
                },
                child: NestedScrollView(
                  headerSliverBuilder: (context, innerBoxIsScrolled) => [
                    SliverAppBar(
                        // title: Text(lake!.bannerTitle),
                        leading: Container(
                          padding: const EdgeInsets.all(8),
                          margin: const EdgeInsets.all(8),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.arrow_back_ios,
                            color: Colors.grey,
                            size: 20,
                          ),
                        ),
                        actions: [
                          Container(
                            padding: const EdgeInsets.all(8),
                            margin: const EdgeInsets.only(right: 8),
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.search,
                              color: Colors.grey,
                            ),
                          )
                        ],
                        pinned: true,
                        floating: true,
                        expandedHeight: 300,
                        flexibleSpace: FlexibleSpaceBar(
                          //title: Text(lake!.bannerTitle),
                          //centerTitle: false,
                          background: ValueListenableBuilder(
                            valueListenable: scrollDirectionNotifier,
                            // child: CarouselSliderWidget(
                            //   images: lake!.bannerImages,
                            //   title: lake.bannerTitle,
                            // ),
                            builder: (context, scrollDirection, child) {
                              return CarouselSliderWidget(
                                scrollDirection: scrollDirection,
                                images: lake!.bannerImages,
                                title: lake.bannerTitle,
                              );
                            },
                          ),
                        )),
                    SliverPadding(
                      padding: const EdgeInsets.all(8.0),
                      sliver: SliverList(
                        delegate: SliverChildListDelegate(
                          [
                            RatingWidget(rating: lake!.rating),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              lake.description,
                              style: const TextStyle(fontSize: 18),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            for (final detail in lake.details)
                              Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Text(
                                  '• $detail',
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 2,
                                  ),
                                ),
                              ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              'Popular Treks',
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            SizedBox(
                              height: 300,
                              child: ListView.builder(
                                cacheExtent: 3,
                                scrollDirection: Axis.horizontal,
                                itemCount: lake.popularTreks.length,
                                itemBuilder: (context, index) {
                                  final trek = lake.popularTreks[index];
                                  return Padding(
                                    padding: const EdgeInsets.all(22.0),
                                    child: Stack(
                                      children: [
                                        Container(
                                          //height: 200,
                                          width: 180,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                trek.thumbnail,
                                              ),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          bottom: 40,
                                          left: 10,
                                          child: Text(
                                            trek.title,
                                            style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 16),
                                          ),
                                        ),
                                        Positioned(
                                            bottom: 10,
                                            left: 10,
                                            child: RatingWidget(
                                                rating: lake.rating))
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ),
                            // SizedBox(
                            //   height: 800,
                            // )
                          ],
                        ),
                      ),
                    ),
                  ],
                  body: const SizedBox(),
                ),
              ),
          error: (error, stackTrace) => const Center(child: Text('Error')),
          loading: () => const CircularProgressIndicator()),
    );
  }
}
