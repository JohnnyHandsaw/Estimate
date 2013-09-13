//
//  StaticTableViewController.m
//  Estimate
//
//  Created by Daniel Hahn on 9/3/13.
//  Copyright (c) 2013 StarkWeather. All rights reserved.
//

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

@interface StaticTableViewController ()

@end

@implementation StaticTableViewController

@synthesize estimate;

@synthesize optionsArray;
@synthesize pickerView;
//@synthesize standardKeyBoard;
@synthesize cityOptions;
@synthesize deckTypeArray;

@synthesize city;
@synthesize projectName;
@synthesize deckType;
@synthesize roofSQS;

#define SECTION_alumination 1
#define SECTION_builtUpGIC 2
#define SECTION_builtUpGIS 3
#define SECTION_builtUpGNC 4
#define SECTION_builtUpGNS 5
#define SECTION_coatings 6
#define SECTION_duroLast 7
#define SECTION_threePly 8
#define SECTION_foam 9
#define SECTION_singlePVC 10
#define SECTION_singleTPO 11
#define SECTION_torch 12
#define PICKER_CITY 1000
#define PICKER_DECKTYPE 1001
#define DECIMAL_ROOFSQS 1000

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

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    [self configureView];
}
- (void)configureView
{
    // Update the user interface for the detail item.
    
    NSLog(@"ConfigureView");
    NSLog(@"array: %@", estimate.dataOptions);

    
     if(estimate.dataOptions.alumination == 1)
     {
         NSLog(@"0");
     }
    if(estimate.dataOptions.builtUpGIC == 1)
    {
        NSLog(@"1");
    }
    if(estimate.dataOptions.builtUpGIS == 1)
    {
        NSLog(@"2");
    }
    if(estimate.dataOptions.builtUpGNC == 1)
    {
        NSLog(@"3");
    }
    if(estimate.dataOptions.builtUpGNS == 1)
    {
        NSLog(@"4");
    }
    if(estimate.dataOptions.coatings == 1)
    {
        NSLog(@"5");
    }
    if(estimate.dataOptions.duroLast == 1)
    {
        NSLog(@"6");
    }
    if(estimate.dataOptions.threePly == 1)
    {
        NSLog(@"7");
    }
    if(estimate.dataOptions.foam == 1)
    {
        NSLog(@"8");
    }
    if(estimate.dataOptions.singlePVC == 1)
    {
        NSLog(@"9");
    }
    if(estimate.dataOptions.singleTPO == 1)
    {
        NSLog(@"10");
    }
    if(estimate.dataOptions.torch == 1)
    {
        NSLog(@"11");
    }
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    NSInteger rows;
    
    switch (section) {
            
        case SECTION_alumination:
            if(estimate.dataOptions.alumination == 0)
            {
                NSLog(@"Hiding section 1");
                rows = 0;
            }
            else
                rows = [super tableView:self.tableView numberOfRowsInSection:section];
            break;
        case SECTION_builtUpGIC:
            if(estimate.dataOptions.builtUpGIC == 0)
            {
                rows = 0;
            }
            else
                rows = [super tableView:self.tableView numberOfRowsInSection:section];
            break;
        case SECTION_builtUpGIS:
            if(estimate.dataOptions.builtUpGIS == 0)
            {
                 rows = 0;
            }
            else
                rows = [super tableView:self.tableView numberOfRowsInSection:section];
            break;
        case SECTION_builtUpGNC:
            if(estimate.dataOptions.builtUpGNC == 0)
            {
                 rows = 0;
            }
            else
                rows = [super tableView:self.tableView numberOfRowsInSection:section];
            break;
        case SECTION_builtUpGNS:
            if(estimate.dataOptions.builtUpGNS == 0)
            {
                 rows = 0;
            }
            else
                rows = [super tableView:self.tableView numberOfRowsInSection:section];
            break;
        case SECTION_coatings:
            if(estimate.dataOptions.coatings == 0)
            {
                 rows = 0;
            }
            else
                rows = [super tableView:self.tableView numberOfRowsInSection:section];
            break;
        case SECTION_duroLast:
            if(estimate.dataOptions.duroLast == 0)
            {
                rows = 0;
            }
            else
                rows = [super tableView:self.tableView numberOfRowsInSection:section];
            break;
        case SECTION_threePly:
            if(estimate.dataOptions.threePly == 0)
            {
                 rows = 0;
            }
            else
                rows = [super tableView:self.tableView numberOfRowsInSection:section];
            break;
        case SECTION_foam:
            if(estimate.dataOptions.foam == 0)
            {
                 rows = 0;
            }
            else
                rows = [super tableView:self.tableView numberOfRowsInSection:section];
            break;
        case SECTION_singlePVC:
            if(estimate.dataOptions.singlePVC == 0)
            {
                 rows = 0;
            }
            else
                rows = [super tableView:self.tableView numberOfRowsInSection:section];
            break;
        case SECTION_singleTPO:
            if(estimate.dataOptions.singleTPO == 0)
            {
                rows = 0;
            }
            else
                rows = [super tableView:self.tableView numberOfRowsInSection:section];
            break;
        case SECTION_torch:
            if(estimate.dataOptions.torch == 0)
            {
                 rows = 0;
            }
            else
                rows = [super tableView:self.tableView numberOfRowsInSection:section];
            break;
            
        default:
            rows = [super tableView:self.tableView numberOfRowsInSection:section];
            break;
    }
    
    return rows;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    
    NSString *sectionHeader;
    
    switch (section) {
            
        case SECTION_alumination:
            if(estimate.dataOptions.alumination == 0)
            {
                NSLog(@"removing header section 1");
                sectionHeader = nil;
            }
            else
                sectionHeader = [super tableView:self.tableView titleForHeaderInSection:section];
            break;
        case SECTION_builtUpGIC:
            if(estimate.dataOptions.builtUpGIC == 0)
            {
                sectionHeader = nil;
            }
            else
                sectionHeader = [super tableView:self.tableView titleForHeaderInSection:section];
            break;
        case SECTION_builtUpGIS:
            if(estimate.dataOptions.builtUpGIS == 0)
            {
                sectionHeader = nil;
            }
            else
                sectionHeader = [super tableView:self.tableView titleForHeaderInSection:section];
            break;
        case SECTION_builtUpGNC:
            if(estimate.dataOptions.builtUpGNC == 0)
            {
                sectionHeader = nil;
            }
            else
                sectionHeader = [super tableView:self.tableView titleForHeaderInSection:section];
            break;
        case SECTION_builtUpGNS:
            if(estimate.dataOptions.builtUpGNS == 0)
            {
                sectionHeader = nil;
            }
            else
                sectionHeader = [super tableView:self.tableView titleForHeaderInSection:section];
            break;
        case SECTION_coatings:
            if(estimate.dataOptions.coatings == 0)
            {
                sectionHeader = nil;
            }
            else
                sectionHeader = [super tableView:self.tableView titleForHeaderInSection:section];
            break;
        case SECTION_duroLast:
            if(estimate.dataOptions.duroLast == 0)
            {
                sectionHeader = nil;
            }
            else
                sectionHeader = [super tableView:self.tableView titleForHeaderInSection:section];
            break;
        case SECTION_threePly:
            if(estimate.dataOptions.threePly == 0)
            {
                sectionHeader = nil;
            }
            else
                sectionHeader = [super tableView:self.tableView titleForHeaderInSection:section];
            break;
        case SECTION_foam:
            if(estimate.dataOptions.foam == 0)
            {
                sectionHeader = nil;
            }
            else
                sectionHeader = [super tableView:self.tableView titleForHeaderInSection:section];
            break;
        case SECTION_singlePVC:
            if(estimate.dataOptions.singlePVC == 0)
            {
                sectionHeader = nil;
            }
            else
                sectionHeader = [super tableView:self.tableView titleForHeaderInSection:section];
            break;
        case SECTION_singleTPO:
            if(estimate.dataOptions.singleTPO == 0)
            {
                sectionHeader = nil;
            }
            else
                sectionHeader = [super tableView:self.tableView titleForHeaderInSection:section];
            break;
        case SECTION_torch:
            if(estimate.dataOptions.torch == 0)
            {
                sectionHeader = nil;
            }
            else
                sectionHeader = [super tableView:self.tableView titleForHeaderInSection:section];
            break;
            
        default:
            sectionHeader = [super tableView:self.tableView titleForHeaderInSection:section];
            break;
    }
    return sectionHeader;
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    
    CGFloat headerHeight;
    
    switch (section) {
            
        case SECTION_alumination:
            if(estimate.dataOptions.alumination == 0)
            {
                NSLog(@"setting height 1");
                headerHeight = 1;
            }
            else
                headerHeight = [super tableView:self.tableView heightForHeaderInSection:section];
            break;
        case SECTION_builtUpGIC:
            if(estimate.dataOptions.builtUpGIC == 0)
            {
                headerHeight = 1;
            }
            else
                headerHeight = [super tableView:self.tableView heightForHeaderInSection:section];
            break;
        case SECTION_builtUpGIS:
            if(estimate.dataOptions.builtUpGIS == 0)
            {
                headerHeight = 1;
            }
            else
                headerHeight = [super tableView:self.tableView heightForHeaderInSection:section];
            break;
        case SECTION_builtUpGNC:
            if(estimate.dataOptions.builtUpGNC == 0)
            {
                headerHeight = 1;
            }
            else
                headerHeight = [super tableView:self.tableView heightForHeaderInSection:section];
            break;
        case SECTION_builtUpGNS:
            if(estimate.dataOptions.builtUpGNS == 0)
            {
                headerHeight = 1;
            }
            else
                headerHeight = [super tableView:self.tableView heightForHeaderInSection:section];
            break;
        case SECTION_coatings:
            if(estimate.dataOptions.coatings == 0)
            {
                headerHeight = 1;
            }
            else
                headerHeight = [super tableView:self.tableView heightForHeaderInSection:section];
            break;
        case SECTION_duroLast:
            if(estimate.dataOptions.duroLast == 0)
            {
                headerHeight = 1;
            }
            else
                headerHeight = [super tableView:self.tableView heightForHeaderInSection:section];
            break;
        case SECTION_threePly:
            if(estimate.dataOptions.threePly == 0)
            {
                headerHeight = 1;
            }
            else
                headerHeight = [super tableView:self.tableView heightForHeaderInSection:section];
            break;
        case SECTION_foam:
            if(estimate.dataOptions.foam == 0)
            {
                headerHeight = 1;
            }
            else
                headerHeight = [super tableView:self.tableView heightForHeaderInSection:section];
            break;
        case SECTION_singlePVC:
            if(estimate.dataOptions.singlePVC == 0)
            {
                headerHeight = 1;
            }
            else
                headerHeight = [super tableView:self.tableView heightForHeaderInSection:section];
            break;
        case SECTION_singleTPO:
            if(estimate.dataOptions.singleTPO == 0)
            {
                headerHeight = 1;
            }
            else
                headerHeight = [super tableView:self.tableView heightForHeaderInSection:section];
            break;
        case SECTION_torch:
            if(estimate.dataOptions.torch == 0)
            {
                headerHeight = 1;
            }
            else
                headerHeight = [super tableView:self.tableView heightForHeaderInSection:section];
            break;
            
        default:
            headerHeight = [super tableView:self.tableView heightForHeaderInSection:section];
            break;
    }
    return headerHeight;
}

