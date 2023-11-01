import 'package:google_mobile_ads/google_mobile_ads.dart';

class GoogleAdsHelper {
  GoogleAdsHelper._();
  static final GoogleAdsHelper googleAdsHelper = GoogleAdsHelper._();

  BannerAd? bannerAd;

  void showBannerAd() {
    bannerAd = BannerAd(
      size: AdSize.banner,
      adUnitId: "ca-app-pub-3940256099942544/9214589741",
      listener: BannerAdListener(),
      request: AdRequest(),
    );

    bannerAd?.load();
  }

  InterstitialAd? interstitialAd;

  void showInterstitialAd() {
    InterstitialAd.load(
      adUnitId: "ca-app-pub-3940256099942544/8691691433",
      request: AdRequest(),
      adLoadCallback: InterstitialAdLoadCallback(
          onAdLoaded: (Ad) {
            interstitialAd = Ad;
          },
          onAdFailedToLoad: (error) {}),
    );
  }

  AppOpenAd? appOpenAd;

  void showAppOpenAd() {
    AppOpenAd.load(
      adUnitId: "ca-app-pub-3940256099942544/3419835294",
      request: AdRequest(),
      adLoadCallback: AppOpenAdLoadCallback(
          onAdLoaded: (ad) {
            appOpenAd = ad;
          },
          onAdFailedToLoad: (error) {}),
      orientation: AppOpenAd.orientationPortrait,
    );
  }
}
