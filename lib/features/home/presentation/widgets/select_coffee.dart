import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:unicode/core/utils/resources/resources_exporter.dart';
import 'package:unicode/features/home/domain/entities/coffee_type.dart';

class StringRadioList extends StatefulWidget {
  final List<CoffeeTypeModel> options;
  final int initialValue;
  final ValueChanged<int?> onChanged;

  const StringRadioList({
    super.key,
    required this.options,
    required this.initialValue,
    required this.onChanged,
  });

  @override
  State<StringRadioList> createState() => _StringRadioListState();
}

class _StringRadioListState extends State<StringRadioList> {
  int? _selectedValue;

  @override
  void initState() {
    super.initState();
    _selectedValue = widget.initialValue;
  }

  @override
  void didUpdateWidget(covariant StringRadioList oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.initialValue != oldWidget.initialValue) {
      _selectedValue = widget.initialValue;
    }
  }

  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        10.verticalSpace,
        MyText(title: context.locale.select_coffee),
        SizedBox(
          height: 100.h,
          child: ListView.separated(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: widget.options.length,
            separatorBuilder: (context, index) {
              return SizedBox(width: 25,);
            },
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                setState(() {
                  _selectedValue = index;
                });
                widget.onChanged(index);
              },
              child: Column(
                children: [
                  10.verticalSpace,
                  AnimatedContainer(
                    duration: 15.duration ,
                    height: 60.h,
                    width: size.width * 0.20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: _selectedValue == index ? Border.all(color: Theme.of(context).primaryColor,width: 2) : null,
                      color:Colors.white,
                    ),
                    child: MySvg(
                      fill: false,
                      img: widget.options[index].img,
                    ),
                  ),
                  10.verticalSpace,
                  MyText(title: widget.options[index].name),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

}