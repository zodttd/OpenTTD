#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

void set_always_on()
{
  [[UIApplication sharedApplication] setIdleTimerDisabled:YES];
}

const char* get_resource_path(char* file)
{
  static char resource_path[1024];
#ifdef APPSTORE
  const char* path = [[[NSBundle mainBundle] resourcePath] UTF8String];
  sprintf(resource_path, "%s/%s", path, file);
#else
  sprintf(resource_path, "/Applications/CardDropzLite.app/%s", file);
#endif
  return resource_path;
}

const char* get_documents_path(char* file)
{
  static char documents_path[1024];
#ifdef APPSTORE
  NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
	NSString *documentsDirectory = [paths objectAtIndex: 0];
  const char* path = [documentsDirectory UTF8String];
  sprintf(documents_path, "%s/%s", path, file);
#else
  sprintf(documents_path, "/var/mobile/Documents/%s", file);
#endif  
  return documents_path;
}