-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    CGFloat footerHeight;
    
    switch (section) {
            
        case SECTION_alumination:
            if(estimate.dataOptions.alumination == 0)
            {
                NSLog(@"setting height 1");
                footerHeight = 1;
            }
            else
                footerHeight = [super tableView:self.tableView heightForFooterInSection:section];
            break;
        case SECTION_builtUpGIC:
            if(estimate.dataOptions.builtUpGIC == 0)
            {
                footerHeight = 1;
            }
            else
                footerHeight = [super tableView:self.tableView heightForFooterInSection:section];
            break;
        case SECTION_builtUpGIS:
            if(estimate.dataOptions.builtUpGIS == 0)
            {
                footerHeight = 1;
            }
            else
                footerHeight = [super tableView:self.tableView heightForFooterInSection:section];
            break;
        case SECTION_builtUpGNC:
            if(estimate.dataOptions.builtUpGNC == 0)
            {
                footerHeight = 1;
            }
            else
                footerHeight = [super tableView:self.tableView heightForFooterInSection:section];
            break;
        case SECTION_builtUpGNS:
            if(estimate.dataOptions.builtUpGNS == 0)
            {
                footerHeight = 1;
            }
            else
                footerHeight = [super tableView:self.tableView heightForFooterInSection:section];
            break;
        case SECTION_coatings:
            if(estimate.dataOptions.coatings == 0)
            {
                footerHeight = 1;
            }
            else
                footerHeight = [super tableView:self.tableView heightForFooterInSection:section];
            break;
        case SECTION_duroLast:
            if(estimate.dataOptions.duroLast == 0)
            {
                footerHeight = 1;
            }
            else
                footerHeight = [super tableView:self.tableView heightForFooterInSection:section];
            break;
        case SECTION_threePly:
            if(estimate.dataOptions.threePly == 0)
            {
                footerHeight = 1;
            }
            else
                footerHeight = [super tableView:self.tableView heightForFooterInSection:section];
            break;
        case SECTION_foam:
            if(estimate.dataOptions.foam == 0)
            {
                footerHeight = 1;
            }
            else
                footerHeight = [super tableView:self.tableView heightForFooterInSection:section];
            break;
        case SECTION_singlePVC:
            if(estimate.dataOptions.singlePVC == 0)
            {
                footerHeight = 1;
            }
            else
                footerHeight = [super tableView:self.tableView heightForFooterInSection:section];
            break;
        case SECTION_singleTPO:
            if(estimate.dataOptions.singleTPO == 0)
            {
                footerHeight = 1;
            }
            else
                footerHeight = [super tableView:self.tableView heightForFooterInSection:section];
            break;
        case SECTION_torch:
            if(estimate.dataOptions.torch == 0)
            {
                footerHeight = 1;
            }
            else
                footerHeight = [super tableView:self.tableView heightForFooterInSection:section];
            break;
            
        default:
            footerHeight = [super tableView:self.tableView heightForFooterInSection:section];
            break;
    }
    return footerHeight;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    UITableViewCell *cell = [super tableView:tableView cellForRowAtIndexPath:indexPath];
        
    NSUInteger section = [indexPath section];
    NSUInteger row = [indexPath row];
    
    NSLog(@"Section: %lu", (unsigned long)section);
    NSLog(@"Row: %lu",(unsigned long) row);
    
    switch (section) {

        case SECTION_alumination:
             if(estimate.dataOptions.alumination == 0)
             {
                 NSLog(@"Hiding section 1");
                 cell.hidden =YES;
             }
            break;
        case SECTION_builtUpGIC:
            if(estimate.dataOptions.builtUpGIC == 0)
            {
                cell.hidden =YES;
            }
            break;
        case SECTION_builtUpGIS:
            if(estimate.dataOptions.builtUpGIS == 0)
            {
                cell.hidden =YES;
            }
            break;
        case SECTION_builtUpGNC:
            if(estimate.dataOptions.builtUpGNC == 0)
            {
                cell.hidden =YES;
            }
            break;
        case SECTION_builtUpGNS:
            if(estimate.dataOptions.builtUpGNS == 0)
            {
                cell.hidden =YES;
            }
            break;
        case SECTION_coatings:
            if(estimate.dataOptions.coatings == 0)
            {
                cell.hidden =YES;
            }
            break;
        case SECTION_duroLast:
            if(estimate.dataOptions.duroLast == 0)
            {
                cell.hidden =YES;
            }
            break;
        case SECTION_threePly:
            if(estimate.dataOptions.threePly == 0)
            {
                cell.hidden =YES;
            }
            break;
        case SECTION_foam:
            if(estimate.dataOptions.foam == 0)
            {
                cell.hidden =YES;
            }
            break;
        case SECTION_singlePVC:
            if(estimate.dataOptions.singlePVC == 0)
            {
                cell.hidden =YES;
            }
            break;
        case SECTION_singleTPO:
            if(estimate.dataOptions.singleTPO == 0)
            {
                cell.hidden =YES;
            }
            break;
        case SECTION_torch:
            if(estimate.dataOptions.torch == 0)
            {
                cell.hidden =YES;
            }
            break;
            
        default:
            break;
    }
    
    return cell;
    
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
//    // Return the number of sections.
//    return 0;
//}
//
//- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
//{
//#warning Incomplete method implementation.
//    // Return the number of rows in the section.
//    return 0;
//}
//
//- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    static NSString *CellIdentifier = @"Cell";
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
//    
//    // Configure the cell...
//    
//    return cell;
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

//- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
//{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
//}
-(BOOL)textFieldShouldReturn:(UITextField*)textField{
    
    [textField resignFirstResponder];
    return YES;
}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}
//Total rows in our component
-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    
    NSInteger rowCount;
    switch (pickerView.tag) {
        case PICKER_CITY:
            rowCount = [cityOptions count];
            break;
        case PICKER_DECKTYPE:
            rowCount = [deckTypeArray count];
            break;
        default:
            rowCount = 0;
            break;
    }
    
    return rowCount;
}

//Display each row's data
-(NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    NSString *rowTitle;
    switch (pickerView.tag) {
        case PICKER_CITY:
            rowTitle = [cityOptions objectAtIndex:row];
            break;
        case PICKER_DECKTYPE:
            rowTitle = [deckTypeArray objectAtIndex:row];
            break;
        default:
            rowTitle = @"unknown";
            break;
    }
    return rowTitle;
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    
    switch (pickerView.tag) {
        case PICKER_CITY:
            city.text = (NSString*)[cityOptions objectAtIndex:row];
            break;
        case PICKER_DECKTYPE:
            deckType.text = (NSString*)[deckTypeArray objectAtIndex:row];
            break;
            
        default:
            break;
    }
    
}

-(IBAction)city:(id)sender{
    NSLog(@"Setting up picker");
    cityOptions = [[NSMutableArray
                    alloc]initWithObjects:@"Apache Junction, Maricopa County", @"Apache Junction, Pinal County", @"Arlington", @"Avondale", @"Benson", @"Bisbee", @"Black Canyon City" @"Buckeye", @"Bullhead City", @"Camp Verde", @"Carefree", @"Casa Grande", @"Cave Creek", @"Chandler", @"Chino Valley", @"Clarkdale", @"Claypool", @"Clifton", @"Colorado City", @"Coolidge", @"Cottonwood", @"Desert Hills", @"Dewey-Humboldt", @"Douglas", @"Duncan", @"Eagar", @"El Mirage", @"Eloy", @"Flagstaff", @"Florence", @"Fountain Hills", @"Fredownia", @"Gila Bend", @"Gilbert", @"Glendale", @"Globe", @"Gold Canyon", @"Goodyear", @"Guadalupe", @"Hayden", @"Heber", @"Higley", @"Holbrook", @"Huachuca City", @"Jerome", @"Kearney", @"Kingman, Mohave County", @"Lake Havasu", @"Litchfield Park", @"Mammoth", @"Marana", @"Maricopa", @"Mayer", @"Mesa", @"Miami", @"Navajo Nation", @"Nogales", @"Oro Valley", @"Page", @"Paradise Valley", @"Parker", @"Patagonia", @"Payson", @"Peoria", @"Phoenix", @"Pima", @"Pinetop/Lake", @"Prescott", @"Prescott Valley", @"Quartzsite", @"Queen Creek, Maricopa County", @"Queen Creek, Pinal County", @"Rio Rico", @"Rio Verde", @"Safford", @"Sahuarita", @"San Luis", @"San Manuel", @"Scottsdale", @"Sedona, Coconino County", @"Sedona, Yavapai County", @"Seligman", @"Show Low", @"Sierra Vista", @"Snowflake", @"Somerton", @"South Tucson", @"Springerville", @"St. Johns", @"Stanfield", @"Star Valley", @"Sun City", @"Sun Lakes", @"Superior", @"Surprise", @"Taylor", @"Tempe", @"Thatcher", @"Tolleson", @"Tombstone", @"Tonapah", @"Tuba City", @"Tucson", @"Waddell", @"Welton", @"Wickenburg", @"Wilcox", @"Williams", @"Winkel, Gila County", @"Winkel, Pinal County", @"Winslow", @"Wittman", @"Youngtown", @"Yuma", nil];
    
//    //add stuff
//    [cityOptions addObject:@"NO TEAR OFF"];
//    [cityOptions addObject:@"1 Layer"];
//    [cityOptions addObject:@"1 Layer + Insulation under 2''"];
//    [cityOptions addObject:@"1 Layer + Insulation 2+"];
//    [cityOptions addObject:@"2 Layers"];
//    [cityOptions addObject:@"2 Layers with Gravel"];
//    [cityOptions addObject:@"Foam (Direct to Plywood)"];
//    [cityOptions addObject:@"Shingles"];
//    [cityOptions addObject:@"Tile"];
    
    pickerView=[[UIPickerView alloc]init];
    
    //set delegate and datasource
    [pickerView setDelegate:self];
    [pickerView setDataSource:self];
    
    pickerView.tag = PICKER_CITY;
    
    //set the selection line
    pickerView.showsSelectionIndicator =YES;
    
    //preselect the thrird option
    [pickerView selectRow:2 inComponent:0 animated:YES];
    
    city.inputView = pickerView;
    pickerView.hidden = NO;
    
    UIToolbar *release = [[UIToolbar alloc] initWithFrame:CGRectMake(0, 0, 320, 44)];
    UIBarButtonItem *done = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action: @selector(dismissPicker:)];
    
    
    [release setItems:[NSArray arrayWithObject:done]animated:NO];
    city.inputAccessoryView = release;

}

