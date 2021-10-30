import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:webapptrial/widgets/export_widget.dart';

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
        style: AppTextStyles.mainRegularGrey16,
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
            textOverflow: TextOverflow.ellipsis,
            textStyle: AppTextStyles.mainRegularGrey16,

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
            dialogTextStyle: AppTextStyles.mainRegularGrey16,
            flagWidth: 20,
            showFlagDialog: true,
            dialogSize: Size(300, 600),
            showCountryOnly: true,
            searchStyle: AppTextStyles.mainRegularGrey16,
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
                      style: AppTextStyles.mainRegularGrey16,
                    ),
                  ))
              .toList(),
          style: AppTextStyles.mainRegularGrey16,
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
        style: AppTextStyles.mainRegularGrey16,
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
        style: AppTextStyles.mainRegularGrey16,
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
            color: AppColors.lightGreyColorD7,
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
      hintStyle: AppTextStyles.mainRegularGrey16,
      labelStyle: AppTextStyles.mainRegularGrey16,
      contentPadding: EdgeInsets.only(left: 15, top: 20));
}
