import 'package:flutter/material.dart';
import 'package:webapptrial/widgets/export_widget.dart';

class AppTextFormFieldOriginal extends StatelessWidget {
  final FocusNode textFocusNode;
  final Function onChange;
  final Function onSave;
  final Function validator;
  final String errorText, hintText;
  final TextInputType keyboardType;
  final int maxLine, maxLength;
  final double width, height;

  const AppTextFormFieldOriginal({
    Key key,
    @required this.textFocusNode,
    @required this.onChange,
    @required this.onSave,
    @required this.validator,
    @required this.errorText,
    @required this.hintText,
    @required this.keyboardType,
    this.maxLine,
    this.width,
    this.height,
    this.maxLength,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: AppColors.lightGreyColorF7,
          border: Border.all(color: AppColors.lightGreyColorDD)),
      child: TextFormField(
        maxLines: maxLine,
        maxLength: maxLength,
        focusNode: textFocusNode,
        style: AppTextStyles.formFontSecNavy17,
        textInputAction: TextInputAction.done,
        textCapitalization: TextCapitalization.sentences,
        autofocus: false,
        onChanged: onChange,
        onFieldSubmitted: (value) {
          textFocusNode.unfocus();
          FocusScope.of(context).requestFocus(textFocusNode);
        },
        validator: validator,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        keyboardType: keyboardType,
        onSaved: onSave,
        textAlign: TextAlign.start,
        decoration: InputDecoration(
          border: InputBorder.none,
          // filled: true,
          contentPadding: const EdgeInsets.only(left: 20, top: 10),
          labelStyle: AppTextStyles.mainRegularGrey18,
          labelText: hintText,
          errorText: errorText,
        ),
      ),
    );
  }
}

/////////////////// intl phone field ///////////////////////////
