import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:intl/intl.dart';
import 'package:webapptrial/widgets/export_widget.dart';

class EmptyTextField extends StatelessWidget {
  final String labelText, hintText, formName;

  final int maximumLines, maximumLength, formValidatorMinLength;
  final TextEditingController textEditingController;

  EmptyTextField({
    Key key,
    this.maximumLength,

    // this.focusNode,
    @required this.maximumLines,
    @required this.textEditingController,
    @required this.labelText,
    @required this.formName,
    this.hintText,
    this.formValidatorMinLength,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.primaryWhite,
      child: FormBuilderTextField(
        controller: textEditingController,
        name: formName,
        keyboardType: TextInputType.text,
        maxLines: maximumLines,
        maxLength: maximumLength,
        decoration: buildFormTextDecoration(hintText, labelText),
        style: AppTextStyles.formFontSecNavy17,
        cursorColor: AppColors.secondaryBlack64,
        textCapitalization: TextCapitalization.sentences,
        textInputAction: TextInputAction.next,
        textAlign: TextAlign.start,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: FormBuilderValidators.compose(
          [
            FormBuilderValidators.required(context),
            FormBuilderValidators.minLength(context, formValidatorMinLength),
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class AppFormTextField extends StatelessWidget {
  final String initialValue, labelText, hintText, formName;

  final int maximumLines, maximumLength, formValidatorMinLength;
  final FormFieldSetter onSave;
  final bool emailValidator;
  final bool numericInput;

  AppFormTextField({
    Key key,
    @required this.onSave,
    this.maximumLength,

    // this.focusNode,
    @required this.maximumLines,
    @required this.initialValue,
    @required this.labelText,
    @required this.formName,
    this.hintText,
    this.formValidatorMinLength,
    this.emailValidator,
    this.numericInput,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.primaryWhite,
      child: FormBuilderTextField(
        onSaved: onSave,
        name: formName,
        keyboardType: TextInputType.text,
        maxLines: maximumLines,
        maxLength: maximumLength,
        decoration: buildFormTextDecoration(hintText, labelText),
        style: AppTextStyles.formFontSecNavy17,
        cursorColor: AppColors.secondaryBlack64,
        textCapitalization: TextCapitalization.sentences,
        textInputAction: TextInputAction.next,
        textAlign: TextAlign.start,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        initialValue: initialValue,
        validator: FormBuilderValidators.compose(
          [
            numericInput == true
                ? FormBuilderValidators.numeric(context)
                : FormBuilderValidators.required(context),
            FormBuilderValidators.required(context),
            FormBuilderValidators.minLength(context, formValidatorMinLength),
          ],
        ),
      ),
    );
  }
}

class AppFormCountryPicker extends StatelessWidget {
  final ValueChanged<CountryCode> onSave;

  final String hint, label, initialValue;

  final bool showFlag;

  AppFormCountryPicker({
    @required this.onSave,
    this.showFlag,
    this.hint,
    this.label,
    this.initialValue,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InputDecorator(
        decoration: buildFormTextDecoration(hint, label),
        child: Container(
          height: 50,
          child: CountryCodePicker(
            textStyle: AppTextStyles.formFontSecNavy17,

            searchDecoration: InputDecoration(
              contentPadding: EdgeInsets.only(left: 30, right: 30),
            ),
            onChanged: onSave,
            showFlag: showFlag,
            showFlagMain: true,
            initialSelection: initialValue,
            showOnlyCountryWhenClosed: true,
            alignLeft: true,
            enabled: true,
            dialogTextStyle: AppTextStyles.formFontSecNavy17,
            flagWidth: 20,
            showFlagDialog: true,
            dialogSize: Size(300, 600),
            showCountryOnly: true,
            searchStyle: AppTextStyles.formFontSecNavy17,
            padding: EdgeInsets.all(0),

            //  initialSelection: initialValue,
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class AppFormDropDown extends StatelessWidget {
  final String labelText, initialValue, formName;
  var selectionOption = [];
  final FormFieldSetter onSave;

  // final FocusNode focusNode;

  AppFormDropDown({
    Key key,
    @required this.labelText,
    @required this.onSave,
    this.initialValue,
    @required this.selectionOption,
    @required this.formName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: FormBuilderDropdown(
          elevation: 0,
          dropdownColor: Colors.grey.shade50,
          initialValue: initialValue,
          name: formName,
          decoration: buildFormTextDecoration(" ", labelText),
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: FormBuilderValidators.compose(
            [
              FormBuilderValidators.required(context),
            ],
          ),
          items: selectionOption
              .map((category) => DropdownMenuItem(
                    value: category,
                    child: Text(
                      '$category',
                      style: AppTextStyles.formFontSecNavy17,
                    ),
                  ))
              .toList(),
          style: AppTextStyles.formFontSecNavy17,
          allowClear: false,
          onSaved: onSave),
    );
  }
}

class AppFormEmailField extends StatelessWidget {
  final String initialValue, labelText, formName;
  final FormFieldSetter onSave;

  // final FocusNode focusNode;

  AppFormEmailField({
    Key key,

    // @required this.focusNode,
    @required this.onSave,
    @required this.initialValue,
    @required this.labelText,
    @required this.formName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: FormBuilderTextField(
        textInputAction: TextInputAction.next,
        textAlign: TextAlign.start,
        keyboardType: TextInputType.emailAddress,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        initialValue: initialValue,
        // focusNode: focusNode,
        validator: FormBuilderValidators.compose([
          FormBuilderValidators.required(context),
          FormBuilderValidators.email(context),
        ]),
        cursorColor: AppColors.primaryBlack00,
        name: formName,
        maxLines: 1,

        decoration: buildFormTextDecoration(" ", labelText),
        style: AppTextStyles.formFontSecNavy17,
        onSaved: onSave,
      ),
    );
  }
}

class AppFormDatePicker extends StatelessWidget {
  final String labelText, formName;
  final FormFieldSetter<DateTime> onSave;
  final DateTime initialValue, lastDate, firstDate;
  final TimeOfDay initialTime;

  const AppFormDatePicker({
    Key key,
    @required this.labelText,
    @required this.formName,
    @required this.onSave,
    @required this.initialValue,
    this.lastDate,
    this.firstDate,
    this.initialTime,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: FormBuilderDateTimePicker(
        validator: FormBuilderValidators.compose([
          FormBuilderValidators.required(context,
              errorText: "Field is Required")
        ]),
        inputType: InputType.date,
        textInputAction: TextInputAction.next,
        textAlign: TextAlign.start,
        useRootNavigator: true,
        initialTime: initialTime,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        initialEntryMode: DatePickerEntryMode.calendar,
        initialDatePickerMode: DatePickerMode.day,
        style: AppTextStyles.formFontSecNavy17,
        decoration: buildFormTextDecoration(" ", labelText),
        initialDate: DateTime.now(),
        alwaysUse24HourFormat: true,
        format: DateFormat("yyyy-MM-dd"),
        name: formName,
        initialValue: initialValue,
        lastDate: lastDate,
        firstDate: firstDate,
        onSaved: onSave,
        keyboardType: TextInputType.datetime,
        enableInteractiveSelection: true,
      ),
    );
  }
}

class AppFormDatePickerTwo extends StatelessWidget {
  final String labelText, formName;
  final FormFieldSetter<DateTime> onSave, onChange;
  final DateTime initialValue, lastDate, firstDate;
  final TimeOfDay initialTime;

  const AppFormDatePickerTwo({
    Key key,
    @required this.labelText,
    @required this.formName,
    @required this.onSave,
    @required this.initialValue,
    this.lastDate,
    this.firstDate,
    this.initialTime,
    this.onChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: FormBuilderDateTimePicker(
        validator: FormBuilderValidators.compose([
          FormBuilderValidators.required(context,
              errorText: "Field is Required")
        ]),
        inputType: InputType.date,
        textInputAction: TextInputAction.next,
        textAlign: TextAlign.center,
        useRootNavigator: true,
        initialTime: initialTime,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        initialEntryMode: DatePickerEntryMode.calendar,
        initialDatePickerMode: DatePickerMode.day,
        style: AppTextStyles.formFontSecNavy17,
        decoration: buildFormTextDecoration(" ", labelText),
        initialDate: DateTime.now(),
        alwaysUse24HourFormat: true,
        format: DateFormat("yyyy-MM-dd"),
        name: formName,
        initialValue: initialValue,
        lastDate: lastDate,
        firstDate: firstDate,
        onSaved: onSave,
        onChanged: onChange,
        keyboardType: TextInputType.datetime,
        enableInteractiveSelection: true,
      ),
    );
  }
}

class AppFormTimePicker extends StatelessWidget {
  final String labelText, formName;

  final FormFieldSetter onSave;
  final DateTime initialValue;

  const AppFormTimePicker({
    Key key,
    @required this.labelText,
    @required this.onSave,
    @required this.initialValue,
    @required this.formName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: FormBuilderDateTimePicker(
        style: AppTextStyles.formFontSecNavy17,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        alwaysUse24HourFormat: true,
        textInputAction: TextInputAction.next,
        textAlign: TextAlign.start,
        initialValue: initialValue,
        name: formName,
        onSaved: onSave,
        inputType: InputType.time,
        decoration: buildFormTextDecoration(" ", labelText),
        validator: FormBuilderValidators.compose(
            [FormBuilderValidators.required(context)]),
        initialTime: TimeOfDay(hour: 8, minute: 0),
      ),
    );
  }
}

class AppFormDateRangePicker extends StatelessWidget {
  final String labelText, formName;

  final FormFieldSetter onSave;

  const AppFormDateRangePicker({
    Key key,
    @required this.labelText,
    @required this.onSave,
    @required this.formName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: FormBuilderDateRangePicker(
        style: AppTextStyles.formFontSecNavy17,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        name: formName,
        textInputAction: TextInputAction.next,
        textAlign: TextAlign.start,
        firstDate: DateTime.now(),
        lastDate: DateTime.now().add(Duration(days: 1000)),
        format: DateFormat('yyyy-MM-dd'),
        onSaved: onSave,
        decoration: buildFormTextDecoration(" ", labelText),
      ),
    );
  }
}

class AppFormBuilderSwitchButton extends StatelessWidget {
  final bool initialValue;
  final String labelText, formName;

  final FormFieldSetter onSave;

  AppFormBuilderSwitchButton({
    Key key,
    @required this.onSave,
    @required this.initialValue,
    @required this.labelText,
    @required this.formName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: FormBuilderSwitch(
        controlAffinity: ListTileControlAffinity.trailing,
        activeColor: AppColors.primaryGreenB1,
        decoration: InputDecoration(
            fillColor: AppColors.primaryWhite,
            border: InputBorder.none,
            filled: true),
        title: Text(labelText),
        name: formName,
        initialValue: initialValue,
        onChanged: onSave,
      ),
    );
  }
}

class AppFormBuilderListCheckBox extends StatelessWidget {
  final FormFieldSetter onSave;
  final String errorText;
  final String labelText;

  AppFormBuilderListCheckBox({
    Key key,
    @required this.onSave,
    @required this.labelText,
    @required this.errorText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: FormBuilderCheckbox(
        title: Text(labelText),
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: FormBuilderValidators.compose([
          FormBuilderValidators.required(
            context,
            errorText: errorText,
          )
        ]),
        decoration: buildFormTextDecoration(" ", labelText),
        name: 'CheckBox',
        enabled: true,
        initialValue: false,
        onSaved: onSave,
      ),
    );
  }
}

class AppFormWebsite extends StatelessWidget {
  final String initialValue, formName;
  final String labelText;
  final int maximumLines;
  final int maximumLength;

  final FormFieldSetter onSave;
  final int formValidatorMinLength;

  AppFormWebsite(
      {Key key,
      @required this.onSave,
      this.maximumLength,

      // this.focusNode,
      @required this.maximumLines,
      @required this.initialValue,
      @required this.labelText,
      @required this.formName,
      this.formValidatorMinLength})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: FormBuilderTextField(
        textCapitalization: TextCapitalization.sentences,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        keyboardType: TextInputType.url,
        initialValue: initialValue,
        textInputAction: TextInputAction.next,
        textAlign: TextAlign.start,
        //focusNode: focusNode,
        validator: FormBuilderValidators.compose([
          FormBuilderValidators.url(context),
          FormBuilderValidators.required(context),
        ]),
        cursorColor: AppColors.primaryBlack00,
        name: formName,
        maxLines: maximumLines,
        maxLength: maximumLength,

        decoration: buildFormTextDecoration(" ", labelText),
        style: AppTextStyles.formFontSecNavy17,
        onSaved: onSave,
      ),
    );
  }
}

class AppFormBuilderRangeSlider extends StatelessWidget {
  final String labelText, formName;
  final FormFieldSetter onSave;

  AppFormBuilderRangeSlider({
    Key key,
    @required this.onSave,
    @required this.labelText,
    @required this.formName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: FormBuilderSlider(
        validator: FormBuilderValidators.compose(
            [FormBuilderValidators.min(context, 5)]),
        onSaved: onSave,
        min: 5.0,
        max: 50.0,
        initialValue: 5.0,
        divisions: 5,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        minTextStyle: AppTextStyles.formFontSecNavy17,
        activeColor: Colors.green,
        inactiveColor: Colors.red,
        decoration: buildFormTextDecoration(" ", labelText),
        displayValues: DisplayValues.current,
        name: formName,
      ),
    );
  }
}

class AppFormNumericField extends StatelessWidget {
  final String labelText, hintText, formName, initialValue;
  final int maximumLines, formValidatorMinLength, max;

  final FormFieldSetter onSave;

  AppFormNumericField({
    Key key,
    @required this.onSave,
    @required this.formName,

    // this.focusNode,
    @required this.maximumLines,
    @required this.initialValue,
    @required this.labelText,
    this.hintText,
    this.formValidatorMinLength,
    this.max,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.primaryWhite,
      child: FormBuilderTextField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        textCapitalization: TextCapitalization.sentences,
        initialValue: initialValue,
        keyboardType: TextInputType.number,
        textInputAction: TextInputAction.next,
        textAlign: TextAlign.start,
        //focusNode: focusNode,
        validator: FormBuilderValidators.compose([
          FormBuilderValidators.min(context, 0),
          // FormBuilderValidators.max(context, max,  inclusive: false, errorText:"Number can't be more than $max"),
          FormBuilderValidators.required(context),

          FormBuilderValidators.numeric(context),
        ]),
        cursorColor: AppColors.primaryBlack00,
        name: formName,
        maxLines: maximumLines,

        decoration: buildFormTextDecoration(hintText, labelText),
        style: AppTextStyles.formFontSecNavy17,
        onSaved: onSave,
      ),
    );
  }
}

// Input decoration widget
InputDecoration buildFormTextDecoration(
  String hint,
  String label,
) {
  return InputDecoration(
      filled: true,
      errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            width: 0.5,
            color: AppColors.redColor5B,
          )),
      focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(width: 0.5, color: AppColors.redColor5B)),
      fillColor: AppColors.primaryWhite,
      focusColor: AppColors.primaryWhite,
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            width: 0.5,
            color: AppColors.secondaryBlack64,
          )),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            width: 0.5,
            color: AppColors.lightGreyColorD7,
          )),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            width: 0.5,
            color: AppColors.lightGreyColorD7,
          )),
      labelText: label,
      hintText: hint,
      hintStyle: AppTextStyles.mainRegularGrey18,
      labelStyle: AppTextStyles.mainRegularGrey18,
      contentPadding: EdgeInsets.only(left: 15, top: 20));
}

