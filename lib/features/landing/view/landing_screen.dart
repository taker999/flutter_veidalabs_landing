import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_veidalabs_landing/core/constants/app_colors.dart';
import 'package:flutter_veidalabs_landing/core/constants/app_images.dart';
import 'package:flutter_veidalabs_landing/core/widgets/custom_search_bar.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              children: [
                // Header Section
                _buildHeader(),

                // Search Bar
                const CustomSearchBar(hintText: 'Explain RAG'),

                SizedBox(height: 20.h),

                // Response Card
                Container(
                  padding: EdgeInsets.all(16.w),
                  decoration: BoxDecoration(
                    color: AppColors.cardBackground,
                    borderRadius: BorderRadius.circular(12.r),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.shadow,
                        blurRadius: 10.r,
                        offset: Offset(0, 2.h),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Jiji says',
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                          color: AppColors.textPrimary,
                        ),
                      ),
                      SizedBox(height: 16.h),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.w),
                        child: RichText(
                          text: TextSpan(
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: AppColors.textPrimary,
                              height: 1.5,
                            ),
                            children: const [
                              TextSpan(
                                text: 'Retrieval-Augmented Generation (RAG) ',
                                style: TextStyle(fontWeight: FontWeight.w500),
                              ),
                              TextSpan(
                                text:
                                    'combines search with large language models to improve the accuracy of generated answers by providing relevant information from external data sources.',
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 12.h),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.w),
                        child: Column(
                          spacing: 3.h,
                          children: [
                            _buildBulletPoint(
                              'Retrieves data from external sources',
                            ),
                            _buildBulletPoint(
                              'Uses a language model to generate answers using this data',
                            ),
                            _buildBulletPoint(
                              'Enhances the accuracy of responses',
                            ),
                          ],
                        ),
                      ),

                      // Resources Section
                      Container(
                        margin: EdgeInsets.symmetric(
                          vertical: 10.h,
                          horizontal: 7.w,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.cardBackground,
                          borderRadius: BorderRadius.circular(12.r),
                          boxShadow: [
                            BoxShadow(
                              color: AppColors.shadow,
                              blurRadius: 12.r,
                              offset: Offset(-4.w, -10.h),
                            ),
                            BoxShadow(
                              color: AppColors.shadow,
                              blurRadius: 12.r,
                              offset: Offset(4.w, 20.h),
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            _buildResourceTile(
                              image: AppImages.powerpoint,
                              title: 'Presentation on RAG',
                              subtitle: 'PowerPoint Presentation',
                              buttonText: 'Open',
                              buttonColor: AppColors.buttonOpen,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16.w),
                              child: Divider(
                                height: 0.5.h,
                                color: AppColors.shadow,
                              ),
                            ),
                            _buildResourceTile(
                              image: AppImages.youtube,
                              title: 'What is RAG? Retrieval-Augmentd...',
                              subtitle: 'YouTube Video',
                              buttonText: 'Watch',
                              buttonColor: AppColors.buttonWatch,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Column(
        children: [
          Text(
            'Jiji',
            style: TextStyle(
              fontSize: 32.sp,
              fontWeight: FontWeight.bold,
              color: AppColors.textPrimary,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            'Your AI Friend',
            style: TextStyle(fontSize: 16.sp, color: AppColors.textSecondary),
          ),
          SizedBox(height: 10.h),
          // Avatar Image
          Container(
            width: 200.w,
            height: 200.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              image: const DecorationImage(
                image: AssetImage(AppImages.aiAvatar),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '• ',
          style: TextStyle(
            fontSize: 16.sp,
            color: AppColors.textPrimary,
            fontWeight: FontWeight.bold,
          ),
        ),
        Expanded(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 15.sp,
              color: AppColors.textPrimary,
              height: 1.5,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildResourceTile({
    required String image,
    required String title,
    required String subtitle,
    required String buttonText,
    required Color buttonColor,
  }) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 10.w),
      leading: Image.asset(image),
      title: Text(
        title,
        style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
      ),
      subtitle: Text(subtitle, style: TextStyle(fontSize: 12.sp)),
      trailing: SizedBox(
        width: 70.w,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: buttonColor,
            foregroundColor: AppColors.buttonText,
            elevation: 0,
            padding: EdgeInsets.symmetric(vertical: 10.h),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.r),
            ),
          ),
          child: Text(
            buttonText,
            style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
