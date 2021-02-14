import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:intl/intl.dart';
import 'package:traveler_id/widgets/exports_packages.dart';




// ignore: must_be_immutable
class AppFormTextField extends StatelessWidget {
  final String initialValue;
  final String labelText;
  final hintText;
  final int maximumLines, maximumLength, formValidatorMinLength;
    final FormFieldSetter onSave;
   final  bool emailValidator;
  final bool numericInput;



  AppFormTextField({
    Key key,
    @required this.onSave,
    this.maximumLength,

    // this.focusNode,
    @required this.maximumLines,
    @required this.initialValue,
    @required this.labelText,
    this.hintText,
    this.formValidatorMinLength, this.emailValidator, this.numericInput,
  }) : super(key: key);


  @override


  Widget build(BuildContext context) {
    return Material(
      child:  FormBuilderTextField(
        keyboardType: TextInputType.text,
        maxLines: maximumLines,
        maxLength: maximumLength,
        decoration: buildFormTextDecoration(hintText, labelText),
        style: AppTextStyles.titlePrimary,
        onSaved: onSave,
        attribute:  "Text Field",
        cursorColor: AppColors.primaryColorBlended,
        textCapitalization: TextCapitalization.sentences,
        initialValue: initialValue,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validators: [
          numericInput == true ? FormBuilderValidators.numeric(): FormBuilderValidators.required() ,
          FormBuilderValidators.required(),
          FormBuilderValidators.minLength(formValidatorMinLength),
        ],
      ),

    );
  }
}




// ignore: must_be_immutable
class AppFormCountryPicker extends StatelessWidget {

  final String initialValue;
  final String labelText, hintText;
  final FormFieldSetter onSave;


  AppFormCountryPicker(
      {@required this.initialValue,
        @required this.onSave,
        @required this.labelText, this.hintText});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: FormBuilderCountryPicker(

        initialValue: initialValue,
        attribute: 'country',
        cursorColor: AppColors.primaryColorBlended,
        style: AppTextStyles.titlePrimary,
        priorityListByIsoCode: ['US'],
        valueTransformer: (value) => value.name,
        decoration: buildFormTextDecoration(hintText, labelText),
        validators: [
          FormBuilderValidators.required(),
        ],
        onSaved: onSave,
      ),
    );
  }
}

// ignore: must_be_immutable
class AppFormDropDown extends StatelessWidget {
  final String labelText, initialValue;
  var selectionOption = [];
  final FormFieldSetter onSave;

  // final FocusNode focusNode;

  AppFormDropDown({
    Key key,
    @required this.labelText,
    @required this.onSave,
    @required this.initialValue,
    @required this.selectionOption,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: FormBuilderDropdown(

          elevation: 0,
          dropdownColor: AppColors.backgroundColor,

          // focusNode: focusNode,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          initialValue: initialValue,
          attribute: 'Category Selection',
          decoration: buildFormTextDecoration(" ", labelText),
          validators: [
            FormBuilderValidators.required(),
          ],

          items: selectionOption
              .map((category) => DropdownMenuItem(
            value: category,
            child: Text('$category'),
          ))
              .toList(),
          style: AppTextStyles.titlePrimary,
          allowClear: true,
          onSaved: onSave),
    );
  }
}

// ignore: must_be_immutable


// ignore: must_be_immutable
class AppFormPhoneField extends StatelessWidget {
  final FormFieldSetter onSave;
  String initialValue;
  final String labelText;

  AppFormPhoneField(
      {this.initialValue, @required this.onSave, @required this.labelText});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: FormBuilderPhoneField(
        keyboardType: TextInputType.phone,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        attribute: 'phone_number',
        style: AppTextStyles.titlePrimary,
        cursorColor: AppColors.primaryColorBlended,
        initialValue: initialValue,
        decoration: buildFormTextDecoration(" ", labelText),
        priorityListByIsoCode: ['US'],
        validators:  [
          FormBuilderValidators.required( errorText: 'Invalid phone number'),
          FormBuilderValidators.required()
        ],
        onSaved: onSave,
      ),
    );
  }
}


// ignore: must_be_immutable
class AppFormEmailField extends StatelessWidget {
  final String initialValue, labelText;
  final FormFieldSetter onSave;

  // final FocusNode focusNode;

