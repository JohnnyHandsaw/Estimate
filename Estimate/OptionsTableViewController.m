//
//  OptionsTableViewController.m
//  Estimate
//
//  Created by Daniel Hahn on 9/4/13.
//  Copyright (c) 2013 StarkWeather. All rights reserved.
//

#import "OptionsTableViewController.h"
#import "StaticTableViewController.h"
#import "Estimate.h"
#import "Options.h"
#import "Common.h"
#import "Alumination.h"
#import "BuiltUpPlyGNS.h"
#import "BuiltUpPlyGIS.h"
#import "BuiltUpPlyGIC.h"
#import "BuiltUpFileGNC.h"
#import "BuiltUpFileGNC.h"
#import "Coatings.h"
#import "DuroLast.h"
#import "ThreePlyCold.h"
#import "Foam.h"
#import "SinglePlyTPO.h"
#import "SinglePlyPVC.h"
#import "Torch.h"


@interface OptionsTableViewController (  )


@end

@implementation OptionsTableViewController

@synthesize estimate;
@synthesize alumination;
@synthesize builtUpGIC;
@synthesize builtUpGIS;
@synthesize builtUpGNC;
@synthesize builtUpGNS;
@synthesize coatings;
@synthesize duroLast;
@synthesize threePly;
@synthesize foam;
@synthesize singlePVC;
@synthesize singleTPO;
@synthesize torch;
@synthesize options;

#define SECTION_OPTIONS 0
#define ROW_alumination 0
#define ROW_builtUpGIC 1
#define ROW_builtUpGIS 2
#define ROW_builtUpGNC 3
#define ROW_builtUpGNS 4
#define ROW_coatings 5
#define ROW_duroLast 6
#define ROW_threePly 7
#define ROW_foam 8
#define ROW_singlePVC 9
#define ROW_singleTPO 10
#define ROW_torch 11

