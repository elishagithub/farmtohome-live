import 'package:flutter/material.dart';

class AppColors {
  static late Color primary;
  static late Color secondary;
  static late Color backgroundLight;
  static late Color textLight;
  static late Color cardLight;

  static late Color discountBadgeColor;
  static late Color ratingStarColor;

  static late Color lightGrayGeneral;
  static late Color darkGrayGeneral;
  static late Color darkGrayGeneral2;

  static late Color completedStatusColor;
  static late Color pendingStatusColor;
  static late Color cancelStatusColor;

  static late Color lightPrimaryColor;

  static late Color backgroundDark;
  static late Color textDark;
  static late Color cardDark;

  static late Color subtleGray;
  static late Color warningColor;
  static late Color infoColor;
  static late Color accessibleTextColor;
  static late Color accessibleBackgroundColor;

  // Zomato Theme (Default)
  static void setZomatoTheme() {
    primary = const Color(0xFFE50914); // Zomato Red
    secondary = const Color(0xFFFFFFFF); // White
    backgroundLight = const Color.fromARGB(255, 242, 242, 242); // White
    textLight = const Color(0xFF1F1F1F); // Dark Gray
    cardLight = const Color(0xFFFFFFFF); // White

    discountBadgeColor = const Color(0xFFE50914); // Zomato Red
    ratingStarColor = const Color(0xFFFFC107); // Gold

    lightGrayGeneral = const Color(0xFFECECEC);
    darkGrayGeneral = const Color(0xFF707070);
    darkGrayGeneral2 = const Color(0xFF4C4C4C);

    completedStatusColor = const Color(0xFF43A047); // Green
    pendingStatusColor = const Color(0xFFFFC107); // Amber
    cancelStatusColor = const Color(0xFFD32F2F); // Red

    lightPrimaryColor = const Color(0xFFFFFFFF);
    backgroundDark = const Color(0xFFE50914); // Zomato Red
    textDark = const Color(0xFFFFFFFF);
    cardDark = const Color(0xFF4C4C4C);

    subtleGray = const Color(0xFFF5F5F5);
    warningColor = const Color(0xFFFFC107);
    infoColor = const Color(0xFFE50914);

    accessibleTextColor = const Color(0xFFFFFFFF);
    accessibleBackgroundColor = const Color(0xFFE50914);
  }

  // Farm Theme
  static void setFarmTheme() {
    primary = const Color(0xFF6B8E23); // Olive Green
    secondary = const Color(0xFFFFD700); // Golden Yellow
    backgroundLight = const Color(0xFFF5F5DC); // Beige
    textLight = const Color(0xFF556B2F); // Dark Olive Green
    cardLight = const Color(0xFFFFFFFF); // White

    discountBadgeColor = const Color(0xFFFFD700); // Golden Yellow
    ratingStarColor = const Color(0xFFFFC107); // Gold

    lightGrayGeneral = const Color(0xFFDCE1DC);
    darkGrayGeneral = const Color(0xFF6B8E23);
    darkGrayGeneral2 = const Color(0xFF556B2F);

    completedStatusColor = const Color(0xFF43A047); // Green
    pendingStatusColor = const Color(0xFFFFC107); // Amber
    cancelStatusColor = const Color(0xFFD32F2F); // Red

    lightPrimaryColor = const Color(0xFFFFFFFF);
    backgroundDark = const Color(0xFF556B2F);
    textDark = const Color(0xFFFFFFFF);
    cardDark = const Color(0xFF6B8E23);

    subtleGray = const Color(0xFFE9F0E9);
    warningColor = const Color(0xFFFFC107);
    infoColor = const Color(0xFF6B8E23);

    accessibleTextColor = const Color(0xFF556B2F);
    accessibleBackgroundColor = const Color(0xFFFFFFFF);
  }

