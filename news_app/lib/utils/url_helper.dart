import 'package:flutter_custom_tabs/flutter_custom_tabs.dart';
import 'package:url_launcher/url_launcher.dart' as url_launcher;

class UrlHelper {
  static Future openUrl(String url, {bool openExternalApp = false}) async {
    if (openExternalApp) {
      return await _openUrlInExternalApp(url);
    }

    try {
      return await launch(
        url,
        customTabsOption: CustomTabsOption(
          enableDefaultShare: true,
          enableUrlBarHiding: true,
          showPageTitle: true,
          animation: CustomTabsSystemAnimation.slideIn(),
        ),
        safariVCOption: const SafariViewControllerOption(
          barCollapsingEnabled: true,
          entersReaderIfAvailable: false,
          dismissButtonStyle: SafariViewControllerDismissButtonStyle.close,
        ),
      );
    } catch (e) {
      return await _openUrlInExternalApp(url);
    }
  }

  static _openUrlInExternalApp(String url) async {
    final uriUrl = Uri.parse(url);
    return await url_launcher.launchUrl(
      uriUrl,
      mode: url_launcher.LaunchMode.externalApplication,
    );
  }
}
