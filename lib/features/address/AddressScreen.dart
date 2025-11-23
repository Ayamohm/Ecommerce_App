import 'package:commerce_app/features/address/widgets/saved_add_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/styles/app_styles.dart';
import '../account/widgets/acount_spacer.dart';

class AddressScreen extends StatefulWidget {
  const AddressScreen({super.key});

  @override
  State<AddressScreen> createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: WidgetStateColor.transparent,
          elevation: 0,
          centerTitle: true,
          title: Text(
            'Address',
            style: AppTextStyle.HeadLineText,
          ),
        ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AcountSpacer(),
              SizedBox(height: 10,),
              Text('Saved Address',style: AppTextStyle.HeadLineText.copyWith(fontSize: 16.sp),),
              SizedBox(height: 10.h,),
              SavedAddWidgets(Default: true,address_text: '925 S Chugach St #APT 10, Alas...',address_head_text: 'Home',),
              SizedBox(height: 10.h,),
              SavedAddWidgets(Default: false,address_head_text: 'Office',address_text: '2438 6th Ave, Ketchikan, Alaska 9...',),
              SizedBox(height: 10.h,),
              SavedAddWidgets(Default: false,address_head_text: 'Apartment',address_text: '2551 Vista Dr #B301, Juneau, Ala...',),
              SizedBox(height: 10.h,),
              SavedAddWidgets(Default: true,address_head_text: 'Parent’s House',address_text: '4821 Ridge Top Cir, Anchorage...',),
              SizedBox(height: 10.h,),
              SavedAddWidgets(Default: true,address_text: '925 S Chugach St #APT 10, Alas...',address_head_text: 'Home',),
              SizedBox(height: 10.h,),
              SavedAddWidgets(Default: false,address_head_text: 'Office',address_text: '2438 6th Ave, Ketchikan, Alaska 9...',),
              SizedBox(height: 10.h,),
              SavedAddWidgets(Default: false,address_head_text: 'Apartment',address_text: '2551 Vista Dr #B301, Juneau, Ala...',),
              SizedBox(height: 10.h,),
              SavedAddWidgets(Default: true,address_head_text: 'Parent’s House',address_text: '4821 Ridge Top Cir, Anchorage...',),
              SizedBox(height: 10.h,),
              SavedAddWidgets(Default: true,address_head_text: 'Parent’s House',address_text: '4821 Ridge Top Cir, Anchorage...',),
              SizedBox(height: 10.h,),
              SavedAddWidgets(Default: true,address_head_text: 'Parent’s House',address_text: '4821 Ridge Top Cir, Anchorage...',),
              SizedBox(height: 10.h,),
              SavedAddWidgets(Default: true,address_head_text: 'Parent’s House',address_text: '4821 Ridge Top Cir, Anchorage...',),


            ]
          ),
        ),
      )
    );
  }
}
