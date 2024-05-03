import 'widgets/soekarno_item_widget.dart';
import 'widgets/vector_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:uud/core/app_export.dart';

class HPresidentScreen extends StatelessWidget {
  const HPresidentScreen({Key? key})
      : super(
          key: key,
        );

  @override
Widget build(BuildContext context) {
  return SafeArea(
    child: Scaffold(
      body: SizedBox(
        height: SizeUtils.height,
        width: double.maxFinite,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.white, // Start with white
                    Color.fromARGB(31, 95, 36, 191), // End with purple
                  ],
                  stops: [0.7, 0.3], // 50% of white and 50% of purple
                ),
              ),
              child: Opacity(
                opacity: 0.1,
                child: CustomImageView(
                  imagePath: ImageConstant.imgVectorDeepPurple800,
                  width: 634.h,
                  alignment: Alignment.topLeft,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.h),
              child: Column(
                children: [
                  SizedBox(
                    height: 554.v,
                    width: 351.h,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        _buildPresiden(context),
                        _buildTwenty(context),
                      ],
                    ),
                  ),
                  SizedBox(height: 23.v),
                  _buildCobaKuis(context),
                  SizedBox(height: 7.v),
                  _buildQuizIcon(context),
                  SizedBox(height: 9.v),
                  _buildQuizIcon1(context),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomBar(context),
    ),
  );
}


  /// Head Widget
  Widget _buildTwenty(BuildContext context) {

    List<Map<String, dynamic>> IconData = [
      {'icon': Icons.library_books_outlined, 'text': 'UUD 1945', 'desc' : 'big'},
      {'icon': Icons.menu_book, 'text': 'Pembukaan UUD 1945', 'desc' : 'small'},
      {'icon': Icons.front_hand_outlined, 'text': 'Sumpah Pemuda', 'desc' : 'big'},
      {'icon': Icons.spoke_outlined, 'text': '45 Butir Pancasila', 'desc' : 'small'},
      {'icon': Icons.apps_rounded, 'text': 'Lainnya', 'desc' : 'small'},
    ];

    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.only(
          left: 13.h,
          right: 8.h,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Transform.translate(
              offset: Offset(0, 15),
              child : Container(
                height: 125.v,
                width: 218.h,
                margin: EdgeInsets.only(left: 45.h),
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Transform.translate(
                    offset: Offset(0, -10), // Adjust the offset value to move the text upwards
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: SizedBox(
                        width: 152.h,
                        child: Text(
                          "Know\n      ",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.displayLarge?.copyWith(
                            color: Color.fromARGB(255, 178, 71, 122), // Change the color to your desired color
                          ),
                        ),
                      ),
                    ),
                  ),

                    Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: EdgeInsets.only(right: 8.h),
                        child: Text(
                          "Well",
                          style: CustomTextStyles.displayLargeRowdiesGray900,
                        ),
                      ),
                    ),
                    
                    //Indo Flag
                    Transform.translate(
                      offset: Offset(0, -4),
                      child : CustomImageView(
                        imagePath: ImageConstant.imgTwemojiFlagIndonesia,
                        width: 53.h,
                        alignment: Alignment.topRight,
                        margin: EdgeInsets.only(top: 12.v),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 2.v),

            Transform.translate(
              offset: Offset(0, 15),
              child: Container(
                margin: EdgeInsets.only(right: 5.h),
                padding: EdgeInsets.symmetric(
                  horizontal: 21.h,
                  vertical: 18.v,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusStyle.roundedBorder20,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1), // Shadow color
                      blurRadius: 10.0, // Spread Radius
                      offset: Offset(0, 2), // Shadow position
                    ),
                  ],
                  gradient: AppDecoration.gradientRedToWhiteA.gradient,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 3.h,
                        bottom: 12.v,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Wawasan Kebangsaan",
                            style: CustomTextStyles.titleLargeAlegreyaBluegray900,
                          ),
                          SizedBox(height: 5.v),
                          SizedBox(
                            width: 191.h,
                            child: Text(
                              "Mari belajar wawasan dasar yang wajib dimilki oleh setiap warga Indonesia.",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.bodyMedium,
                            ),
                          ),
                          SizedBox(height: 15.v),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Pelajari",
                                style: CustomTextStyles
                                    .titleLargeAlegreyaSansDeeppurple300,
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgWarning,
                                height: 22.adaptSize,
                                width: 15.adaptSize,
                                margin: EdgeInsets.only(
                                  left: 6.h,
                                  top: 4.v,
                                  bottom: 4.v,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgVector,
                      height: 75.adaptSize,
                      width: 75.adaptSize,
                      margin: EdgeInsets.only(
                        top: 20.v,
                        bottom: 24.v,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //Menu Rounded
            SizedBox(height: 37.v),
            Container(
              height: 91.v,
              decoration: AppDecoration.outlineBlack,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                separatorBuilder: (
                  context,
                  index,
                ) {
                  return SizedBox(
                    width: 26.h,
                  );
                },

                //Icon Bulet
                itemCount: IconData.length,
                itemBuilder: (context, index) {
                  final iconData = IconData[index]['icon'];
                  final text = IconData[index]['text'];
                  final desc = IconData[index]['desc'];

                  return VectorItemWidget(
                    iconData: iconData,
                    text: text,
                    desc: desc
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }


  /// Presiden Widget
  Widget _buildPresiden(BuildContext context) {
    
    List<Map<String, dynamic>> presidentData = [
      {
        "name": "Soekarno",
        "date": "1945-1967",
        "url": "assets/images/soekarno.png",
      },
      {
        "name": "Soeharto",
        "date": "1967-1998",
        "url": "assets/images/soharto.png",
      },
      {
        "name": "BJ Habibie",
        "date": "1998-1999",
        "url": "assets/images/Habibie.png",
      },
      {
        "name": "Prabowo",
        "date": "2024-2029",
        "url": "assets/images/prabowo.png",
      },
    ];

    return Align(
      alignment: Alignment.bottomCenter,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: EdgeInsets.only(left: 5.h),
            padding: EdgeInsets.only(top: 10.v),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Presiden RI",
                  style: theme.textTheme.titleLarge,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 11.v,
                    bottom: 5.v,
                  ),
                  child: Text(
                    "Lihat Semua",
                    style: CustomTextStyles.labelMediumSemiBold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.v),
          SizedBox(
            height: 99.v,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) {
                  return SizedBox(width: 10.h);
                },
                itemCount: presidentData.length,
                itemBuilder: (context, index) {
                  String name = presidentData[index]["name"]; 
                  String date = presidentData[index]["date"]; 
                  String url = presidentData[index]["url"]; 
                  return SoekarnoItemWidget(imagePath: url, presiden: name, date: date);
                },
              ),
          ),
        ],
      ),
    );
  }


  /// Coba kuis Widget
