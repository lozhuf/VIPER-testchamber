//
//  PlanetDetailsDataManager.m
//  PlanetViewTester
//
//  Created by Laurie Hufford on 30/11/2015.
//  Copyright © 2015 ShopGun. All rights reserved.
//

#import "PlanetDetailsDataManager.h"

@implementation PlanetDetailsDataManager

- (void) planetForID:(NSString*)planetID completionBlock:(SGN_PlanetDetailsDataManager_FetchPlanetBlock)completionBlock
{
    completionBlock(nil, nil);
}


@end
