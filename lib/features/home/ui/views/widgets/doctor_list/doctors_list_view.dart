import 'package:doc_doc_app/features/home/data/models/specialitization_response_model.dart';
import 'package:doc_doc_app/features/home/ui/views/widgets/doctor_list/doctors_list_view_item.dart';
import 'package:flutter/material.dart';

class DoctorsListView extends StatelessWidget {
  final List<Doctors?>? doctorsList;
  const DoctorsListView({super.key, required this.doctorsList});

  @override
  Widget build(BuildContext context) {
    try {
      // ignore: avoid_print
      print('DoctorsListView: items=${doctorsList?.length ?? 0}');
    } catch (_) {}
    return ListView.builder(
      itemCount: doctorsList?.length ?? 0,
      itemBuilder: (context, index) {
        return DoctorsListViewItem(dataModel: doctorsList?[index]);
      },
    );
  }
}
