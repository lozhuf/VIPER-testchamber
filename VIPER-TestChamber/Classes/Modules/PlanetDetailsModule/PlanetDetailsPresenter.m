//
//  PlanetDetailsPresenter.m
//  PlanetViewTester
//
//  Created by Laurie Hufford on 30/11/2015.
//  Copyright © 2015 ShopGun. All rights reserved.
//

#import "PlanetDetailsPresenter.h"

@implementation PlanetDetailsPresenter 


#pragma mark - View Event Handler

- (void) updateView
{
    __weak __typeof (self) weakSelf = self;
    
    [self.interactor getPlanetName:^(NSString* planetName) {
        [weakSelf.view setPlanetName:planetName];
     }];
}

- (void) dismissButtonPressed
{
    [self.router dismissPlanetDetails];
}

#pragma mark Interactor Output

@end
