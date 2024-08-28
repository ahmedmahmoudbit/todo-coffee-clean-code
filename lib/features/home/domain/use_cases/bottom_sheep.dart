import 'package:flutter/material.dart';

import '../../presentation/manager/home_cubit.dart';
import '../../presentation/widgets/add_order.dart';

void showAddOrderBottomSheet({
  required BuildContext context,
  required HomeCubit provider,
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
      return AddOrderBottomSheet(provider: provider);
    },
  );
}