import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:unicode/core/utils/resources/extensions.dart';
import 'package:unicode/core/utils/resources/resources_exporter.dart';
import 'package:unicode/features/home/data/models/coffee_model_entity.dart';
import 'package:unicode/features/home/domain/entities/coffee_type.dart';
import 'package:unicode/features/home/presentation/widgets/select_coffee.dart';

import '../manager/home_cubit.dart';
import 'build_container.dart';

class AddOrderBottomSheet extends StatefulWidget {
  final HomeCubit provider;

  const AddOrderBottomSheet({required this.provider});

  @override
  _AddOrderBottomSheetState createState() => _AddOrderBottomSheetState();
}

class _AddOrderBottomSheetState extends State<AddOrderBottomSheet> {
  late TextEditingController sugerController;
  late TextEditingController nameController;
  int initialValue = 0;

  @override
  void initState() {
    super.initState();
    sugerController = TextEditingController();
    nameController = TextEditingController();
  }

  @override
  void dispose() {
    sugerController.dispose();
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: widget.provider,
      child: Container(
        padding: MediaQuery.of(context).viewInsets,
        clipBehavior: Clip.antiAliasWithSaveLayer,
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
              AppForm(
                  hintText: context.locale.suger,
                  controller: sugerController,
                  type: TextInputType.number,
                  textInputAction: TextInputAction.next),
              10.verticalSpace,
              AppForm(
                  hintText: context.locale.name_coffee,
                  type: TextInputType.text,
                  controller: nameController,
                  textInputAction: TextInputAction.done),
              StatefulBuilder(
                builder: (context, setState) {
                  return StringRadioList(
                    options: getCoffeeTypes(context),
                    initialValue: initialValue,
                    onChanged: (val) {
                      setState(() {
                        initialValue = val!;
                      });
                    },
                  );
                },
              ),
              10.verticalSpace,
              BlocBuilder<HomeCubit, HomeState>(
                builder: (context, state) {
                  return state.maybeWhen(
                      CoffeeLoading: () => MyButton(
                        text: context.locale.add,
                        isLoading: true,
                      ),
                      orElse: () => MyButton(
                        text: context.locale.add,
                        onPressed: () {
                          CoffeeModelEntity coffee = CoffeeModelEntity(
                            name: nameController.text,
                            suger: int.parse(sugerController.text),
                            index: initialValue,
                          );
                          widget.provider.addCoffee(coffee).then((_) {
                            context.pop();
                          });
                        },
                      ));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
