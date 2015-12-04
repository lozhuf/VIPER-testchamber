//
//  ViewController.m
//  VIPER-TestChamber
//
//  Created by Laurie Hufford on 04/12/2015.
//  Copyright © 2015 Laurie Hufford. All rights reserved.
//

#import "PlanetListViewController.h"

#import "PlanetDetailsModule.h"

@interface PlanetListViewController () <PlanetDetailsModuleDelegate>

@end

@implementation PlanetListViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}



#pragma mark - Planet Details Module

- (void) openPlanetDetailsForID:(NSString*)planetID
{
    // how to launch a VIPER module from non-VIPER code
    UIViewController* vc = [PlanetDetailsModule buildPlanetDetailsModuleForPlanetID:planetID withDelegate:self];
    
    [self.navigationController pushViewController:vc animated:YES];
    //    [self presentViewController:vc animated:YES completion:nil];
}

- (void) planetDetailsModuleShouldDismiss
{
    [self.navigationController popViewControllerAnimated:YES];
    //    [self dismissViewControllerAnimated:YES completion:nil];
}



#pragma mark - Dummy data

- (NSArray*) planetIDs
{
    return @[@"mercury", @"venus", @"earth", @"mars"];
}

- (NSString*) planetIDAtIndex:(NSUInteger)index
{
    return [self planetIDs][index];
}




#pragma mark - Table View

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self planetIDs].count;
}
- (UITableViewCell*) tableView:tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath
{
    // create / dequeue cell
    static NSString* identifier = @"PlanetCell";
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    
    NSString* planetID = [self planetIDAtIndex:indexPath.row];
    cell.textLabel.text = [planetID capitalizedString];
    
    return cell;
}
- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(nonnull NSIndexPath *)indexPath
{
    NSString* planetID = [self planetIDAtIndex:indexPath.row];
    [self openPlanetDetailsForID:planetID];
}

     
@end
