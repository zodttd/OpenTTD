//
//  untitled.h
//  SBSettings
//
//  Created by mark on 10/30/08.
//  Copyright 2008 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AdMobDelegateProtocol.h"
#import "AdMobView.h"

#define AD_REFRESH_PERIOD 30.0 // display fresh ads once per minute

#define ADS_ADMOB		0
#define ADS_MOBCLIX		1
#define ADS_MINE		2
#define ADS_TOTAL		3


@interface AltAds : UIView <UIWebViewDelegate, AdMobDelegate> 
{
	NSTimer*			AdTimer;
	UIWebView*			AdView;
	int					AdSet;
	AdMobView*			adMobAd;
	NSTimer*			autoslider; // timer to slide in fresh ads
	int					AdsArray[ADS_TOTAL];
	int					CurrentAd;
	BOOL				adTimerShouldStop;
	BOOL				loadAdInFrame;
  int         refreshRate;
}
- (id)   initWithFrame:(CGRect)frame andWindow:(UIWindow*)_window;
- (void) AdTimerExpired:(NSTimer *)timer;
- (void) webViewDidFinishLoad:(UIWebView*) webView;
- (void) webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error;
- (void) RefreshAd;
- (void) connection:(NSURLConnection *)connection didReceiveData:(NSData *)data;
- (void) startAdmob;
- (void) refreshAdmob:(NSTimer *)timer; 
- (void) IncrementCurrentAdAndTryNext;
- (void) stopAdTimers;

+ (BOOL) isAdBlockingEnabled;

@end
