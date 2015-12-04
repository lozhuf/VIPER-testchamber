//
//  PlanetDetailsViewController.h
//  PlanetViewTester
//
//  Created by Laurie Hufford on 30/11/2015.
//  Copyright © 2015 ShopGun. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "PlanetDetailsViewInterface.h"



// concrete view
@interface PlanetDetailsViewController : UIViewController <PlanetDetailsViewInterface>


@property (nonatomic, strong) id<PlanetDetailsViewEventHandlerInterface> eventHandler;


- (IBAction)dismissButtonPressed:(id)sender;

@property (weak, nonatomic) IBOutlet UILabel *planetNameLabel;

@end
