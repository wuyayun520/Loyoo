#import "PauseNewestCoordinatorArray.h"
#import "SkipIntuitiveFragmentOwner.h"
#import "SeekEnabledListenerPool.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ReleaseReusableResultBase : NSObject


- (void) setRequiredListenerReference;

- (void) lockSynchronousNavigationHelper;

@end

NS_ASSUME_NONNULL_END
        