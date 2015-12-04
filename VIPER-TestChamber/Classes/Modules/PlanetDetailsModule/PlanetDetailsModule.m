//
//  PlanetDetailsModule.m
//  PlanetViewTester
//
//  Created by Laurie Hufford on 02/12/2015.
//  Copyright © 2015 ShopGun. All rights reserved.
//

#import "PlanetDetailsModule.h"

#import "PlanetDetailsRouter.h"
#import "PlanetDetailsViewController.h"
#import "PlanetDetailsPresenter.h"
#import "PlanetDetailsInteractor.h"
#import "PlanetDetailsDataManager.h"

@implementation PlanetDetailsModule

+ (UIViewController*) buildPlanetDetailsModuleForPlanetID:(NSString*)planetID withDelegate:(id<PlanetDetailsModuleDelegate>)delegate
{
    
    PlanetDetailsViewController* view = [self planetDetailsViewControllerFromStoryboard];
    
    PlanetDetailsRouter* router = [PlanetDetailsRouter new];
    PlanetDetailsPresenter* presenter = [PlanetDetailsPresenter new];
    PlanetDetailsDataManager* dataManager = [PlanetDetailsDataManager new];

    PlanetDetailsInteractor* interactor = [[PlanetDetailsInteractor alloc] initWithPlanetID:planetID dataManager:dataManager];
    interactor.output = presenter;
    
    view.eventHandler = presenter;
    
    presenter.router = router;
    presenter.view = view;
    presenter.interactor = interactor;
    
    router.moduleView = view;
    router.moduleDelegate = delegate;
    
    return view;
}


#pragma mark - View from Storyboard

+ (PlanetDetailsViewController *) planetDetailsViewControllerFromStoryboard
{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"PlanetDetailsModule" bundle:[NSBundle mainBundle]];
    
    PlanetDetailsViewController *viewController = [storyboard instantiateInitialViewController];
    
    return viewController;
}



@end