  AppFormEmailField({
    Key key,

    // @required this.focusNode,
    @required this.onSave,
    @required this.initialValue,
    @required this.labelText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: FormBuilderTextField(

        keyboardType: TextInputType.emailAddress,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        initialValue: initialValue,
        // focusNode: focusNode,
        validators: [
          FormBuilderValidators.required(),
          FormBuilderValidators.email(),
        ],
        cursorColor: AppColors.primaryColorBlended,
        attribute: "Email Field",
        maxLines: 1,

        decoration: buildFormTextDecoration(" ", labelText),
        style: AppTextStyles.titlePrimary,
        onSaved: onSave,
      ),
    );
  }
}

class AppFormDatePicker extends StatelessWidget {
  final String labelText;
  final FormFieldSetter onSave;
  final DateTime initialValue, lastDate, firstDate;

  const AppFormDatePicker({
    Key key,
    @required this.labelText,
    @required this.onSave,
    @required this.initialValue,
    this.lastDate,
    this.firstDate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: FormBuilderDateTimePicker(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validators: [FormBuilderValidators.required( errorText: "Field is Required")],
        inputType: InputType.date,
        useRootNavigator: true,
        initialEntryMode: DatePickerEntryMode.calendar,
        initialDatePickerMode: DatePickerMode.year,
        style: AppTextStyles.titlePrimary,
        decoration: buildFormTextDecoration(" ", labelText),

        initialDate: DateTime.now(),
        format: DateFormat("yyyy-MM-dd"),
        attribute: 'date',
        initialValue: initialValue,
        lastDate: lastDate,
        firstDate: firstDate,
        onSaved: onSave,
      ),
    );
  }
}

class AppFormTimePicker extends StatelessWidget {
  final String labelText;

  final FormFieldSetter onSave;
  final DateTime initialValue;

  const AppFormTimePicker({
    Key key,
    @required this.labelText,
    @required this.onSave,
    @required this.initialValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: FormBuilderDateTimePicker(

        style: AppTextStyles.titlePrimary,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        alwaysUse24HourFormat: true,
        initialValue: initialValue,
        attribute: 'date',
        onSaved: onSave,
        inputType: InputType.time,
        //format: DateFormat("Hm"),
        decoration: buildFormTextDecoration(" ", labelText),
        validators:  [FormBuilderValidators.required()],

        // locale: Locale('ru'),
        initialTime: TimeOfDay(hour: 8, minute: 0),
        // initialValue: DateTime.now(),
        // readonly: true,
      ),
    );
  }
}

class AppFormDateRangePicker extends StatelessWidget {
  final String labelText;

  final FormFieldSetter onSave;

  const AppFormDateRangePicker({
    Key key,
    @required this.labelText,
    @required this.onSave,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: FormBuilderDateRangePicker(
        style: AppTextStyles.titlePrimary,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        attribute: 'date_range',
        firstDate: DateTime.now(),
        lastDate: DateTime.now().add(Duration(days: 1000)),
        initialValue: [
          DateTime.now(),
          DateTime.now().add(Duration(days: 30)),
        ],
        format: DateFormat('yyyy-MM-dd'),
        onSaved: onSave,
        decoration: buildFormTextDecoration(" ", labelText),
      ),
    );
  }
}

class AppFormBuilderSwitchButton extends StatelessWidget {
  final bool initialValue;
  final String labelText;

  final FormFieldSetter onSave;

  AppFormBuilderSwitchButton({
    Key key,
    @required this.onSave,
    @required this.initialValue,
    @required this.labelText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: FormBuilderSwitch(

        label: Text(labelText),
        attribute: 'accept_terms_switch',
        initialValue: initialValue,
        onChanged: onSave,

        decoration: buildFormTextDecoration(" ", labelText),
      ),
    );
  }
}

class AppFormBuilderRating extends StatelessWidget {
  final num maximum;

  final FormFieldSetter onSave;

  final double iconsSize;
  final double initialValue;
  final String labelText;

