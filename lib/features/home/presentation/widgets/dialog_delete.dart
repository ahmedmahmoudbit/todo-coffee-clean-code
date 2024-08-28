import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:unicode/core/utils/resources/resources_exporter.dart';
import 'package:unicode/features/home/presentation/manager/home_cubit.dart';

class DialogDelete {
  final BuildContext context;
  final int index;
  final HomeCubit cubit;

  DialogDelete(this.context, this.index, this.cubit);

  void openDialog() => showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            elevation: 16,
            backgroundColor: Colors.white,
            child: Container(
              padding: EdgeInsets.all(20),
              width: double.maxFinite,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  20.verticalSpace,
                  MyText(
                    title: context.locale.delete_sure,
                    size: 12.sp,
                    align: TextAlign.center,
                  ),
                 20.verticalSpace,
                  MyButton(
                    text: context.locale.delete,
                    color: context.errorColor,
                    onPressed: () async {
                      await cubit.deleteCoffee(index);
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