class CountryService {
  static final List<String> allCountries = [
    "Estonia",
    "Finland",
    'France',
    'United Kingdom',
    'United States',
    'Albania',
    'Algeria',
    'American Samoa',
    'Andorra',
    'Angola',
    'Anguilla',
    'Antarctica',
    'Antigua and Barbuda',
    'Argentina',
    'Armenia',
    'Aruba',
    'Australia',
    'Austria',
    'Azerbaijan',
    'Bahamas',
    'Bahrain',
    'Bangladesh',
    'Barbados',
    'Belarus',
    'Belgium',
    'Belize',
    'Benin',
    'Bermuda',
    'Bhutan',
    'Bolivia',
    'Bosnia and Herzegowina',
    'Botswana',
    'Bouvet Island',
    'Brazil',
    'British Indian Ocean Territory',
    'Brunei Darussalam',
    'Bulgaria',
    'Burkina Faso',
    'Burundi',
    'Cambodia',
    'Cameroon',
    'Canada',
    'Cape Verde',
    'Cayman Islands',
    'Central African Republic',
    'Chad',
    'Chile',
    'China',
    'Christmas Island',
    'Cocos (Keeling) Islands',
    'Colombia',
    'Comoros',
    'Congo',
    'Congo, the Democratic Republic of the',
    'Cook Islands',
    'Costa Rica',
    'Cote d\'Ivoire',
    'Croatia (Hrvatska)',
    'Cuba',
    'Cyprus',
    'Czech Republic',
    'Denmark',
    'Djibouti',
    'Dominica',
    'Dominican Republic',
    'East Timor',
    'Ecuador',
    'Egypt',
    'El Salvador',
    'Equatorial Guinea',
    'Eritrea',
    'Ethiopia',
    'Falkland Islands (Malvinas)',
    'Faroe Islands',
    'Fiji',
    'France Metropolitan',
    'French Guiana',
    'French Polynesia',
    'French Southern Territories',
    'Gabon',
    'Gambia',
    'Georgia',
    'Germany',
    'Ghana',
    'Gibraltar',
    'Greece',
    'Greenland',
    'Grenada',
    'Guadeloupe',
    'Guam',
    'Guatemala',
    'Guinea',
    'Guinea-Bissau',
    'Guyana',
    'Haiti',
    'Heard and Mc Donald Islands',
    'Holy See (Vatican City State)',
    'Honduras',
    'Hong Kong',
    'Hungary',
    'Iceland',
    'India',
    'Indonesia',
    'Iran (Islamic Republic of)',
    'Iraq',
    'Ireland',
    'Israel',
    'Italy',
    'Jamaica',
    'Japan',
    'Jordan',
    'Kazakhstan',
    'Kenya',
    'Kiribati',
    'Korea, Democratic People\'s Republic of',
    'Korea, Republic of',
    'Kuwait',
    'Kyrgyzstan',
    'Lao, People\'s Democratic Republic',
    'Latvia',
    'Lebanon',
    'Lesotho',
    'Liberia',
    'Libyan Arab Jamahiriya',
    'Liechtenstein',
    'Lithuania',
    'Luxembourg',
    'Macau',
    'Macedonia, The Former Yugoslav Republic of',
    'Madagascar',
    'Malawi',
    'Malaysia',
    'Maldives',
    'Mali',
    'Malta',
    'Marshall Islands',
    'Martinique',
    'Mauritania',
    'Mauritius',
    'Mayotte',
    'Mexico',
    'Micronesia, Federated States of',
    'Moldova, Republic of',
    'Monaco',
    'Mongolia',
    'Montserrat',
    'Morocco',
    'Mozambique',
    'Myanmar',
    'Namibia',
    'Nauru',
    'Nepal',
    'Netherlands',
    'Netherlands Antilles',
    'New Caledonia',
    'New Zealand',
    'Nicaragua',
    'Niger',
    'Nigeria',
    'Niue',
    'Norfolk Island',
    'Northern Mariana Islands',
    'Norway',
    'Oman',
    'Pakistan',
    'Palau',
    'Panama',
    'Papua New Guinea',
    'Paraguay',
    'Peru',
    'Philippines',
    'Pitcairn',
    'Poland',
    'Portugal',
    'Puerto Rico',
    'Qatar',
    'Reunion',
    'Romania',
    'Russian Federation',
    'Rwanda',
    'Saint Kitts and Nevis',
    'Saint Lucia',
    'Saint Vincent and the Grenadines',
    'Samoa',
    'San Marino',
    'Sao Tome and Principe',
    'Saudi Arabia',
    'Senegal',
    'Seychelles',
    'Sierra Leone',
    'Singapore',
    'Slovakia (Slovak Republic)',
    'Slovenia',
    'Solomon Islands',
    'Somalia',
    'South Africa',
    'South Georgia and the South Sandwich Islands',
    'Spain',
    'Sri Lanka',
    'St. Helena',
    'St. Pierre and Miquelon',
    'Sudan',
    'Suriname',
    'Svalbard and Jan Mayen Islands',
    'Swaziland',
    'Sweden',
    'Switzerland',
    'Syrian Arab Republic',
    'Taiwan, Province of China',
    'Tajikistan',
    'Tanzania, United Republic of',
    'Thailand',
    'Togo',
    'Tokelau',
    'Tonga',
    'Trinidad and Tobago',
    'Tunisia',
    'Turkey',
    'Turkmenistan',
    'Turks and Caicos Islands',
    'Tuvalu',
    'Uganda',
    'Ukraine',
    'United Arab Emirates',
    'United States Minor Outlying Islands',
    'Uruguay',
    'Uzbekistan',
    'Vanuatu',
    'Venezuela',
    'Vietnam',
    'Virgin Islands (British)',
    'Virgin Islands (U.S.)',
    'Wallis and Futuna Islands',
    'Western Sahara',
    'Yemen',
    'Yugoslavia',
    'Zambia',
    'Afghanistan',
    'Zimbabwe'
  ];

  static List<String> getCountrySuggestions(String query) {
    List<String> matches = <String>[];
    matches.addAll(allCountries);

    matches.retainWhere((s) => s.toLowerCase().contains(query.toLowerCase()));
    return matches;
  }
}

class AppTypeAheadSearch extends StatelessWidget {
  final TextEditingController controller;
  final FormFieldSetter onSave;

  AppTypeAheadSearch({
    Key key,
    @required this.onSave,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: TypeAheadFormField(
        textFieldConfiguration: TextFieldConfiguration(
          decoration: InputDecoration(labelText: 'Country'),
          controller: controller,
        ),
        suggestionsCallback: (pattern) =>
            CountryService.getCountrySuggestions(pattern),
        itemBuilder: (context, String suggestion) => ListTile(
          title: Text(suggestion),
        ),
        transitionBuilder: (context, suggestionsBox, controller) =>
            suggestionsBox,
        onSuggestionSelected: (String suggestion) =>
            controller.text = suggestion,
        validator: (value) => value.isEmpty ? 'Search by country' : null,
        keepSuggestionsOnLoading: true,
        onSaved: (value) => onSave,
      ),
    );
  }
}
