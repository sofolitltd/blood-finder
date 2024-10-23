part of '../registration_page.dart';

class _FormFIeldRow extends StatelessWidget {
  const _FormFIeldRow({
    required this.hintTextLeft,
    this.controllerLeft,
    required this.hintTextRight,
    this.controllerRight,
  });

  final String hintTextLeft;
  final TextEditingController? controllerLeft;
  final String hintTextRight;
  final TextEditingController? controllerRight;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomTextFormField(
            hintText: hintTextLeft,
            controller: controllerLeft,
          ),
        ),
        const Gap(16),
        Expanded(
          child: CustomTextFormField(
            hintText: hintTextRight,
            controller: controllerRight,
          ),
        ),
      ],
    );
  }
}
