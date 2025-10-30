import 'package:doc_doc_app/features/home/data/models/specialitization_response_model.dart';
import 'package:doc_doc_app/features/home/logic/cubit/home_cubit.dart';
import 'package:doc_doc_app/features/home/ui/views/widgets/specializations_list/speciality_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpecialityListView extends StatefulWidget {
  final List<SpecializationData?> specializationsDataList;

  const SpecialityListView({super.key, required this.specializationsDataList});

  @override
  State<SpecialityListView> createState() => _SpecialityListViewState();
}

class _SpecialityListViewState extends State<SpecialityListView> {
  var selectedSpecializationIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.specializationsDataList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedSpecializationIndex = index;
              });
              context.read<HomeCubit>().getDoctorList(
                specializationId:
                    widget.specializationsDataList[index]?.id ?? 0,
              );
            },
            child: SpecialityListViewItem(
              specializationData: widget.specializationsDataList[index],
              itemIndex: index,
              selectedIndex: selectedSpecializationIndex,
            ),
          );
        },
      ),
    );
  }
}
