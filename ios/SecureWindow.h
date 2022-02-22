#import <UIKit/UIKit.h>
#import <React/RCTBridgeModule.h>

@interface SecureWindow : NSObject <RCTBridgeModule>

    @property (nonatomic, nullable) BOOL *isSecureWindowActive;
    @property (nonatomic, strong, nullable) UIVisualEffectView *blurEffectView;

@end
