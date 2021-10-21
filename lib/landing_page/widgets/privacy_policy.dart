import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webapptrial/const/const_privacy_policy.dart';
import 'package:webapptrial/widgets/export_widget.dart';

class PrivacyPolicyWidget extends StatelessWidget {
  static const String route = '/privacyPolicy';

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
                          ConstPrivacyPolicy.privacyMainTitle,
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
                      ConstPrivacyPolicy.privacyMainContent,
                      style: AppTextStyles.formFontSecNavy16,
                      minFontSize: 17,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: AutoSizeText(
                      ConstPrivacyPolicy.privacyConsent3,
                      style: AppTextStyles.formFontSecNavy16,
                      minFontSize: 25,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: AutoSizeText(
                      ConstPrivacyPolicy.privacyConsentContent4,
                      style: AppTextStyles.formFontSecNavy16,
                      minFontSize: 17,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: AutoSizeText(
                      ConstPrivacyPolicy.informationWeCollect5,
                      style: AppTextStyles.formFontSecNavy16,
                      minFontSize: 25,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: AutoSizeText(
                      ConstPrivacyPolicy.informationWeCollectContent6,
                      style: AppTextStyles.formFontSecNavy16,
                      minFontSize: 17,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: AutoSizeText(
                      ConstPrivacyPolicy.howWeUseYourInformation7,
                      style: AppTextStyles.formFontSecNavy16,
                      minFontSize: 25,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: AutoSizeText(
                      ConstPrivacyPolicy.howWeUseYourInformationContent8,
                      style: AppTextStyles.formFontSecNavy16,
                      minFontSize: 17,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: AutoSizeText(
                      ConstPrivacyPolicy.aggregatedData21,
                      style: AppTextStyles.formFontSecNavy16,
                      minFontSize: 25,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: AutoSizeText(
                      ConstPrivacyPolicy.aggregatedData22,
                      style: AppTextStyles.formFontSecNavy16,
                      minFontSize: 17,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: AutoSizeText(
                      ConstPrivacyPolicy.sharingData23,
                      style: AppTextStyles.formFontSecNavy16,
                      minFontSize: 25,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: AutoSizeText(
                      ConstPrivacyPolicy.sharingData24,
                      style: AppTextStyles.formFontSecNavy16,
                      minFontSize: 17,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: AutoSizeText(
                      ConstPrivacyPolicy.logFiles9,
                      style: AppTextStyles.formFontSecNavy16,
                      minFontSize: 25,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: AutoSizeText(
                      ConstPrivacyPolicy.logFilesContent10,
                      style: AppTextStyles.formFontSecNavy16,
                      minFontSize: 17,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: AutoSizeText(
                      ConstPrivacyPolicy.cookies11,
                      style: AppTextStyles.formFontSecNavy16,
                      minFontSize: 25,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: AutoSizeText(
                      ConstPrivacyPolicy.cookiesContent12,
                      style: AppTextStyles.formFontSecNavy16,
                      minFontSize: 17,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: AutoSizeText(
                      ConstPrivacyPolicy.thirdPartyPrivacy13,
                      style: AppTextStyles.formFontSecNavy16,
                      minFontSize: 25,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: AutoSizeText(
                      ConstPrivacyPolicy.thirdPartyPrivacyConsent14,
                      style: AppTextStyles.formFontSecNavy16,
                      minFontSize: 17,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: AutoSizeText(
                      ConstPrivacyPolicy.generalData25,
                      style: AppTextStyles.formFontSecNavy16,
                      minFontSize: 25,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: AutoSizeText(
                      ConstPrivacyPolicy.generalData26,
                      style: AppTextStyles.formFontSecNavy16,
                      minFontSize: 17,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: AutoSizeText(
                      ConstPrivacyPolicy.cCPAPrivacy15,
                      style: AppTextStyles.formFontSecNavy16,
                      minFontSize: 25,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: AutoSizeText(
                      ConstPrivacyPolicy.cCPAPrivacyContent16,
                      style: AppTextStyles.formFontSecNavy16,
                      minFontSize: 17,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: AutoSizeText(
                      ConstPrivacyPolicy.gdprPolicy17,
                      style: AppTextStyles.formFontSecNavy16,
                      minFontSize: 25,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: AutoSizeText(
                      ConstPrivacyPolicy.gdprPolicyContent18,
                      style: AppTextStyles.formFontSecNavy16,
                      minFontSize: 17,
                      textAlign: TextAlign.justify,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: AutoSizeText(
                      ConstPrivacyPolicy.aDeletionRight27,
                      style: AppTextStyles.formFontSecNavy16,
                      minFontSize: 25,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: AutoSizeText(
                      ConstPrivacyPolicy.aDeletionRight28,
                      style: AppTextStyles.formFontSecNavy16,
                      minFontSize: 17,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: AutoSizeText(
                      ConstPrivacyPolicy.childrenInformation19,
                      style: AppTextStyles.formFontSecNavy16,
                      minFontSize: 25,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: AutoSizeText(
                      ConstPrivacyPolicy.childrenInformationContent20,
                      style: AppTextStyles.formFontSecNavy16,
                      minFontSize: 17,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  /////////////////////////////////////////////////////
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: AutoSizeText(
                      ConstPrivacyPolicy.aChangeOfOwnership29,
                      style: AppTextStyles.formFontSecNavy16,
                      minFontSize: 25,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: AutoSizeText(
                      ConstPrivacyPolicy.aChangeOfOwnership30,
                      style: AppTextStyles.formFontSecNavy16,
                      minFontSize: 17,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: AutoSizeText(
                      ConstPrivacyPolicy.aSecurityRetention31,
                      style: AppTextStyles.formFontSecNavy16,
                      minFontSize: 25,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: AutoSizeText(
                      ConstPrivacyPolicy.aSecurityRetention32,
                      style: AppTextStyles.formFontSecNavy16,
                      minFontSize: 17,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: AutoSizeText(
                      ConstPrivacyPolicy.aChangesPolicyRight33,
                      style: AppTextStyles.formFontSecNavy16,
                      minFontSize: 25,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: AutoSizeText(
                      ConstPrivacyPolicy.aChangesPolicyRight34,
                      style: AppTextStyles.formFontSecNavy16,
                      minFontSize: 17,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: AutoSizeText(
                      ConstPrivacyPolicy.aContactUs35,
                      style: AppTextStyles.formFontSecNavy16,
                      minFontSize: 25,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, bottom: 500),
                    child: Column(
                      children: [
                        AutoSizeText(
                          ConstPrivacyPolicy.aContactUs36,
                          style: AppTextStyles.formFontSecNavy16,
                          minFontSize: 17,
                          textAlign: TextAlign.justify,
                        ),
                        InkWell(
                          onTap: () async => await Navigator.of(context)
                              .pushNamed(ContactUs.route),
                          child: AutoSizeText(
                            "Contact Us",
                            style: AppTextStyles.mainTitleRegularGreen10,
                            minFontSize: 18,
                          ),
                        )
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
