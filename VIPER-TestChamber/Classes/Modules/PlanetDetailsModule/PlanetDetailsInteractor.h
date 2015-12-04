//
//  PlanetDetailsInteractor.h
//  PlanetViewTester
//
//  Created by Laurie Hufford on 30/11/2015.
//  Copyright © 2015 ShopGun. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "PlanetDetailsInteractorInterface.h"
#import "PlanetDetailsDataManagerInterface.h"


// interact with the Planet model
@interface PlanetDetailsInteractor : NSObject <PlanetDetailsInteractorInterface>

- (instancetype) initWithPlanetID:(NSString*)planetID dataManager:(id<PlanetDetailsDataManagerInterface>)dataManager;

@property (nonatomic, weak) id<PlanetDetailsInteractorOutput> output;


@end
