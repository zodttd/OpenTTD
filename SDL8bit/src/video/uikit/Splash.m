#import "Splash.h"
#import "SDL_uikitappdelegate.h"

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


- (void)dealloc {
    [super dealloc];
}

- (IBAction)playOn:(id)sender
{
  UIButton* button = (UIButton*)sender;
  [button setTitle:@"Loading. Please Wait." forState:UIControlStateNormal];
  [[SDLUIKitDelegate sharedAppDelegate] performSelector:@selector(postFinishLaunch) withObject:nil afterDelay:0.0]; 
}

@end
