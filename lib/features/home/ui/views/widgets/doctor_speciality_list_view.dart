import 'package:doc_doc_app/features/home/data/models/specialitization_response_model.dart';
import 'package:doc_doc_app/features/home/ui/views/widgets/doctor_speciality_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorSpecialityListView extends StatelessWidget {
  final List<SpecializationData?> specializationsDataList;

  const DoctorSpecialityListView({
    super.key,
    required this.specializationsDataList,
  });

  @override
  Widget build(BuildContext context) {
    // debug
    try {
      // ignore: avoid_print
      print(
        'DoctorSpecialityListView: items=${specializationsDataList.length}',
      );
    } catch (_) {}
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: specializationsDataList.length,
        itemBuilder: (context, index) {
          return DoctorSpecialityListViewItem(
            specializationData: specializationsDataList[index],
            itemIndex: index,
          );
        },
      ),
    );
  }
}
