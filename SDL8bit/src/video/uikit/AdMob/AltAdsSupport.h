/*
 *  AltAdsSupport.h
 *  Docs2
 *
 *  Created by mark on 2/15/09.
 *  Copyright 2009 __MyCompanyName__. All rights reserved.
 *
 */

// Admob app id. Two allows random selection if sharing the app. Otherwise make the same.
#define ADMOB_AD_ID1	@"0"
//#ifdef APPSTORE
#define ADMOB_AD_ID2	@"0"
//#else
//#define ADMOB_AD_ID2	@"a14a8941f867725"
//#endif

// MY own URL will fall through when ad type = 2 (my own).
#define MY_OWN_URL		@"http://www.google.com"

// URL to retrieve which ads to use on this app.
#define WHICH_ADS_URL	@"http://www.google.com"

// contents of which_ads_url must be somethign like: 0,1,2 (admob, mobclix, MY_OWN_URL) or 1,0,2 (mobclix, admob, MY_OWN_URL). If no own url, you can double up like (0,1,1) for mobclix, admob, admob. Or you can just use bigboss's and give him the $$ when you dont fill :)