- (void)setEstimate:(id)newEstimate
{
    NSLog(@"setEstimate");
    NSLog(@"estimate %@", newEstimate);
    if (estimate != newEstimate) {
        estimate = newEstimate;
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    NSLog(@"estimate %@", estimate);
}
//- (id)initWithStyle:(UITableViewStyle)style
//{
//    self = [super initWithStyle:style];
//    if (self) {
//        // Custom initialization
//    }
//    
//    if(self.estimate)
//    {
//        self.alumination = self
//    }
//    return self;
//}

- (void)viewDidLoad
{
    [super viewDidLoad];

     //Uncomment the following line to preserve selection between presentations.
     self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

//- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
//{
//#warning Potentially incomplete method implementation.
    // Return the number of sections.
   // return 0;
//}

//- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
//{
//#warning Incomplete method implementation.
    // Return the number of rows in the section.
  //  return 0;
//}

//- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
//{
  //  static NSString *CellIdentifier = @"Cell";
   // UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    
  //  return cell;
//}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    UITableViewCell *cell = [super tableView:tableView cellForRowAtIndexPath:indexPath];
    cell.accessoryType = UITableViewCellAccessoryNone;
    
    
    NSUInteger section = [indexPath section];
    NSUInteger row = [indexPath row];
    
    switch (section)
    {
        case SECTION_OPTIONS:
            if (row == ROW_alumination &&  estimate.dataOptions.alumination == 1)
            {
                NSLog(@"load 1");
               cell.accessoryType = UITableViewCellAccessoryCheckmark;
            }
            if (row == ROW_builtUpGIC && estimate.dataOptions.builtUpGIC == 1)
            {
                NSLog(@"load 2");
                cell.accessoryType = UITableViewCellAccessoryCheckmark;
            }
            if (row == ROW_builtUpGIS && estimate.dataOptions.builtUpGIS == 1)
            {
                cell.accessoryType = UITableViewCellAccessoryCheckmark;
            }
            if (row == ROW_builtUpGNC && estimate.dataOptions.builtUpGNC == 1)
            {
                cell.accessoryType = UITableViewCellAccessoryCheckmark;
            }
            if (row == ROW_builtUpGNS && estimate.dataOptions.builtUpGNS == 1)
            {
                cell.accessoryType = UITableViewCellAccessoryCheckmark;
            }
            if (row == ROW_coatings && estimate.dataOptions.coatings == 1)
            {
                cell.accessoryType = UITableViewCellAccessoryCheckmark;
            }
            if (row == ROW_duroLast && estimate.dataOptions.duroLast == 1)
            {
                cell.accessoryType = UITableViewCellAccessoryCheckmark;
            }
            if (row == ROW_threePly && estimate.dataOptions.threePly == 1)
            {
                cell.accessoryType = UITableViewCellAccessoryCheckmark;
            }
            if (row == ROW_foam && estimate.dataOptions.foam == 1)
            {
                cell.accessoryType = UITableViewCellAccessoryCheckmark;
            }
            if (row == ROW_singlePVC && estimate.dataOptions.singlePVC == 1)
            {
                cell.accessoryType = UITableViewCellAccessoryCheckmark;
            }
            if (row == ROW_singleTPO && estimate.dataOptions.singleTPO == 1)
            {
                cell.accessoryType = UITableViewCellAccessoryCheckmark;
            }
            if (row == ROW_torch && estimate.dataOptions.torch == 1)
            {
                cell.accessoryType = UITableViewCellAccessoryCheckmark;
            }

    }
    return cell;
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    NSUInteger section = [indexPath section];
    NSUInteger row = [indexPath row];
    
    switch (section) {
        case SECTION_OPTIONS:
            if (row == ROW_alumination)
            {
                NSLog(@"select 0");
              
                if  (estimate.dataOptions.alumination == 0){ estimate.dataOptions.alumination=1;}else{estimate.dataOptions.alumination=0;};
                  NSLog(@"estimate %@", estimate.dataOptions);
            }
            if (row == ROW_builtUpGIC)
            {
                 NSLog(@"select 1");
                if  (estimate.dataOptions.builtUpGIC == 0){ estimate.dataOptions.builtUpGIC=1;}else{estimate.dataOptions.builtUpGIC=0;};
            }
            if (row == ROW_builtUpGIS)
            {
                NSLog(@"select 2");
                if  (estimate.dataOptions.builtUpGIS == 0){ estimate.dataOptions.builtUpGIS=1;}else{estimate.dataOptions.builtUpGIS=0;};
            }
            if (row == ROW_builtUpGNC)
            {
                NSLog(@"select 3");
                if  (estimate.dataOptions.builtUpGNC == 0){ estimate.dataOptions.builtUpGNC=1;}else{estimate.dataOptions.builtUpGNC=0;};
            }
            if (row == ROW_builtUpGNS)
            {
                NSLog(@"select 4");
                if  (estimate.dataOptions.builtUpGNS == 0){ estimate.dataOptions.builtUpGNS=1;}else{estimate.dataOptions.builtUpGNS=0;};
            }
            if (row == ROW_coatings)
            {
                NSLog(@"select 5");
                if  (estimate.dataOptions.coatings == 0){ estimate.dataOptions.coatings=1;}else{estimate.dataOptions.coatings=0;};
            }
            if (row == ROW_duroLast)
            {
                NSLog(@"select 6");
                if  (estimate.dataOptions.duroLast == 0){ estimate.dataOptions.duroLast=1;}else{estimate.dataOptions.duroLast=0;};
            }
            if (row == ROW_threePly)
            {
                NSLog(@"select 7");
                if  (estimate.dataOptions.threePly == 0){ estimate.dataOptions.threePly=1;}else{estimate.dataOptions.threePly=0;};
            }
            if (row == ROW_foam)
            {
                NSLog(@"select 8");
                if  (estimate.dataOptions.foam == 0){ estimate.dataOptions.foam=1;}else{estimate.dataOptions.foam=0;};
            }
            if (row == ROW_singlePVC)
            {
                NSLog(@"select 9");
                if  (estimate.dataOptions.singlePVC == 0){ estimate.dataOptions.singlePVC=1;}else{estimate.dataOptions.singlePVC=0;};
            }
            if (row == ROW_singleTPO)
            {
                NSLog(@"select 10");
                if  (estimate.dataOptions.singleTPO == 0){ estimate.dataOptions.singleTPO=1;}else{estimate.dataOptions.singleTPO=0;};
            }
            if (row == ROW_torch)
            {
                NSLog(@"select 11");
                if  (estimate.dataOptions.torch == 0){ estimate.dataOptions.torch=1;}else{estimate.dataOptions.torch=0;};
            }
            break;
        case 1:
        {
           // [self performSegueWithIdentifier:@"myProject" sender:self];
        }
    }

    
    [self.tableView reloadData];
    
    // Navigation logic may go here. Create and push another view controller.
    /*
     DetailViewController *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    StaticTableViewController *staticController =segue.destinationViewController;
    
    
//    options = [[NSMutableArray alloc]init];
//    
//    [options addObject:[NSNumber numberWithUnsignedInt:(alumination) ]];
//    [options addObject:[NSNumber numberWithUnsignedInt:(builtUpGIC) ]];
//    [options addObject:[NSNumber numberWithUnsignedInt:(builtUpGIS) ]];
//    [options addObject:[NSNumber numberWithUnsignedInt:(builtUpGNC) ]];
//    [options addObject:[NSNumber numberWithUnsignedInt:(builtUpGNS) ]];
//    [options addObject:[NSNumber numberWithUnsignedInt:(coatings) ]];
//    [options addObject:[NSNumber numberWithUnsignedInt:(duroLast) ]];
//    [options addObject:[NSNumber numberWithUnsignedInt:(threePly) ]];
//    [options addObject:[NSNumber numberWithUnsignedInt:(foam) ]];
//    [options addObject:[NSNumber numberWithUnsignedInt:(singlePVC) ]];
//    [options addObject:[NSNumber numberWithUnsignedInt:(singleTPO) ]];
//    [options addObject:[NSNumber numberWithUnsignedInt:(torch) ]];
  
  //  staticController.optionsArray = options;
    staticController.estimate = estimate;

}


@end
