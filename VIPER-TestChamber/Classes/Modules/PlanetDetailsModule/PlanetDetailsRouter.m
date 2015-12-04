//
//  PlanetDetailsRouter.m
//  PlanetViewTester
//
//  Created by Laurie Hufford on 30/11/2015.
//  Copyright © 2015 ShopGun. All rights reserved.
//

#import "PlanetDetailsRouter.h"

#import "PlanetDetailsDataManager.h"
#import "PlanetDetailsInteractor.h"
#import "PlanetDetailsPresenter.h"
#import "PlanetDetailsViewController.h"



@interface PlanetDetailsRouter ()

@end

@implementation PlanetDetailsRouter

#pragma mark - Router Interface

- (void) dismissPlanetDetails
{
    if ([self.moduleDelegate respondsToSelector:@selector(planetDetailsModuleShouldDismiss)])
    {
        [self.moduleDelegate planetDetailsModuleShouldDismiss];
    }
}

@end
