#import <UIKit/UIKit.h>
#import <CoreFoundation/CoreFoundation.h>

#define SDLUIKitApp ((SDLUIKitApplication *)[UIApplication sharedApplication])

@interface SDLUIKitApplication : UIApplication 
{
  IBOutlet UIWindow* window;
}

@property(assign)	UIWindow* window;

@end
