import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:unicode/core/utils/resources/extensions.dart';
import 'package:unicode/core/utils/shared_widgets/my_text.dart';
import 'package:unicode/features/home/presentation/manager/home_cubit.dart';
import '../../domain/use_cases/bottom_sheep.dart';
import '../widgets/build_items_home.dart';
import '../widgets/change_language.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late HomeCubit cubit;

  @override
  void initState() {
    cubit = context.read<HomeCubit>();
    cubit.fetchCoffees();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var provider = context.read<HomeCubit>();
    return Scaffold(
      appBar: AppBar(
        title: MyText(
          title: context.locale.name,
          size: 16.sp,
        ),
        leading: IconButton(
          icon: const Icon(Icons.add_circle_outline_rounded),
          onPressed: () {
            showAddOrderBottomSheet(context: context, provider: provider);
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.language_rounded),
            onPressed: () {
              ChangeLanguageUC().changeTheme(context: context);
            },
          )
        ],
      ),
      body: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: state.maybeWhen(
                CoffeeGetData: (data) => ListView.separated(
                  itemCount: data.length,
                  separatorBuilder: (context, index) {
                    return 10.verticalSpace;
                  },
                  itemBuilder: (context, index) {
                    return ElasticInLeft(
                      duration: Duration(milliseconds: index * 100),
                      child: BuildItemsHome(
                        index: data[index].index,
                        name: data[index].name,
                        cubit: cubit,
                      ),
                    );
                  },
                ),
                orElse: () => Skeletonizer(
                  enabled: true,
                  child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return const Card(
                        child: ListTile(
                          title: Text('-----------------'),
                          subtitle: Text('---------------'),
                          trailing: Icon(Icons.ac_unit),
                        ),
                      );
                    },
                  ),
                )),
          );
        },
      ),
    );
  }
}