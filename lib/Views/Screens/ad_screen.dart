import 'package:flutter/material.dart';
import 'package:google_ads_flutter_12/Components/Helpers/google_ad_helper.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdScreen extends StatefulWidget {
  const AdScreen({super.key});

  @override
  State<AdScreen> createState() => _AdScreenState();
}

class _AdScreenState extends State<AdScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    GoogleAdsHelper.googleAdsHelper.showBannerAd();
    GoogleAdsHelper.googleAdsHelper.showInterstitialAd();
    GoogleAdsHelper.googleAdsHelper.showAppOpenAd();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Google Ads"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
              child: AdWidget(ad: GoogleAdsHelper.googleAdsHelper.bannerAd!),
            ),
            ElevatedButton(
              onPressed: () {
                GoogleAdsHelper.googleAdsHelper.interstitialAd!.show();
                GoogleAdsHelper.googleAdsHelper.showInterstitialAd();
              },
              child: Text("Interstitial Ad"),
            ),
            ElevatedButton(
              onPressed: () {
                GoogleAdsHelper.googleAdsHelper.appOpenAd!.show();
                GoogleAdsHelper.googleAdsHelper.showAppOpenAd();
              },
              child: Text("AppOpen Ad"),
            )
          ],
        ),
      ),
    );
  }
}