  AppFormBuilderRating({
    @required this.onSave,
    @required this.maximum,
    @required this.iconsSize,
    @required this.initialValue,
    @required this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      child: FormBuilderRate(
        validators:[
        FormBuilderValidators.required(),],

        decoration: buildFormTextDecoration(" ", labelText),
        attribute: 'rate',
        iconSize: iconsSize,
        initialValue: initialValue,
        max: maximum,


        onSaved: onSave,
// readOnly: true,
        filledColor: AppColors.yellowColor,
        emptyColor: AppColors.lightGreyColor,
        isHalfAllowed: true,
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

    @required this.labelText, @required this.errorText,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: FormBuilderCheckbox(
        label: Text(labelText),

        validators:[
        FormBuilderValidators.required(
          errorText:
          errorText,
        )],



        decoration: buildFormTextDecoration(" ", labelText),
        attribute: 'CheckBox',
        leadingInput: true,
        initialValue: false,
        readOnly: false,



        onSaved: onSave,
      ),
    );
  }
}

class AppFormWebsite extends StatelessWidget {
  final String initialValue;
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
        //focusNode: focusNode,
        validators: [
          FormBuilderValidators.url(),
          FormBuilderValidators.required(),
        ],
        cursorColor: AppColors.primaryColorBlended,
        attribute: "Text Field",
        maxLines: maximumLines,
        maxLength: maximumLength,

        decoration: buildFormTextDecoration(" ", labelText),
        style: AppTextStyles.titlePrimary,
        onSaved: onSave,

      ),


    );
  }
}

class AppFormBuilderRangeSlider extends StatelessWidget {
  final String labelText;
  final FormFieldSetter onSave;

  AppFormBuilderRangeSlider({
    Key key,
    @required this.onSave,
    @required this.labelText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: FormBuilderSlider(


        validators: [FormBuilderValidators.min( 5)],
        onSaved: onSave,
        min: 5.0,
        max: 50.0,
        initialValue: 5.0,
        divisions: 5,
        minTextStyle: AppTextStyles.firstViewBlendedTitle,
        activeColor: Colors.green,
        inactiveColor: AppColors.redColor,
        decoration: buildFormTextDecoration(" ", labelText),
        displayValues: DisplayValues.current,
        attribute: 'Slider',
      ),
    );
  }
}

class AppFormNumericField extends StatelessWidget {
  final String initialValue, labelText, hintText;
  final int maximumLines, maximumLength, formValidatorMinLength;
  final FormFieldSetter onSave;

  AppFormNumericField({
    Key key,
    @required this.onSave,
    this.maximumLength,

    // this.focusNode,
    @required this.maximumLines,
    @required this.initialValue,
    @required this.labelText,
    this.hintText,
    this.formValidatorMinLength,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: FormBuilderTextField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        textCapitalization: TextCapitalization.sentences,
        initialValue: initialValue,
        keyboardType: TextInputType.number,

        //focusNode: focusNode,
        validators: [
          FormBuilderValidators.required(),
          FormBuilderValidators.minLength( formValidatorMinLength),
          FormBuilderValidators.numeric(),
        ],
        cursorColor: AppColors.primaryColorBlended,
        attribute: "Numeric Field",
        maxLines: maximumLines,
        maxLength: maximumLength,

        decoration: buildFormTextDecoration(hintText, labelText),
        style: AppTextStyles.titlePrimary,
        onSaved: onSave,
      ),
    );
  }
}

// Input decoration widget
InputDecoration buildFormTextDecoration(String hint, String label) {
  return InputDecoration(

    filled: true,
    errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(7),
        borderSide: BorderSide(width: 2.0, color: AppColors.primaryColorBlended,)),
    focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(7),
        borderSide: BorderSide(width: 2.0, color: AppColors.primaryColorBlended,)),
    fillColor: AppColors.backgroundColor,
    focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(7),
        borderSide: BorderSide(width: 2.0, color: AppColors.greenColor)),
    border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(7),
        borderSide: BorderSide(width: 2.0, color: AppColors.primaryColorBlended,)),
    focusColor: AppColors.primaryColorBlended,
    labelText: label,
    hintText: hint,
    hintStyle: AppTextStyles.titleGreyColor,
    labelStyle: AppTextStyles.titleGreyColor,
  );
}

const allCountries = [
  'Afghanistan',
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
  'Estonia',
  'Ethiopia',
  'Falkland Islands (Malvinas)',
  'Faroe Islands',
  'Fiji',
  'Finland',
  'France',
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
  'United Kingdom',
  'United States',
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
  'Zimbabwe'
];