  // Ocean Theme
  static void setOceanTheme() {
    primary = const Color(0xFF0077BE); // Deep Ocean Blue
    secondary = const Color(0xFF00C4CC); // Teal
    backgroundLight = const Color(0xFFE0F7FA); // Light Aqua
    textLight = const Color(0xFF004D73); // Dark Blue
    cardLight = const Color(0xFFFFFFFF); // White

    discountBadgeColor = const Color(0xFF00C4CC); // Teal
    ratingStarColor = const Color(0xFFFFC107); // Gold

    lightGrayGeneral = const Color(0xFFDCE7E8);
    darkGrayGeneral = const Color(0xFF4C6A73);
    darkGrayGeneral2 = const Color(0xFF004D73);

    completedStatusColor = const Color(0xFF43A047); // Green
    pendingStatusColor = const Color(0xFFFFC107); // Amber
    cancelStatusColor = const Color(0xFFD32F2F); // Red

    lightPrimaryColor = const Color(0xFFFFFFFF);
    backgroundDark = const Color(0xFF004D73);
    textDark = const Color(0xFFFFFFFF);
    cardDark = const Color(0xFF004D73);

    subtleGray = const Color(0xFFF0F8F8);
    warningColor = const Color(0xFFFFC107);
    infoColor = const Color(0xFF00C4CC);

    accessibleTextColor = const Color(0xFF004D73);
    accessibleBackgroundColor = const Color(0xFFFFFFFF);
  }

  // Rain Theme
  static void setRainTheme() {
    primary = const Color(0xFF607D8B); // Rainy Gray-Blue
    secondary = const Color(0xFF455A64); // Dark Gray-Blue
    backgroundLight = const Color(0xFFECEFF1); // Cloudy Gray
    textLight = const Color(0xFF37474F); // Dark Gray
    cardLight = const Color(0xFFFFFFFF); // White

    discountBadgeColor = const Color(0xFF607D8B); // Rainy Gray-Blue
    ratingStarColor = const Color(0xFFFFC107); // Gold

    lightGrayGeneral = const Color(0xFFDCE1E5);
    darkGrayGeneral = const Color(0xFF455A64);
    darkGrayGeneral2 = const Color(0xFF37474F);

    completedStatusColor = const Color(0xFF43A047); // Green
    pendingStatusColor = const Color(0xFFFFC107); // Amber
    cancelStatusColor = const Color(0xFFD32F2F); // Red

    lightPrimaryColor = const Color(0xFFFFFFFF);
    backgroundDark = const Color(0xFF37474F);
    textDark = const Color(0xFFFFFFFF);
    cardDark = const Color(0xFF37474F);

    subtleGray = const Color(0xFFECEFF1);
    warningColor = const Color(0xFFFFC107);
    infoColor = const Color(0xFF607D8B);

    accessibleTextColor = const Color(0xFF37474F);
    accessibleBackgroundColor = const Color(0xFFFFFFFF);
  }

  // Sunny Theme
  static void setSunnyTheme() {
    primary = const Color(0xFFFFD54F); // Sunshine Yellow
    secondary = const Color(0xFFFFA726); // Orange
    backgroundLight = const Color(0xFFFFF8E1); // Light Yellow
    textLight = const Color(0xFFBF360C); // Dark Orange
    cardLight = const Color(0xFFFFFFFF); // White

    discountBadgeColor = const Color(0xFFFFA726); // Orange
    ratingStarColor = const Color(0xFFFFC107); // Gold

    lightGrayGeneral = const Color(0xFFE7E4D8);
    darkGrayGeneral = const Color(0xFFBF360C);
    darkGrayGeneral2 = const Color(0xFFFF6F00);

    completedStatusColor = const Color(0xFF43A047); // Green
    pendingStatusColor = const Color(0xFFFFC107); // Amber
    cancelStatusColor = const Color(0xFFD32F2F); // Red

    lightPrimaryColor = const Color(0xFFFFFFFF);
    backgroundDark = const Color(0xFFBF360C);
    textDark = const Color(0xFFFFFFFF);
    cardDark = const Color(0xFFFFA726);

    subtleGray = const Color(0xFFFFF3E0);
    warningColor = const Color(0xFFFFC107);
    infoColor = const Color(0xFFFFA726);

    accessibleTextColor = const Color(0xFFBF360C);
    accessibleBackgroundColor = const Color(0xFFFFFFFF);
  }

