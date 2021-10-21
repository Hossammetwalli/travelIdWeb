import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webapptrial/widgets/export_widget.dart';

class TermsOfUseWidget extends StatelessWidget {
  static const String route = '/termsOfUse';

  @override
  Widget build(BuildContext context) {
    // var width = MediaQuery.of(context).size.width;
    // var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.primaryWhite,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 50, right: 50),
          child: Center(
            child: Container(
              width: 900,
              constraints: BoxConstraints(maxWidth: 700),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 200,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        fit: FlexFit.loose,
                        child: AutoSizeText(
                          ConstTerms.termsMainTitle,
                          style: AppTextStyles.formFontSecNavy16,
                          minFontSize: 40,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: AutoSizeText(
                      ConstTerms.termsMainSubTitle,
                      style: AppTextStyles.formFontSecNavy16,
                      minFontSize: 25,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: AutoSizeText(
                      ConstTerms.termsContent1,
                      style: AppTextStyles.formFontSecNavy16,
                      minFontSize: 17,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: AutoSizeText(
                      ConstTerms.accessToTheSite2,
                      style: AppTextStyles.formFontSecNavy16,
                      minFontSize: 25,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: AutoSizeText(
                      ConstTerms.accessToTheSite3,
                      style: AppTextStyles.formFontSecNavy16,
                      minFontSize: 17,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: AutoSizeText(
                      ConstTerms.userAccount4,
                      style: AppTextStyles.formFontSecNavy16,
                      minFontSize: 25,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: AutoSizeText(
                      ConstTerms.userAccount5,
                      style: AppTextStyles.formFontSecNavy16,
                      minFontSize: 17,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: AutoSizeText(
                      ConstTerms.userContent6,
                      style: AppTextStyles.formFontSecNavy16,
                      minFontSize: 25,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: AutoSizeText(
                      ConstTerms.userContent7,
                      style: AppTextStyles.formFontSecNavy16,
                      minFontSize: 17,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: AutoSizeText(
                      ConstTerms.usingTravelID8,
                      style: AppTextStyles.formFontSecNavy16,
                      minFontSize: 25,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: AutoSizeText(
                      ConstTerms.usingTravelID9,
                      style: AppTextStyles.formFontSecNavy16,
                      minFontSize: 17,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: AutoSizeText(
                      ConstTerms.acceptableUsePolicy10,
                      style: AppTextStyles.formFontSecNavy16,
                      minFontSize: 25,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: AutoSizeText(
                      ConstTerms.acceptableUsePolicy11,
                      style: AppTextStyles.formFontSecNavy16,
                      minFontSize: 17,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: AutoSizeText(
                      ConstTerms.thirdParty12,
                      style: AppTextStyles.formFontSecNavy16,
                      minFontSize: 25,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: AutoSizeText(
                      ConstTerms.thirdParty13,
                      style: AppTextStyles.formFontSecNavy16,
                      minFontSize: 17,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: AutoSizeText(
                      ConstTerms.disclaimers14,
                      style: AppTextStyles.formFontSecNavy16,
                      minFontSize: 25,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: AutoSizeText(
                      ConstTerms.disclaimers15,
                      style: AppTextStyles.formFontSecNavy16,
                      minFontSize: 17,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: AutoSizeText(
                      ConstTerms.limitation16,
                      style: AppTextStyles.formFontSecNavy16,
                      minFontSize: 25,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: AutoSizeText(
                      ConstTerms.limitation17,
                      style: AppTextStyles.formFontSecNavy16,
                      minFontSize: 17,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: AutoSizeText(
                      ConstTerms.copyRights18,
                      style: AppTextStyles.formFontSecNavy16,
                      minFontSize: 25,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: AutoSizeText(
                      ConstTerms.copyRights19,
                      style: AppTextStyles.formFontSecNavy16,
                      minFontSize: 17,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: AutoSizeText(
                      ConstTerms.general20,
                      style: AppTextStyles.formFontSecNavy16,
                      minFontSize: 25,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: AutoSizeText(
                      ConstTerms.general21,
                      style: AppTextStyles.formFontSecNavy16,
                      minFontSize: 17,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: AutoSizeText(
                      ConstTerms.general22,
                      style: AppTextStyles.formFontSecNavy16,
                      minFontSize: 25,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: AutoSizeText(
                      ConstTerms.general23,
                      style: AppTextStyles.formFontSecNavy16,
                      minFontSize: 17,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, bottom: 500),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () async => await Navigator.of(context)
                              .pushNamed(ContactUs.route),
                          child: AutoSizeText(
                            ConstTerms.contactInfo24,
                            style: AppTextStyles.mainTitleRegularGreen10,
                            minFontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
