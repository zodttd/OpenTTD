#import <UIKit/UIKit.h>
#import "AltAds.h"

@interface SplashViewController : UIViewController 
{
}
@end

@interface Splash : UIView 
{
  AltAds* altAd;
}

- (IBAction)playOn:(id)sender;

@end
