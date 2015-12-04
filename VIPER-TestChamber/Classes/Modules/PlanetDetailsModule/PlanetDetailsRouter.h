//
//  PlanetDetailsRouter.h
//  PlanetViewTester
//
//  Created by Laurie Hufford on 30/11/2015.
//  Copyright © 2015 ShopGun. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "PlanetDetailsRouterInterface.h"
#import "PlanetDetailsModuleDelegate.h"


@interface PlanetDetailsRouter : NSObject <PlanetDetailsRouterInterface>

@property (nonatomic, weak) UIViewController* moduleView;
@property (nonatomic, weak) id<PlanetDetailsModuleDelegate> moduleDelegate;

@end