- (IBAction)deckTypeEdit:(id)sender {
    NSLog(@"Setting up picker");
    deckTypeArray = [[NSMutableArray alloc]initWithObjects:@"Plywood",@"Metal",@"Concrete",nil];
    
    pickerView=[[UIPickerView alloc]init];
    
    //set delegate and datasource
    [pickerView setDelegate:self];
    [pickerView setDataSource:self];
    
    pickerView.tag = PICKER_DECKTYPE;
    
    //set the selection line
    pickerView.showsSelectionIndicator =YES;
    
    //preselect the thrird option
    [pickerView selectRow:1 inComponent:0 animated:YES];
    
    deckType.inputView = pickerView;
    pickerView.hidden = NO;
    
    UIToolbar *release = [[UIToolbar alloc] initWithFrame:CGRectMake(0, 0, 320, 44)];
    UIBarButtonItem *done = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action: @selector(dismissPicker:)];
    
    
    [release setItems:[NSArray arrayWithObject:done]animated:NO];
    deckType.inputAccessoryView = release;
                   
    
}

-(IBAction)dismissPicker:(id)sender{
   // NSLog(@"Sender: %@", self.pickerView);
    [self.view endEditing:YES];
}

-(IBAction)decimalKeyBoard:(id)sender{
    NSLog(@"Setting up decimalKeyboard");
    
    UIToolbar *release = [[UIToolbar alloc] initWithFrame:CGRectMake(0, 0, 320, 44)];
    UIBarButtonItem *done = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action: @selector(dismissDecimalpad:)];
}

-(IBAction)dismissDecimalpad:(id)sender{
    [self.view endEditing:YES];
}

@end
