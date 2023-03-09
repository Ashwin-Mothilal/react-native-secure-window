#import "SecureWindow.h"
#import <React/RCTUtils.h>

@implementation SecureWindow

RCT_EXPORT_MODULE();

- (instancetype)init
{
    if (self = [super init]) {
        [self startObserving];
    }
    
    return self;
}

- (void)dealloc
{
    [self stopObserving];
}

RCT_EXPORT_METHOD(changeSecureWindow: (BOOL *)canChangeSecureWindow) {
    _isSecureWindowActive = canChangeSecureWindow;
}

- (void)startObserving
{
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(handleAddSecurity)
                                                 name:UIApplicationWillResignActiveNotification
                                               object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(handleRemoveSecurity)
                                                 name:UIApplicationDidBecomeActiveNotification
                                               object:nil];
}

- (void)stopObserving
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (void)handleAddSecurity {
    if (!_isSecureWindowActive) {
        return;
    }
    
    UIWindow *window = RCTSharedApplication().delegate.window;
    UIBlurEffect *blurEffect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleLight];
    self.blurEffectView = [[UIVisualEffectView alloc] initWithEffect:blurEffect];
    [self.blurEffectView setFrame:window.bounds];
    self.blurEffectView.alpha = 0;
    [window addSubview:self.blurEffectView];
    [window bringSubviewToFront:self.blurEffectView];
    [UIView animateWithDuration:0.5 animations:^{
        self.blurEffectView.alpha = 1;
    }];
}

- (void)handleRemoveSecurity {
    [UIView animateWithDuration:0.5 animations:^{
        self.blurEffectView.alpha = 0;
    } completion:^(BOOL finished) {
        [self.blurEffectView removeFromSuperview];
    }];
}

+ (BOOL)requiresMainQueueSetup {
    return NO;
}

@end
