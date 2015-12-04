
#import <UIKit/UIKit.h>

#import "PlanetDetailsModuleDelegate.h"

@interface PlanetDetailsModule : NSObject

+ (UIViewController*) buildPlanetDetailsModuleForPlanetID:(NSString*)planetID withDelegate:(id<PlanetDetailsModuleDelegate>)delegate;

@end
