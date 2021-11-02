import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_vm.dart';
import 'package:webapptrial/widgets/export_widget.dart';

class AboutUs extends StatelessWidget {
  final double width;

  const AboutUs({
    Key key,
    @required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: const BoxConstraints(maxWidth: 400),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextRenderer(
              text: AutoSizeText(
                "Who we are",
                style: AppTextStyles.mainTitleRegularWhite10,
                minFontSize: 18,
                textAlign: TextAlign.start,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: width,
              child: TextRenderer(
                text: AutoSizeText(
                  ConstString.aboutContent,
                  style: AppTextStyles.mainTitleRegularWhite10,
                  textAlign: TextAlign.justify,
                  minFontSize: 16,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              width: width,
              child: TextRenderer(
                text: AutoSizeText(
                  ConstString.aboutMission,
                  style: AppTextStyles.mainTitleRegularWhite10,
                  textAlign: TextAlign.justify,
                  minFontSize: 16,
                ),
              ),
            ),
          ],
        ));
  }
}
