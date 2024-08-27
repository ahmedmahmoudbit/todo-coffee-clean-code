import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:unicode/core/utils/resources/extensions.dart';
import 'package:unicode/core/utils/resources/resources_exporter.dart';

import 'build_container.dart';

class ChangeThemeUC {
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
                          indexBloc: 1,
                          img: langModel(context)[index].img,
                          text: langModel(context)[index].title,
                          index: index,
                          onTap: () {},
                        ),
                      ),
                    ),
                  ),
                ),
                10.verticalSpace,
                MyButton(text: context.locale.close,onPressed: (){
                  context.pop();
                },),
              ],
            ),
          ),
        );
      },
    );
  }
}

class LangModel{
  final String title;
  final String img;
  LangModel(this.title, this.img);
}

List<LangModel> langModel(BuildContext context) {
  return [
    LangModel(context.locale.arabic, 'sa'),
    LangModel(context.locale.english, 'us'),
  ];
}


