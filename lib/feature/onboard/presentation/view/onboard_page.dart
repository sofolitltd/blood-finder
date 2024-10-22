import 'package:blood_finder/core/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../core/services/router/routes.dart';
import '../../data/model/onboard.dart';

part '../widgets/onboard_content.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController _controller = PageController();
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {
        _currentIndex = _controller.page!.round();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: _data.length,
              itemBuilder: (context, index) {
                return _OnboardingContent(data: _data[index]);
              },
            ),
          ),
          IconButton(
            onPressed: () {
              context.pushReplacementNamed(Routes.home);
            },
            style: IconButton.styleFrom(
              backgroundColor: context.color.primary,
            ),
            icon: Icon(
              Icons.arrow_forward,
              color: context.color.onPrimary,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                _currentIndex > 0
                    ? TextButton(
                        onPressed: () {
                          _controller.previousPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        },
                        child: const Text('Prev'),
                      )
                    : const Spacer(),
                Expanded(
                  flex: 4,
                  child: Center(
                    child: SmoothPageIndicator(
                      controller: _controller,
                      count: _data.length,
                      effect: const ExpandingDotsEffect(
                        activeDotColor: Colors.red,
                        dotHeight: 8,
                        dotWidth: 8,
                        expansionFactor: 2,
                      ),
                    ),
                  ),
                ),
                _currentIndex < _data.length - 1
                    ? TextButton(
                        onPressed: () {
                          _controller.nextPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        },
                        child: const Text('Next'),
                      )
                    : const Spacer(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

final List<OnboardingData> _data = [
  OnboardingData(
    imageUrl: 'https://www.svgrepo.com/show/530619/polaroid.svg',
    title: 'Easy Donor Search',
    description:
        'Easy to find available donors nearby. Verified donors willing to help.',
  ),
  OnboardingData(
    imageUrl: 'https://www.svgrepo.com/show/530624/coconut-tree.svg',
    title: 'Track Your Donor',
    description:
        'You can track your donor\'s location and send necessary information to reach the destination properly.',
  ),
  OnboardingData(
    imageUrl: 'https://www.svgrepo.com/show/530623/ice-cream.svg',
    title: 'Emergency Subscription',
    description:
        'In case of emergency, you can find paid donors who are active 24/7.',
  ),
];
