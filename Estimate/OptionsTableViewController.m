//
//  OptionsTableViewController.m
//  Estimate
//
//  Created by Daniel Hahn on 9/4/13.
//  Copyright (c) 2013 StarkWeather. All rights reserved.
//

#import "OptionsTableViewController.h"
#import "StaticTableViewController.h"

@interface OptionsTableViewController (  )


@end

@implementation OptionsTableViewController

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

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

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
            if (row == ROW_alumination && alumination == 1)
            {
               // NSLog(@"load 1");
               cell.accessoryType = UITableViewCellAccessoryCheckmark;
            }
            if (row == ROW_builtUpGIC && builtUpGIC == 1)
            {
               // NSLog(@"load 2");
                cell.accessoryType = UITableViewCellAccessoryCheckmark;
            }
            if (row == ROW_builtUpGIS && builtUpGIS == 1)
            {
                cell.accessoryType = UITableViewCellAccessoryCheckmark;
            }
            if (row == ROW_builtUpGNC && builtUpGNC == 1)
            {
                cell.accessoryType = UITableViewCellAccessoryCheckmark;
            }
            if (row == ROW_builtUpGNS && builtUpGNS == 1)
            {
                cell.accessoryType = UITableViewCellAccessoryCheckmark;
            }
            if (row == ROW_coatings && coatings == 1)
            {
                cell.accessoryType = UITableViewCellAccessoryCheckmark;
            }
            if (row == ROW_duroLast && duroLast == 1)
            {
                cell.accessoryType = UITableViewCellAccessoryCheckmark;
            }
            if (row == ROW_threePly && threePly == 1)
            {
                cell.accessoryType = UITableViewCellAccessoryCheckmark;
            }
            if (row == ROW_foam && foam == 1)
            {
                cell.accessoryType = UITableViewCellAccessoryCheckmark;
            }
            if (row == ROW_singlePVC && singlePVC == 1)
            {
                cell.accessoryType = UITableViewCellAccessoryCheckmark;
            }
            if (row == ROW_singleTPO && singleTPO == 1)
            {
                cell.accessoryType = UITableViewCellAccessoryCheckmark;
            }
            if (row == ROW_torch && torch == 1)
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
                if  (alumination == 0){ alumination=1;}else{alumination=0;};
            }
            if (row == ROW_builtUpGIC)
            {
                 NSLog(@"select 1");
                if  (builtUpGIC == 0){ builtUpGIC=1;}else{builtUpGIC=0;};
            }
            if (row == ROW_builtUpGIS)
            {
                NSLog(@"select 2");
                if  (builtUpGIS == 0){ builtUpGIS=1;}else{builtUpGIS=0;};
            }
            if (row == ROW_builtUpGNC)
            {
                NSLog(@"select 3");
                if  (builtUpGNC == 0){ builtUpGNC=1;}else{builtUpGNC=0;};
            }
            if (row == ROW_builtUpGNS)
            {
                NSLog(@"select 4");
                if  (builtUpGNS == 0){ builtUpGNS=1;}else{builtUpGNS=0;};
            }
            if (row == ROW_coatings)
            {
                NSLog(@"select 5");
                if  (coatings == 0){ coatings=1;}else{coatings=0;};
            }
            if (row == ROW_duroLast)
            {
                NSLog(@"select 6");
                if  (duroLast == 0){ duroLast=1;}else{duroLast=0;};
            }
            if (row == ROW_threePly)
            {
                NSLog(@"select 7");
                if  (threePly == 0){ threePly=1;}else{threePly=0;};
            }
            if (row == ROW_foam)
            {
                NSLog(@"select 8");
                if  (foam == 0){ foam=1;}else{foam=0;};
            }
            if (row == ROW_singlePVC)
            {
                NSLog(@"select 9");
                if  (singlePVC == 0){ singlePVC=1;}else{singlePVC=0;};
            }
            if (row == ROW_singleTPO)
            {
                NSLog(@"select 10");
                if  (singleTPO == 0){ singleTPO=1;}else{singleTPO=0;};
            }
            if (row == ROW_torch)
            {
                NSLog(@"select 11");
                if  (torch == 0){ torch=1;}else{torch=0;};
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
    
    options = [[NSMutableArray alloc]init];
    
    [options addObject:[NSNumber numberWithUnsignedInt:(alumination) ]];
    [options addObject:[NSNumber numberWithUnsignedInt:(builtUpGIC) ]];
    [options addObject:[NSNumber numberWithUnsignedInt:(builtUpGIS) ]];
    [options addObject:[NSNumber numberWithUnsignedInt:(builtUpGNC) ]];
    [options addObject:[NSNumber numberWithUnsignedInt:(builtUpGNS) ]];
    [options addObject:[NSNumber numberWithUnsignedInt:(coatings) ]];
    [options addObject:[NSNumber numberWithUnsignedInt:(duroLast) ]];
    [options addObject:[NSNumber numberWithUnsignedInt:(threePly) ]];
    [options addObject:[NSNumber numberWithUnsignedInt:(foam) ]];
    [options addObject:[NSNumber numberWithUnsignedInt:(singlePVC) ]];
    [options addObject:[NSNumber numberWithUnsignedInt:(singleTPO) ]];
    [options addObject:[NSNumber numberWithUnsignedInt:(torch) ]];
  
    staticController.optionsArray = options;
}


@end
