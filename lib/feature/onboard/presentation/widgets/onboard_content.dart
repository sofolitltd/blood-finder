part of '../view/onboard_page.dart';

class _OnboardingContent extends StatelessWidget {
  const _OnboardingContent({required this.data});

  final OnboardingData data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.network(
            data.imageUrl,
            height: 250,
          ),
          const Gap(30),
          Text(
            data.title,
            style: context.textStyle.title24Semibold,
          ),
          const Gap(30),
          Text(
            data.description,
            textAlign: TextAlign.center,
            style: context.textStyle.body16Regular
          ),
        ],
      ),
    );
  }
}
