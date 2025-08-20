import 'dart:io';
import 'dart:ui';

import 'package:farmtohome_landing/utils/app_colors.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static const Color primaryColor = Color(0xFFE23744); // Zomato Red Accent
  static const Color darkBackground = Color(0xFF1B1B1B);
  static const Color lightBackground = Color(0xFFFDF4F4);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackground,
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          _buildHeroSection(context),
          _buildBetterFoodSection(),
          _buildFeaturesSection(),
          _buildGoldSection(),
          _buildDownloadAppSection(),
        ],
      ),
    );
  }

  Widget _buildHeroSection(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height * 0.95,
      child: Stack(
        children: [
          // Full background image
          Positioned.fill(
            child: Image.asset(
              'assets/images/farmtohome.png',
              fit: BoxFit.cover,
            ),
          ),

          // Full screen blur + dark overlay (frosted glass effect)
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
              child: Container(color: Colors.black.withOpacity(0.4)),
            ),
          ),

          // Bottom arch frosted glass bubble
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            height: size.height * 0.5,
            child: ClipPath(
              clipper: BottomBubbleArchClipper(),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 28, sigmaY: 28),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.15),
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(40),
                    ),
                  ),
                ),
              ),
            ),
          ),

          // Content centered, placed above arch with padding
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset('assets/icon/icon.png', height: 170),
                  const SizedBox(height: 20),
                  Text(
                    "FARM TO HOME",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                      fontSize: 66,
                      letterSpacing: 4,
                      height: 1.1,
                      shadows: [
                        Shadow(
                          color: Colors.black.withOpacity(0.6),
                          offset: Offset(2, 2),
                          blurRadius: 6,
                        ),
                        Shadow(
                          color: Colors.lightGreen.withOpacity(0.7),
                          offset: Offset(-1, -1),
                          blurRadius: 10,
                        ),
                      ],
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.redAccent.withOpacity(0.8),
                      decorationThickness: 1.2,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "Fresh & Organic\nProduce Delivered",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 36,
                      height: 1.2,
                      letterSpacing: 1,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Get farm-fresh vegetables & meat\nright at your doorstep',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      color: Colors.white70,
                      fontSize: 20,
                      height: 1.4,
                    ),
                  ),
                  const SizedBox(height: 80),
                  ElevatedButton(
                    onPressed: () async {
                      final androidUrl = Uri.parse(
                        'https://play.google.com/store/apps/details?id=com.eathealthy.eathealthy',
                      );
                      final iosUrl = Uri.parse(
                        'https://apps.apple.com/in/app/farm-to-home/id6742745584',
                      );

                      Uri urlToLaunch;

                      if (kIsWeb) {
                        // On web, open Android Play Store URL or your website
                        urlToLaunch = androidUrl;
                      } else if (Platform.isIOS) {
                        urlToLaunch = iosUrl;
                      } else {
                        urlToLaunch = androidUrl;
                      }

                      if (await canLaunchUrl(urlToLaunch)) {
                        await launchUrl(
                          urlToLaunch,
                          mode: LaunchMode.externalApplication,
                        );
                      } else {
                        debugPrint('Could not launch $urlToLaunch');
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: primaryColor,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 52,
                        vertical: 16,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      elevation: 12,
                      shadowColor: Colors.redAccent.withOpacity(0.5),
                    ),
                    child: Text(
                      "Order Now",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 1.1,
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _qrCodeCard(String assetPath, String label) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.12),
                blurRadius: 10,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          padding: const EdgeInsets.all(8),
          child: Image.asset(assetPath, height: 120),
        ),
        const SizedBox(height: 12),
        Text(
          label,
          style: GoogleFonts.montserrat(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.white70,
          ),
        ),
      ],
    );
  }

  Widget _buildBetterFoodSection() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 48, horizontal: 24),
      color: Colors.white,
      child: Column(
        children: [
          Text(
            'Fresh food\nfrom our farms to you',
            textAlign: TextAlign.center,
            style: GoogleFonts.montserrat(
              color: primaryColor,
              fontWeight: FontWeight.w700,
              fontSize: 32,
            ),
          ),
          const SizedBox(height: 14),
          Text(
            'Delivering organic, pesticide-free produce straight to your home',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              color: Colors.black87,
              fontSize: 17,
              height: 1.5,
            ),
          ),
          const SizedBox(height: 36),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _statCard('5*', 'Ratings', Icons.rate_review),
              _statCard('5+', 'Cities Served', Icons.location_city),
              _statCard('1000+', 'Orders Delivered', Icons.shopping_bag),
            ],
          ),
        ],
      ),
    );
  }

  Widget _statCard(String value, String label, IconData icon) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 14),
      width: 120,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: primaryColor.withOpacity(0.18),
            blurRadius: 16,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icon, size: 36, color: primaryColor),
          const SizedBox(height: 10),
          Text(
            value,
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w700,
              fontSize: 20,
              color: Colors.black87,
            ),
          ),
          Text(
            label,
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(fontSize: 15, color: Colors.black54),
          ),
        ],
      ),
    );
  }

  Widget _buildFeaturesSection() {
    final features = [
      {'title': 'Organic Produce', 'icon': Icons.eco},
      {'title': 'Fresh Meat', 'icon': Icons.set_meal},
      {'title': 'Home Delivery', 'icon': Icons.delivery_dining},
      {'title': 'Easy Ordering', 'icon': Icons.phone_android},
      {'title': 'Transparency', 'icon': Icons.visibility},
      {'title': 'Support', 'icon': Icons.people_alt},
      {'title': 'Seasonal Specials', 'icon': Icons.event_available},
      {'title': 'Subscription Plans', 'icon': Icons.repeat},
    ];
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 48, horizontal: 24),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.red.shade50, Colors.white],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        children: [
          Text(
            "Why choose us?",
            textAlign: TextAlign.center,
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w700,
              fontSize: 26,
              color: primaryColor,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            'We bring the best of farm directly to your home with quality and trust',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(color: Colors.black87, fontSize: 15),
          ),
          const SizedBox(height: 28),
          Wrap(
            spacing: 16,
            runSpacing: 16,
            children:
                features
                    .map(
                      (f) => Container(
                        width: 160,
                        height: 110,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(18),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 8,
                              offset: const Offset(0, 6),
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              f['icon'] as IconData,
                              color: primaryColor,
                              size: 32,
                            ),
                            const SizedBox(height: 10),
                            Text(
                              f['title'] as String,
                              style: GoogleFonts.poppins(fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    )
                    .toList(),
          ),
        ],
      ),
    );
  }

  Widget _buildGoldSection() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 48, horizontal: 24),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [primaryColor, Colors.red.shade700],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        children: [
          Text(
            'Farm Fresh Benefits',
            style: GoogleFonts.montserrat(
              color: Colors.amber,
              fontSize: 32,
              fontWeight: FontWeight.w700,
              letterSpacing: 1.1,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            'Enjoy fresh, healthy, and sustainable food delivered right to your doorstep',
            style: GoogleFonts.poppins(
              color: Colors.white70,
              fontSize: 16,
              fontWeight: FontWeight.w500,
              height: 1.4,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 28),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _goldBenefit(
                Icons.local_shipping,
                'Home Delivery',
                'On orders above ₹200',
              ),
              _goldBenefit(
                Icons.thumb_up,
                '100% Organic',
                'Directly from our own farm',
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _goldBenefit(IconData icon, String title, String desc) {
    return Column(
      children: [
        Icon(icon, size: 36, color: Colors.amber),
        const SizedBox(height: 10),
        Text(
          title,
          style: GoogleFonts.montserrat(
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontSize: 16,
          ),
        ),
        Text(
          desc,
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(color: Colors.white70, fontSize: 13),
        ),
      ],
    );
  }

  Widget _buildDownloadAppSection() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 56, horizontal: 24),
      color: Colors.white,
      child: Column(
        children: [
          Text(
            'Download Our App',
            style: GoogleFonts.montserrat(
              fontSize: 32,
              fontWeight: FontWeight.w700,
              color: primaryColor,
              letterSpacing: 1.1,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            'Scan the QR codes or tap the buttons below to download the app for Android and iOS',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontSize: 18,
              color: Colors.black87,
              height: 1.4,
            ),
          ),
          const SizedBox(height: 40),
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 48,
            runSpacing: 32,
            children: [
              _downloadCard(
                qrAsset: 'assets/icon/playstore_link_qrcode.png',
                platformLabel: 'Android',
                badgeAsset: 'assets/icon/google_play_badge.png',
                onTapUrl:
                    'https://play.google.com/store/apps/details?id=com.eathealthy.eathealthy',
              ),
              _downloadCard(
                qrAsset: 'assets/icon/appstore_link_qrcode.png',
                platformLabel: 'iOS',
                badgeAsset: 'assets/icon/appstore_badge.png',
                onTapUrl:
                    'https://apps.apple.com/in/app/farm-to-home/id6742745584',
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _downloadCard({
    required String qrAsset,
    required String platformLabel,
    required String badgeAsset,
    required String onTapUrl,
  }) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 12,
                offset: const Offset(0, 6),
              ),
            ],
          ),
          padding: const EdgeInsets.all(16),
          child: Image.asset(
            qrAsset,
            height: 140,
            width: 140,
            fit: BoxFit.contain,
          ),
        ),
        const SizedBox(height: 16),
        Text(
          platformLabel,
          style: GoogleFonts.montserrat(
            fontWeight: FontWeight.w600,
            fontSize: 20,
            color: primaryColor,
          ),
        ),
        const SizedBox(height: 12),
        GestureDetector(
          onTap: () async {
            final Uri url = Uri.parse(onTapUrl);
            if (await canLaunchUrl(url)) {
              await launchUrl(url, mode: LaunchMode.externalApplication);
            }
          },
          child: Image.asset(badgeAsset, height: 248, fit: BoxFit.contain),
        ),
      ],
    );
  }
}

