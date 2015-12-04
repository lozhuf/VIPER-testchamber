

#import <Foundation/Foundation.h>


@protocol PlanetDetailsInteractorInterface <NSObject>

- (void) getPlanetName:(void (^)(NSString* planetName))planetNameCallback;

@end

@protocol PlanetDetailsInteractorOutput <NSObject>


@end

