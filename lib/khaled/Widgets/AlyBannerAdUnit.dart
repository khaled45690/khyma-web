import 'package:flutter/material.dart';
// admob start  ----------------------------------------------
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'dart:io';
// admob end  ----------------------------------------------


class AlyBannerAdUnit extends StatefulWidget {
  final String iosAdId;
  final String androidAdId;
  AlyBannerAdUnit ({Key key, this.iosAdId, this.androidAdId,}): super(key: key);

  @override
  _AlyBannerAdUnitState createState() => _AlyBannerAdUnitState();
}

class _AlyBannerAdUnitState extends State<AlyBannerAdUnit> {

  // admob start  ----------------------------------------------




  final AdListener listener = AdListener(
    // Called when an ad is successfully received.
    onAdLoaded: (Ad ad) => print('Ad loaded.'),
    // Called when an ad request failed.
    onAdFailedToLoad: (Ad ad, LoadAdError error) {
      ad.dispose();
      print('Ad failed to load: $error');
    },
    // Called when an ad opens an overlay that covers the screen.
    onAdOpened: (Ad ad) => print('Ad opened.'),
    // Called when an ad removes an overlay that covers the screen.
    onAdClosed: (Ad ad) => print('Ad closed.'),
    // Called when an ad is in the process of leaving the application.
    onApplicationExit: (Ad ad) => print('Left application.'),
  );
  // admob end  ----------------------------------------------
  BannerAd myBannerUp;

  @override
  void initState() {
    // TODO: implement initState
// admob start  ----------------------------------------------

  myBannerUp = BannerAd(
    adUnitId: Platform.isIOS ? widget.iosAdId:widget.androidAdId,
    size: AdSize.banner,
    request: AdRequest(),
    listener: AdListener(),
  );
    myBannerUp.load();

    // admob end  ----------------------------------------------
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Container(
      alignment: Alignment.center,
      child: AdWidget(ad: myBannerUp),
      width: myBannerUp.size.width.toDouble(),
      height: myBannerUp.size.height.toDouble(),
    );
  }

}