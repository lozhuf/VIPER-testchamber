//
//  PlanetDetailsInteractor.m
//  PlanetViewTester
//
//  Created by Laurie Hufford on 30/11/2015.
//  Copyright © 2015 ShopGun. All rights reserved.
//

#import "PlanetDetailsInteractor.h"

#import "PlanetDetailsDataManager.h"

@interface PlanetDetailsInteractor ()

@property (nonatomic, strong) id<PlanetDetailsDataManagerInterface> dataManager;

@property (nonatomic, strong) NSString* planetID;
@end

@implementation PlanetDetailsInteractor

- (instancetype) initWithPlanetID:(NSString*)planetID dataManager:(id<PlanetDetailsDataManagerInterface>)dataManager;
{
    self = [super init];
    if (!self)
        return nil;
    
    _dataManager = dataManager;
    _planetID = planetID;
    
    return self;
}


#pragma mark - Interactor Interface

- (void) getPlanetName:(void (^)(NSString* planetName))planetNameCallback
{
    planetNameCallback([self.planetID capitalizedString]);
}


@end
