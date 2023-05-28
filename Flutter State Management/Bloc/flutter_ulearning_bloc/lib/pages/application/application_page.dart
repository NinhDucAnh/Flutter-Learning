import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ulearning_bloc/common/values/colors.dart';
import 'package:flutter_ulearning_bloc/pages/application/application_widget.dart';
import 'package:flutter_ulearning_bloc/pages/application/bloc/app_events.dart';
import 'package:flutter_ulearning_bloc/pages/application/bloc/app_states.dart';
import 'package:flutter_ulearning_bloc/pages/common_widget.dart';

import 'bloc/app_blocs.dart';

class ApplicationPage extends StatefulWidget {
  const ApplicationPage({Key? key}) : super(key: key);

  @override
  State<ApplicationPage> createState() => _ApplicationPageState();
}

class _ApplicationPageState extends State<ApplicationPage> {
  final int _index = 0;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBloc, AppState>(
      builder: (context, state) {
        return Container(
          color: Colors.white,
          child: SafeArea(
            child: Scaffold(
              body: buildPage(state.index),
              bottomNavigationBar: Container(
                width: 375.w,
                height: 70.h,
                decoration: BoxDecoration(
                    color: AppColors.primaryElement,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.h),
                        topRight: Radius.circular(20.h)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 1,
                      )
                    ]),
                child: BottomNavigationBar(
                  currentIndex: state.index,
                  type: BottomNavigationBarType.fixed,
                  showSelectedLabels: false,
                  showUnselectedLabels: false,
                  selectedItemColor: AppColors.primaryElement,
                  unselectedItemColor: AppColors.primaryFourthElementText,
                  onTap: (value) {
                    context.read<AppBloc>().add(TriggerAppEvent(value));
                  },
                  elevation: 0,
                  items: [
                    reusableBtmNavBarItem('home'),
                    reusableBtmNavBarItem('search2'),
                    reusableBtmNavBarItem('play-circle1'),
                    reusableBtmNavBarItem('message-circle'),
                    reusableBtmNavBarItem('person2'),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