  // Fog Theme
  static void setFogTheme() {
    primary = const Color(0xFFB0BEC5); // Foggy Blue-Gray
    secondary = const Color(0xFFECEFF1); // Light Gray
    backgroundLight = const Color(0xFFECEFF1); // Light Foggy Gray
    textLight = const Color(0xFF37474F); // Dark Gray
    cardLight = const Color(0xFFFFFFFF); // White

    discountBadgeColor = const Color(0xFFB0BEC5); // Foggy Blue-Gray
    ratingStarColor = const Color(0xFFFFC107); // Gold

    lightGrayGeneral = const Color(0xFFDCE3E8);
    darkGrayGeneral = const Color(0xFF455A64);
    darkGrayGeneral2 = const Color(0xFF37474F);

    completedStatusColor = const Color(0xFF43A047); // Green
    pendingStatusColor = const Color(0xFFFFC107); // Amber
    cancelStatusColor = const Color(0xFFD32F2F); // Red

    lightPrimaryColor = const Color(0xFFFFFFFF);
    backgroundDark = const Color(0xFF37474F);
    textDark = const Color(0xFFFFFFFF);
    cardDark = const Color(0xFF455A64);

    subtleGray = const Color(0xFFF5F5F5);
    warningColor = const Color(0xFFFFC107);
    infoColor = const Color(0xFFB0BEC5);

    accessibleTextColor = const Color(0xFF37474F);
    accessibleBackgroundColor = const Color(0xFFFFFFFF);
  }

  // Night Theme
  // Apple Theme
  static void setAppleTheme() {
    primary = const Color(0xFF000000); // Black for main elements
    secondary = const Color(0xFFFFFFFF); // White for contrast
    backgroundLight = const Color(0xFFF5F5F7); // Subtle light gray background
    textLight = const Color(0xFF1D1D1F); // Darker gray for readable text
    cardLight = const Color(0xFFFFFFFF); // Clean white for cards

    discountBadgeColor = const Color(0xFF007AFF); // Vibrant blue for highlights
    ratingStarColor = const Color(0xFFFFC107); // Gold for rating stars

    lightGrayGeneral = const Color(
      0xFFD1D1D6,
    ); // Neutral light gray for borders
    darkGrayGeneral = const Color(0xFF6E6E73); // Softer dark gray for text
    darkGrayGeneral2 = const Color(0xFF2C2C2E); // Deep dark gray for subtle UI

    completedStatusColor = const Color(0xFF0071E3); // Bright blue for success
    pendingStatusColor = const Color(0xFFFF9500); // Soft orange for pending
    cancelStatusColor = const Color(0xFFFF3B30); // Classic red for cancel/error

    lightPrimaryColor = const Color(0xFFFFFFFF); // White for primary accents
    backgroundDark = const Color(
      0xFF1C1C1E,
    ); // Deep gray for dark mode background
    textDark = const Color(0xFFFFFFFF); // Pure white for dark mode text
    cardDark = const Color(0xFF2C2C2E); // Subtle dark gray for dark cards

    subtleGray = const Color(
      0xFFE5E5EA,
    ); // Subtle gray for dividers or inactive elements
    warningColor = const Color(0xFFFFCC00); // Yellow for warnings
    infoColor = const Color(0xFF007AFF); // Blue for informational UI

    accessibleTextColor = const Color(0xFF000000); // Black for high contrast
    accessibleBackgroundColor = const Color(
      0xFFFFFFFF,
    ); // White for high contrast
  }
}
