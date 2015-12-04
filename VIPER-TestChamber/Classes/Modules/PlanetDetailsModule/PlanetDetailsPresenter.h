//
//  PlanetDetailsPresenter.h
//  PlanetViewTester
//
//  Created by Laurie Hufford on 30/11/2015.
//  Copyright © 2015 ShopGun. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "PlanetDetailsRouterInterface.h"
#import "PlanetDetailsInteractorInterface.h"
#import "PlanetDetailsViewInterface.h"


@interface PlanetDetailsPresenter : NSObject <PlanetDetailsViewEventHandlerInterface, PlanetDetailsInteractorOutput>

@property (nonatomic, strong) id<PlanetDetailsRouterInterface> router;
@property (nonatomic, weak) id<PlanetDetailsViewInterface> view;
@property (nonatomic, strong) id<PlanetDetailsInteractorInterface> interactor;

@end
