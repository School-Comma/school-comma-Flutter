import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:school_comma/common/components/my_images.dart';
import 'package:school_comma/common/layout/default_layout.dart';

class MyTab extends StatefulWidget {
  const MyTab({super.key});

  @override
  State<MyTab> createState() => _MyTabState();
}

class _MyTabState extends State<MyTab> with TickerProviderStateMixin {
  late TabController tabController = TabController(length: 2, vsync: this);
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
    tabController.addListener(tabListener);
  }

  @override
  void dispose() {
    super.dispose();
    tabController.removeListener(tabListener);
  }

  void tabListener() {
    setState(() {
      currentIndex = tabController.index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      body: TabBarView(
        controller: tabController,
        children: [],
      ),
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: currentIndex == 0
                ? Image.asset(
                    MyImages.home,
                    width: 32.w,
                    height: 32.h,
                  )
                : Image.asset(
                    MyImages.coloredHome,
                    width: 32.w,
                    height: 32.h,
                  ),
            label: " ",
          ),
          BottomNavigationBarItem(
            icon: currentIndex == 1
                ? Image.asset(
                    MyImages.person,
                    width: 32.w,
                    height: 32.h,
                  )
                : Image.asset(
                    MyImages.coloredPerson,
                    width: 32.w,
                    height: 32.h,
                  ),
            label: " ",
          )
        ],
      ),
    );
  }
}