Widget _buildCobaKuis(BuildContext context) {
  return Transform.translate(
    offset: Offset(0, -10), // Adjust the offset value to move the widget upwards
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Coba Kuis",
          style: theme.textTheme.titleLarge,
        ),
        Text(
          "Lihat Semua",
          style: CustomTextStyles.labelMediumSemiBold,
        ),
      ],
    ),
  );
}

  /// Kuis UUD 1945 Widget
Widget _buildQuizIcon(BuildContext context) {
  return Transform.translate(
    offset: Offset(0, -10), // Adjust the offset value to move the widget upwards
    child: Container(
      padding: EdgeInsets.symmetric(
        horizontal: 4.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.fillDeepOrangeB.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgQuizIcon,
            height: 36.adaptSize,
            width: 36.adaptSize,
            margin: EdgeInsets.only(top: 5.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 5.h,
              top: 5.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "UUD 1945",
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(height: 1.v),
                Padding(
                  padding: EdgeInsets.only(left: 3.h),
                  child: Text(
                    "5 Level Kesulitan",
                    style: theme.textTheme.labelSmall,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRight,
            height: 25.adaptSize,
            width: 25.adaptSize,
            margin: EdgeInsets.only(
              top: 8.v,
              right: 10.h,
              bottom: 8.v,
            ),
          ),
        ],
      ),
    ),
  );
}

  /// Kuis Pancasila Widget
  Widget _buildQuizIcon1(BuildContext context) {
    return Transform.translate(
    offset: Offset(0, -10),
    child : Container(
      padding: EdgeInsets.symmetric(
        horizontal: 4.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.fillDeepOrangeB.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgQuizIcon,
            height: 36.adaptSize,
            width: 36.adaptSize,
            margin: EdgeInsets.only(top: 3.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 3.h,
              top: 5.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Butir Pancasila",
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(height: 2.v),
                Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Text(
                    "3 Level Kesulitan",
                    style: theme.textTheme.labelSmall,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRight,
            height: 25.adaptSize,
            width: 25.adaptSize,
            margin: EdgeInsets.only(
              top: 7.v,
              right: 10.h,
              bottom: 7.v,
            ),
          ),
        ],
      ),
    ),
    );
  }


  /// Navbar Widget
  Widget _buildBottomBar(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 1.h),
      child: SizedBox(
        height: 65.v,
        width: double.maxFinite,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 65.v,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: appTheme.whiteA70002,
                  borderRadius: BorderRadius.circular(
                    20.h,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: appTheme.black900.withOpacity(0.15),
                      spreadRadius: 1.h,
                      blurRadius: 15.h,
                      offset: Offset(
                        0,
                        0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgGroup88,
              height: 29.v,
              alignment: Alignment.bottomCenter,
              margin: EdgeInsets.only(bottom: 16.v),
            ),
          ],
        ),
      ),
    );
  }
}
