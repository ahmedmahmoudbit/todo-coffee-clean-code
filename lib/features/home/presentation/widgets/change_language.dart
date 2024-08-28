import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:unicode/core/cubit/main_cubit.dart';
import 'package:unicode/core/utils/resources/extensions.dart';
import 'package:unicode/core/utils/resources/resources_exporter.dart';

import '../../../../todo.dart';
import '../../domain/use_cases/change_language.dart';
import 'build_container.dart';

class ChangeLanguageUC {
  void changeTheme({
    required BuildContext context,
    // required MainBloc bloc,
  }) {
    showModalBottomSheet<void>(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20.0),
        ),
      ),
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return Container(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          padding: const EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10.0),
              topRight: Radius.circular(10.0),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(context.width * 0.04),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: context.height * 0.25,
                  width: context.width,
                  child: Center(
                    child: ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      separatorBuilder: (_, index) => 10.horizontalSpace,
                      scrollDirection: Axis.horizontal,
                      itemCount: 2,
                      itemBuilder: (_, index) => SizedBox(
                        width: 140.w,
                        child: BuildContainer(
                            indexBloc: context.watch<LocaleProvider>().locale.languageCode == langModel(context)[index].local
                                ? index
                                : -1,
                          img: langModel(context)[index].img,
                          text: langModel(context)[index].title,
                          index: index,
                          onTap: () {
                            context.read<LocaleProvider>().setLocale(Locale(langModel(context)[index].local));
                            Navigator.of(context).pop();
                          },
                        ),
                      ),
                    ),
                  ),
                ),
                10.verticalSpace,
                MyButton(
                  text: context.locale.close,
                  onPressed: () {
                    context.pop();
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class LangModel {
  final String title;
  final String img;
  final String local;

  LangModel(this.title, this.img, this.local);
}

List<LangModel> langModel(BuildContext context) {
  return [
    LangModel(context.locale.arabic, 'sa', 'ar'),
    LangModel(context.locale.english, 'us', 'en'),
  ];
}
