import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:unicode/features/home/domain/entities/coffee_type.dart';
import 'package:unicode/features/home/presentation/manager/home_cubit.dart';
import '/core/utils/resources/resources_exporter.dart';
import 'dialog_delete.dart';

class BuildItemsHome extends StatelessWidget {
  final String name;
  final int index;
  final HomeCubit cubit;

  const BuildItemsHome({super.key, required this.name, required this.index,required this.cubit});

  @override
  Widget build(BuildContext context) {
    return Material(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(20),

      child: InkWell(
        onLongPress: () {
          DialogDelete(context,index,cubit).openDialog();
        },

        child: Container(
          height: 100.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.white,
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyText(
                      title: name,
                      size: 16.sp,
                      fontWeight: FontWeight.w700,
                    ),
                    MyText(
                      title: getCoffeeTypes(context)[index].name,
                      size: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ],
                ),
              ),
              Spacer(),
              MySvg(img: getCoffeeTypes(context)[index].img),
              15.horizontalSpace,
            ],
          ),
        ),
      ),
    );
  }
}
