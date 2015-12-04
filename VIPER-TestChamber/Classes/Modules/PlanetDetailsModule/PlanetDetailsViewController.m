//
//  PlanetDetailsViewController.m
//  PlanetViewTester
//
//  Created by Laurie Hufford on 30/11/2015.
//  Copyright © 2015 ShopGun. All rights reserved.
//

#import "PlanetDetailsViewController.h"

@implementation PlanetDetailsViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void) viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    [self.eventHandler updateView];
}



#pragma mark -

- (void) setPlanetName:(NSString*)planetName
{
    self.planetNameLabel.text = planetName;
}

- (IBAction)dismissButtonPressed:(id)sender
{
    [self.eventHandler dismissButtonPressed];
}

@end
