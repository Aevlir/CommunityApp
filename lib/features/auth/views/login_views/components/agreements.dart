import 'package:flutter/material.dart';
import 'package:test/core/shared/constants/color/color.dart';
import 'package:test/core/shared/constants/number.dart/size.dart';
import 'package:test/core/widgets/test_text.dart';

class Agreements extends StatefulWidget {
  final bool? value;
  final ValueChanged<bool?>? onChanged;
  final VoidCallback? onTerms;
  final VoidCallback? onPrivacy;
  final VoidCallback? onCommunity;
  final VoidCallback? onCookie;

  const Agreements({
    super.key,
    this.onChanged,
    this.value,
    this.onTerms,
    this.onPrivacy,
    this.onCommunity,
    this.onCookie,
  });

  @override
  State<Agreements> createState() => _AgreementsState();
}

class _AgreementsState extends State<Agreements> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Checkbox(value: true, onChanged: widget.onChanged),
        Expanded(
          child: TestText.rich(
            fontSize: TestAppSizes.fontSm,
            color: TestColors.hintColor,
            overflow: TextOverflow.visible,
            textAlign: TextAlign.justify,
            spans: [
              const TextSpan(text: 'I have read and agree to the '),
              TextSpan(
                text: 'Terms of Service',
                style: TextStyle(
                  color: TestColors.primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const TextSpan(text: ', '),
              TextSpan(
                text: 'Privacy Policy',
                style: TextStyle(
                  color: TestColors.primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const TextSpan(text: ', '),
              TextSpan(
                text: 'Community Guidelines',
                style: TextStyle(
                  color: TestColors.primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const TextSpan(text: ' and '),
              TextSpan(
                text: 'Cookie Policy',
                style: TextStyle(
                  color: TestColors.primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const TextSpan(text: '.'),
            ],
          ),
        ),
      ],
    );
  }
}
