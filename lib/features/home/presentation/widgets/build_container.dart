import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:unicode/core/utils/resources/extensions.dart';
import 'package:unicode/core/utils/resources/resources_exporter.dart';

class BuildContainer extends StatefulWidget {
  final String? img;
  final String text;
  final String? lotti;
  final int? index;
  final int indexBloc;
  final VoidCallback? onTap;

  const BuildContainer({Key? key,
    this.img,
    required this.text,
    required this.index,
    required this.indexBloc,
    this.onTap,
    this.lotti,
  }) : super(key: key);

  @override
  State<BuildContainer> createState() => _BuildContainerState();
}

class _BuildContainerState extends State<BuildContainer> {
  // late MainBloc bloc;

  @override
  void initState() {
    // bloc = context.read<MainBloc>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(5.0),
      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedContainer(
          height: 30.h,
          duration: const Duration(milliseconds: 200),
          decoration: BoxDecoration(
            color: Theme.of(context).canvasColor,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: widget.indexBloc == widget.index ?
              Theme.of(context).primaryColor :
              Theme.of(context).scaffoldBackgroundColor,
              width: widget.indexBloc == widget.index ? 3 : 0,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                MyText(title: widget.img!.toFlag,size: 30.sp,),
                5.verticalSpace,
                MyText(title: widget.text),
              ],
            ),
          ),
        ),
      ),
    );
  }
}