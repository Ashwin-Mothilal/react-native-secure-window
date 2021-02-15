#import "SecureWindow.h"

@implementation SecureWindow

RCT_EXPORT_MODULE(SecureWindow)

RCT_EXPORT_METHOD(changeSecureWindow: (BOOL *) canChangeSecureWindow)
{
    self.isSecureWindowActive = canChangeSecureWindow;
    RCTLogInfo(@"Yet to implement full functionality %i", self.isSecureWindowActive);
}

@end
