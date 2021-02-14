import 'package:flutter/material.dart';
import 'package:webapptrial/const/colors.dart';
import 'package:webapptrial/const/text_style.dart';

class AppTextFormFieldOriginal extends StatelessWidget {
  final FocusNode textFocusNode;
  final Function onChange;
  final Function onSave;
  final Function validator;
  final String errorText, hintText;
  final TextInputType keyboardType;
  final int maxLine, maxLength;
  final double width, height;

  const AppTextFormFieldOriginal(
      {Key key,
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
      this.maxLength})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: AppColors.whiteColor,
          border: Border.all(color: AppColors.lightGreyColor)),
      child: TextFormField(
        maxLines: maxLine,
        maxLength: maxLength,
        focusNode: textFocusNode,
        textInputAction: TextInputAction.next,
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
          labelStyle: AppTextStyles.contentRed,
          labelText: hintText,
          errorText: errorText,
        ),
      ),
    );
  }
}
