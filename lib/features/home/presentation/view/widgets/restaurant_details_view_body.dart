import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_app/core/theming/colors.dart';
import 'package:task_app/core/theming/icons.dart';
import 'package:task_app/core/theming/images.dart';
import 'package:task_app/core/theming/styles.dart';
import 'package:task_app/features/home/data/models/food_model.dart';
import 'package:task_app/features/home/presentation/view/widgets/build_section_widget.dart';
import 'package:task_app/features/home/presentation/view/widgets/counter.dart';
import 'package:task_app/features/home/presentation/view/widgets/restaurant_details_top_widget.dart';

class RestaurantDetailsViewBody extends StatefulWidget {
  const RestaurantDetailsViewBody({super.key, required this.index});
  final int index;

  @override
  _RestaurantDetailsViewBodyState createState() => _RestaurantDetailsViewBodyState();
}

class _RestaurantDetailsViewBodyState extends State<RestaurantDetailsViewBody>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final ScrollController _scrollController = ScrollController();

  final GlobalKey _appetizersKey = GlobalKey();
  final GlobalKey _cheeseManakishKey = GlobalKey();
  final GlobalKey _pizzaKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(() {
      if (_tabController.indexIsChanging) {
        _scrollToSection(_tabController.index);
      }
    });
  }

  void _scrollToSection(int index) {
    final targetKey = [ _appetizersKey, _cheeseManakishKey, _pizzaKey][index];
    final context = targetKey.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  void dispose() {
    _tabController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: _scrollController,
      slivers: <Widget>[
        SliverToBoxAdapter(
          child: SizedBox(
            height: 320.h,
            child: Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Image.asset(AppImages.appBarImage, fit: BoxFit.cover),
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              padding: EdgeInsets.all(4.sp),
                              decoration: BoxDecoration(
                                color: AppColors.whiteColor,
                                borderRadius: BorderRadius.circular(50.r),
                              ),
                              child: Icon(Icons.arrow_back_rounded, size: 20.sp),
                            ),
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              padding: EdgeInsets.all(6.sp),
                              decoration: BoxDecoration(
                                color: AppColors.whiteColor,
                                borderRadius: BorderRadius.circular(50.r),
                              ),
                              child: SvgPicture.asset(AppIcons.arrowBackIcon, width: 15.w),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    RestaurantDetailsTopWidget(index: widget.index),
                  ],
                ),
              ],
            ),
          ),
        ),
        SliverAppBar(
          backgroundColor: AppColors.whiteColor,
          floating: true,
          pinned: true,
          snap: true,
          leading: const SizedBox(),
          flexibleSpace: FlexibleSpaceBar(
            background: Container(
              margin: EdgeInsets.only(left: 16.w, right: 70.w),
              child: Row(
                children: [
                  const Icon(Icons.menu),
                  Expanded(
                    child: TabBar(
                      labelPadding: EdgeInsets.symmetric(horizontal: 1.w),
                      controller: _tabController,
                      dividerColor: Colors.transparent,
                      labelColor: AppColors.primaryColor,
                      indicatorColor: AppColors.primaryColor,
                      labelStyle: TextStyles.font10Black500Weight,
                      unselectedLabelColor: AppColors.blackColor,
                      unselectedLabelStyle: TextStyles.font10Black500Weight,
                      tabs: const [
                        Tab(text: "Appetizers"),
                        Tab(text: "Cheese Manakish"),
                        Tab(text: "Pizza"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        // First Section: Appetizers
        SliverToBoxAdapter(
          key: _appetizersKey,
          child: buildSection("Appetizers", appetizers,context),
        ),
        // Second Section: Cheese Manakish
        SliverToBoxAdapter(
          key: _cheeseManakishKey,
          child: buildSection("Cheese Manakish", cheeseManakish,context),
        ),
        // Third Section: Pizza
        SliverToBoxAdapter(
          key: _pizzaKey,
          child: buildSection("Pizza", pizza,context),
        ),
        const SliverToBoxAdapter(
          child: Counter(),
        )
      ],
    );
  }

}
