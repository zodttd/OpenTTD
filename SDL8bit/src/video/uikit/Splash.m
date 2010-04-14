#import "Splash.h"
#import "SDL_uikitappdelegate.h"

@implementation SplashViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
  self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
  
  //[[UIDevice currentDevice] beginGeneratingDeviceOrientationNotifications];
    
  return self;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{  
  return YES;
}

- (void)dealloc
{
	[super dealloc];
}

@end

@implementation Splash

- (id)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        // Initialization code
        
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
    // Drawing code
}


- (void)dealloc 
{
  [super dealloc];
}

- (IBAction)playOn:(id)sender
{
  [altAd stopAdTimers];
  UIButton* button = (UIButton*)sender;
  [button setTitle:@"Loading. Please Wait." forState:UIControlStateNormal];
  [[SDLUIKitDelegate sharedAppDelegate] performSelector:@selector(postFinishLaunch) withObject:nil afterDelay:0.0];
  [self removeFromSuperview];  
}

@end
