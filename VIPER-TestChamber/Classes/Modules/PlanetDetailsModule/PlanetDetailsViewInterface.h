

#import <UIKit/UIKit.h>


// The input protocol for the view. Methods to update the view.
@protocol PlanetDetailsViewInterface <NSObject>

- (void) setPlanetName:(NSString*)planetName;

@end


@protocol PlanetDetailsViewEventHandlerInterface <NSObject>

- (void) updateView;

- (void) dismissButtonPressed;

@end
