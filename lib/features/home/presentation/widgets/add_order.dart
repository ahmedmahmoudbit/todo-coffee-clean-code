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

class AddOrder {
  void AddOrderBottomSheet({
    required BuildContext context,
    required HomeCubit provider,
  }) {
    final TextEditingController sugerController = TextEditingController();
    final TextEditingController nameController = TextEditingController();
    int initialValue = 0;

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
        return BlocProvider.value(
          value: provider,
          child: Container(
            padding: MediaQuery.of(context).viewInsets,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            // padding: const EdgeInsets.all(15.0),
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
                  BlocBuilder<HomeCubit,HomeState>(
                    builder: (context, state) {
                    return state.maybeWhen(
                        CoffeeLoading: ()=> MyButton(
                          text: context.locale.add,
                          isLoading: true,
                        ),
                        orElse: ()=>MyButton(
                          text: context.locale.add,
                          onPressed: () {
                            CoffeeModelEntity coffee = CoffeeModelEntity(
                              name: nameController.text,
                              suger: int.parse(sugerController.text),
                              index: initialValue,
                            );
                            provider.addCoffee(coffee).then((_){
                              context.pop();
                            });
                          },
                        ));
                  },),
                ],
              ),
            ),
          ),
        );
      },
    ).whenComplete(() {
      // sugerController.dispose();
      // nameController.dispose();
    });
  }
}

class LangModel {
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
