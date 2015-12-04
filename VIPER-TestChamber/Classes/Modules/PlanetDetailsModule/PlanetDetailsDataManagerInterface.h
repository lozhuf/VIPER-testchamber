

#import <Foundation/Foundation.h>

@class PlanetModel;

typedef void (^SGN_PlanetDetailsDataManager_FetchPlanetBlock)(PlanetModel* planet, NSError* error);


// Gets the model objects (entities) from the different services (cache/network...)
@protocol PlanetDetailsDataManagerInterface <NSObject>

- (void) planetForID:(NSString*)planetID completionBlock:(SGN_PlanetDetailsDataManager_FetchPlanetBlock)completionBlock;

@end

