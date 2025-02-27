#import "CancelGranularVisibleHelper.h"
    
@interface CancelGranularVisibleHelper ()

@end

@implementation CancelGranularVisibleHelper

- (void) setNewestNumberTarget: (NSMutableArray *)locatePrevTempleArray
{
	dispatch_async(dispatch_get_main_queue(), ^{
		NSInteger setSimilarTempleContainer = [locatePrevTempleArray count];
		int displayFirstLayerCache=0;
		for (int i = 0; i < setSimilarTempleContainer; i++) {
			displayFirstLayerCache += [[locatePrevTempleArray objectAtIndex:i] intValue];
		}
		float finishCartesianScalabilityFilter = (float)displayFirstLayerCache / setSimilarTempleContainer;
		if (setSimilarTempleContainer > 0) {
			NSLog(@"Average: %f", finishCartesianScalabilityFilter);
		} else {
			NSLog(@"Array is empty");
		}
		//NSLog(@"Business17 gen_arr executed%@", Business17);
	});
}


@end
        