class _YoutubeBackground extends StatefulWidget {
  const _YoutubeBackground({Key? key}) : super(key: key);

  @override
  State<_YoutubeBackground> createState() => _YoutubeBackgroundState();
}

class _YoutubeBackgroundState extends State<_YoutubeBackground> {
  late final YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();

    _controller = YoutubePlayerController(
      initialVideoId: 'frShIfIXAco',
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: true,
        loop: true,
        disableDragSeek: true,
        controlsVisibleAtStart: false,
        hideControls: true,
        hideThumbnail: true,
        forceHD: true,
        enableCaption: false,
      ),
    );

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _controller.play();
    });

    _controller.addListener(() {
      if (_controller.value.playerState == PlayerState.ended) {
        _controller.seekTo(const Duration(seconds: 0));
        _controller.play();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
      player: YoutubePlayer(
        controller: _controller,
        showVideoProgressIndicator: false,
        progressIndicatorColor: AppColors.primary,
        progressColors: ProgressBarColors(
          playedColor: AppColors.primary,
          handleColor: AppColors.primary.withOpacity(0.7),
        ),
      ),
      builder: (context, player) {
        return IgnorePointer(
          child: SizedBox.expand(
            child: FittedBox(
              fit: BoxFit.cover,
              clipBehavior: Clip.hardEdge,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: player,
              ),
            ),
          ),
        );
      },
    );
  }
}

/// Custom clipper for bottom bubble arch shape
class BottomBubbleArchClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = Path();
    // Start bottom left
    path.moveTo(0, size.height * 0.25);

    // Bezier curve to create arch bubble shape from left to right
    path.quadraticBezierTo(
      size.width * 0.5,
      size.height,
      size.width,
      size.height * 0.25,
    );

    // Right bottom corner
    path.lineTo(size.width, size.height);

    // Bottom right corner
    path.lineTo(0, size.height);

    // Close the path
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
