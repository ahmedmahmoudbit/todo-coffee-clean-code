import 'package:flutter/material.dart';

import '/core/utils/resources/resources_exporter.dart';
import '/core/utils/shared_widgets/my_svg.dart';

class AppForm extends StatefulWidget {
  final String? prefixIcon;
  final Widget? prefixWidget;
  final Widget? suffixIcon;
  final TextEditingController? controller;
  final TextInputType type;
  final String? error;
  final FormFieldValidator<String>? validator;
  final bool isPassword;
  final TextInputAction textInputAction;
  final VoidCallback? onSubmit;
  final ValueChanged<String>? onChanged;
  final int? maxLines;
  final bool? enabled;
  final String? hintText;
  final String? labelText;
  final GestureTapCallback? onTap;
  final FocusNode? focusNode;

  const AppForm({
    super.key,
    required this.type,
    required this.textInputAction,
    this.controller,
    this.error,
    this.onTap,
    this.validator,
    this.prefixIcon,
    this.prefixWidget,
    this.suffixIcon,
    this.onSubmit,
    this.onChanged,
    this.enabled,
    this.hintText,
    this.labelText,
    this.maxLines = 1,
    this.focusNode,
    this.isPassword = false,
  });

  @override
  State<AppForm> createState() => _AppFormState();
}

class _AppFormState extends State<AppForm> {
  late bool isVisible;

  @override
  void initState() {
    isVisible = widget.isPassword;
    super.initState();
  }

  Widget? get prefixIconWidget {
    if (widget.prefixWidget != null) return widget.prefixWidget;

    if (widget.prefixIcon != null) {
      return MySvg(img: widget.prefixIcon!, fill: false, height: 5);
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: widget.focusNode,
      enabled: widget.enabled,
      textInputAction: widget.textInputAction,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      obscureText: isVisible,
      controller: widget.controller,
      onChanged: widget.onChanged,
      onTap: widget.onTap,
      onFieldSubmitted: (_) {
        if (widget.textInputAction == TextInputAction.next) {
          FocusScope.of(context).nextFocus();
        } else {
          widget.onSubmit?.call();
        }
      },
      onEditingComplete: () {
        widget.onSubmit?.call();
      },
      onTapOutside: (_) {
        FocusScope.of(context).unfocus();
      },
      style: TextStyleManager.formText,
      keyboardType: widget.type,
      maxLines: widget.maxLines,
      cursorColor: context.primaryColor,
      validator: widget.validator ??
          (value) {
            if (value!.isEmpty && widget.error != null) {
              return widget.error;
            }
            return null;
          },
      decoration: InputDecoration(
        hintText: widget.hintText,
        labelText: widget.labelText,
        prefixIcon: prefixIconWidget,
        hintStyle: context.textTheme.displaySmall!.copyWith(
          color: ColorManager.greyText2.withOpacity(0.6),
        ),
      ),
    );
  }
}
