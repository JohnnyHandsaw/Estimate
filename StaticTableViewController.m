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
#import "Proposal.h"

@interface StaticTableViewController ()

@end

@implementation StaticTableViewController

@synthesize estimate;
@synthesize doc;

@synthesize optionsArray;
@synthesize pickerView;
@synthesize inputView;
//@synthesize standardKeyBoard;
@synthesize cityOptions;
@synthesize deckTypeArray;
//@synthesize release;
@synthesize done;

@synthesize city;
@synthesize projectName;
@synthesize deckType;
@synthesize roofSQS;
@synthesize baseFlash;
@synthesize wallsFeet;
@synthesize curbFeet;
@synthesize edgeFeet;
@synthesize copingFeet;
@synthesize curbUnit;
@synthesize slopeUnit;
@synthesize leadJacks;
@synthesize sealantPans;
@synthesize drains;
@synthesize pipes;
@synthesize cladScuppers;
@synthesize scuppers;
@synthesize tTopVents;
@synthesize corners;
@synthesize skylights;
@synthesize skylightsReplace;

@synthesize tearOff;
@synthesize roofComplex;
@synthesize safetyReqs;
@synthesize alum_seemsFeet;
@synthesize alum_sideLaps;
@synthesize alum_manualFasteners;

@synthesize gic_baseapply;
@synthesize gic_ThickBase;

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
#define COMMON_JOBNAME 1000
#define PICKER_CITY 1000
#define PICKER_DECKTYPE 1001
#define COMMON_ROOFSQS 1001
#define COMMON_baseFlash 1002
#define COMMON_wallsFeet 1003
#define COMMON_curbFeet 1004
#define COMMON_edgeFeet 1005
#define COMMON_copingFeet 1006
#define COMMON_curbUnit 1007
#define COMMON_slopeUnit 1008
#define COMMON_leadJacks 1009
#define COMMON_sealantPans 1010
#define COMMON_drains 1011
#define COMMON_pipes 1012
#define COMMON_cladScuppers 1013
#define COMMON_scuppers 1014
#define COMMON_tTopVents 1015
#define COMMON_corners 1016
#define COMMON_skylights 1017
#define COMMON_skylightsReplace 1018
#define ALUM_tearOff 1100
#define ALUM_roofComplexity 1101
#define ALUM_safetyReqs 1102
#define ALUM_seamsFeet 1103
#define ALUM_sideLapsRepair 1104
#define ALUM_manualFasteners 1105
#define GIC_ThickBase 1200
#define GIC_baseapply 1201


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
    UITapGestureRecognizer *tapRecognizer = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tap:)];
    [self.view addGestureRecognizer:tapRecognizer];
    
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

-(IBAction)city:(id)sender{
    NSLog(@"Setting up picker");
    cityOptions = [[NSMutableArray
                    alloc]initWithObjects:@"Apache Junction, Maricopa County", @"Apache Junction, Pinal County", @"Arlington", @"Avondale", @"Benson", @"Bisbee", @"Black Canyon City" @"Buckeye", @"Bullhead City", @"Camp Verde", @"Carefree", @"Casa Grande", @"Cave Creek", @"Chandler", @"Chino Valley", @"Clarkdale", @"Claypool", @"Clifton", @"Colorado City", @"Coolidge", @"Cottonwood", @"Desert Hills", @"Dewey-Humboldt", @"Douglas", @"Duncan", @"Eagar", @"El Mirage", @"Eloy", @"Flagstaff", @"Florence", @"Fountain Hills", @"Fredownia", @"Gila Bend", @"Gilbert", @"Glendale", @"Globe", @"Gold Canyon", @"Goodyear", @"Guadalupe", @"Hayden", @"Heber", @"Higley", @"Holbrook", @"Huachuca City", @"Jerome", @"Kearney", @"Kingman, Mohave County", @"Lake Havasu", @"Litchfield Park", @"Mammoth", @"Marana", @"Maricopa", @"Mayer", @"Mesa", @"Miami", @"Navajo Nation", @"Nogales", @"Oro Valley", @"Page", @"Paradise Valley", @"Parker", @"Patagonia", @"Payson", @"Peoria", @"Phoenix", @"Pima", @"Pinetop/Lake", @"Prescott", @"Prescott Valley", @"Quartzsite", @"Queen Creek, Maricopa County", @"Queen Creek, Pinal County", @"Rio Rico", @"Rio Verde", @"Safford", @"Sahuarita", @"San Luis", @"San Manuel", @"Scottsdale", @"Sedona, Coconino County", @"Sedona, Yavapai County", @"Seligman", @"Show Low", @"Sierra Vista", @"Snowflake", @"Somerton", @"South Tucson", @"Springerville", @"St. Johns", @"Stanfield", @"Star Valley", @"Sun City", @"Sun Lakes", @"Superior", @"Surprise", @"Taylor", @"Tempe", @"Thatcher", @"Tolleson", @"Tombstone", @"Tonapah", @"Tuba City", @"Tucson", @"Waddell", @"Welton", @"Wickenburg", @"Wilcox", @"Williams", @"Winkel, Gila County", @"Winkel, Pinal County", @"Winslow", @"Wittman", @"Youngtown", @"Yuma", nil];

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

- (IBAction)fieldChange:(id)sender {
    NSLog(@"tag %ld", (long)[sender tag]);
    
    switch ([sender tag]) {
        case COMMON_JOBNAME:
            self.estimate.dataCommon.jobName= self.projectName.text;
            NSLog(@"common change %@",self.estimate.dataCommon.jobName);
            break;
        case COMMON_ROOFSQS:
            self.estimate.dataCommon.roofSQS = self.roofSQS.text.floatValue;
            NSLog(@"common %f",self.estimate.dataCommon.roofSQS);
            NSLog(@"common %@",self.roofSQS.text);
            break;
        case COMMON_baseFlash:
            self.estimate.dataCommon.baseFlash = self.baseFlash.text.floatValue;
            NSLog(@"common %f",self.estimate.dataCommon.baseFlash);
            NSLog(@"common %@",self.baseFlash.text);
            break;
        case COMMON_wallsFeet:
            self.estimate.dataCommon.wallsFeet = self.wallsFeet.text.floatValue;
            NSLog(@"common %f",self.estimate.dataCommon.wallsFeet);
            NSLog(@"common %@",self.wallsFeet.text);
            break;
        case COMMON_curbFeet:
            self.estimate.dataCommon.wallsFeet = self.curbFeet.text.floatValue;
            NSLog(@"common %f",self.estimate.dataCommon.curbFeet);
            NSLog(@"common %@",self.curbFeet.text);
            break;
        case COMMON_edgeFeet:
            self.estimate.dataCommon.edgeFeet = self.edgeFeet.text.floatValue;
            NSLog(@"common %f",self.estimate.dataCommon.edgeFeet);
            NSLog(@"common %@",self.edgeFeet.text);
            break;
        case COMMON_copingFeet:
            self.estimate.dataCommon.copingFeet = self.copingFeet.text.floatValue;
            NSLog(@"common %f",self.estimate.dataCommon.copingFeet);
            NSLog(@"common %@",self.copingFeet.text);
            break;
        case COMMON_curbUnit:
            self.estimate.dataCommon.curbUnit = self.curbUnit.text.integerValue;
            NSLog(@"common %d",self.estimate.dataCommon.curbUnit);
            NSLog(@"common %@",self.curbUnit.text);
            break;
        case COMMON_slopeUnit:
            self.estimate.dataCommon.wallsFeet = self.slopeUnit.text.integerValue;
            NSLog(@"common %d",self.estimate.dataCommon.slopeUnit);
            NSLog(@"common %@",self.slopeUnit.text);
            break;
        case COMMON_leadJacks:
            self.estimate.dataCommon.leadJacks = self.wallsFeet.text.integerValue;
            NSLog(@"common %d",self.estimate.dataCommon.leadJacks);
            NSLog(@"common %@",self.leadJacks.text);
            break;
        case COMMON_sealantPans:
            self.estimate.dataCommon.sealantPans = self.sealantPans.text.integerValue;
            NSLog(@"common %d",self.estimate.dataCommon.sealantPans);
            NSLog(@"common %@",self.sealantPans.text);
            break;
        case COMMON_drains:
            self.estimate.dataCommon.drains = self.drains.text.integerValue;
            NSLog(@"common %d",self.estimate.dataCommon.drains);
            NSLog(@"common %@",self.drains.text);
            break;
        case COMMON_pipes:
            self.estimate.dataCommon.pipes = self.pipes.text.integerValue;
            NSLog(@"common %d",self.estimate.dataCommon.pipes);
            NSLog(@"common %@",self.pipes.text);
            break;
        case COMMON_cladScuppers:
            self.estimate.dataCommon.cladScuppers = self.cladScuppers.text.integerValue;
            NSLog(@"common %d",self.estimate.dataCommon.cladScuppers);
            NSLog(@"common %@",self.cladScuppers.text);
            break;
        case COMMON_scuppers:
            self.estimate.dataCommon.scuppers = self.scuppers.text.integerValue;
            NSLog(@"common %d",self.estimate.dataCommon.scuppers);
            NSLog(@"common %@",self.scuppers.text);
            break;
        case COMMON_tTopVents:
            self.estimate.dataCommon.tTopVents = self.tTopVents.text.integerValue;
            NSLog(@"common %d",self.estimate.dataCommon.tTopVents);
            NSLog(@"common %@",self.tTopVents.text);
            break;
        case COMMON_corners:
            self.estimate.dataCommon.corners = self.wallsFeet.text.integerValue;
            NSLog(@"common %d",self.estimate.dataCommon.corners);
            NSLog(@"common %@",self.corners.text);
            break;
        case COMMON_skylights:
            self.estimate.dataCommon.skylights = self.skylights.text.integerValue;
            NSLog(@"common %d",self.estimate.dataCommon.skylights);
            NSLog(@"common %@",self.skylights.text);
            break;
        case COMMON_skylightsReplace:
            self.estimate.dataCommon.skylightsReplace = self.skylightsReplace.text.integerValue;
            NSLog(@"common %d",self.estimate.dataCommon.skylightsReplace);
            NSLog(@"common %@",self.skylightsReplace.text);
            break;
        case ALUM_seamsFeet:
            self.estimate.dataAlumination.seamsFeet = self.alum_seemsFeet.text.floatValue;
            NSLog(@"common %f",self.estimate.dataAlumination.seamsFeet);
            NSLog(@"common %@",self.alum_seemsFeet.text);
            break;
        case ALUM_sideLapsRepair:
            self.estimate.dataAlumination.sideLapsRepair = self.alum_sideLaps.text.floatValue;
            NSLog(@"common %d",self.estimate.dataAlumination.sideLapsRepair);
            NSLog(@"common %@",self.alum_sideLaps.text);
            break;
        case ALUM_manualFasteners:
            self.estimate.dataAlumination.manualFasteners = self.alum_manualFasteners.text.floatValue;
            NSLog(@"common %d",self.estimate.dataAlumination.manualFasteners);
            NSLog(@"common %@",self.alum_manualFasteners.text);
            break;
        case GIC_ThickBase:
            self.estimate.dataBuiltUpPlyGIC.baseThickness = self.gic_ThickBase.text.floatValue;
            NSLog(@"common %f",self.estimate.dataBuiltUpPlyGIC.baseThickness);
            NSLog(@"common %@",self.gic_ThickBase.text);
            break;
        case GIC_baseapply:
            self.estimate.dataBuiltUpPlyGIC.baseInsuApply = self.gic_baseapply.text;
            NSLog(@"common %@",self.estimate.dataBuiltUpPlyGIC.baseInsuApply);
            NSLog(@"common %@",self.gic_baseapply.text);
            break;
    }
}


- (IBAction)tearOffEdit:(id)sender {
    deckTypeArray = [[NSMutableArray alloc]initWithObjects:@"NO TEAR OFF",@"1 layer",@"1 layer + insulation under 2''", @"1 layer + insulation 2+",@"2 layers",@"2 layers with Gravel",@"Foam (Direct to Plywood)",@"Shingles",@"Tile",nil];
    
    pickerView=[[UIPickerView alloc]init];
    
    //set delegate and datasource
    [pickerView setDelegate:self];
    [pickerView setDataSource:self];
    
    pickerView.tag = ALUM_tearOff;
    
    //set the selection line
    pickerView.showsSelectionIndicator =YES;
    
    //preselect the thrird option
    [pickerView selectRow:1 inComponent:0 animated:YES];
    
    tearOff.inputView = pickerView;
    pickerView.hidden = NO;
    
    UIToolbar *release = [[UIToolbar alloc] initWithFrame:CGRectMake(0, 0, 320, 44)];
    UIBarButtonItem *done = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action: @selector(dismissPicker:)];
    
    
    [release setItems:[NSArray arrayWithObject:done]animated:NO];
    tearOff.inputAccessoryView = release;
    
    
}

- (IBAction)roofComplexEdit:(id)sender {
    deckTypeArray = [[NSMutableArray alloc]initWithObjects:@"Easy",@"Moderate",@"Difficult",nil];
    
    pickerView=[[UIPickerView alloc]init];
    
    //set delegate and datasource
    [pickerView setDelegate:self];
    [pickerView setDataSource:self];
    
    pickerView.tag = ALUM_roofComplexity;
    
    //set the selection line
    pickerView.showsSelectionIndicator =YES;
    
    //preselect the thrird option
    [pickerView selectRow:1 inComponent:0 animated:YES];
    
    roofComplex.inputView = pickerView;
    pickerView.hidden = NO;
    
    UIToolbar *release = [[UIToolbar alloc] initWithFrame:CGRectMake(0, 0, 320, 44)];
    UIBarButtonItem *done = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action: @selector(dismissPicker:)];
    
    
    [release setItems:[NSArray arrayWithObject:done]animated:NO];
    roofComplex.inputAccessoryView = release;
    
    
}

- (IBAction)safetyReqsEdit:(id)sender {
    deckTypeArray = [[NSMutableArray alloc]initWithObjects:@"Easy",@"Moderate",@"Difficult",nil];
    
    pickerView=[[UIPickerView alloc]init];
    
    //set delegate and datasource
    [pickerView setDelegate:self];
    [pickerView setDataSource:self];
    
    pickerView.tag = ALUM_safetyReqs;
    
    //set the selection line
    pickerView.showsSelectionIndicator =YES;
    
    //preselect the thrird option
    [pickerView selectRow:1 inComponent:0 animated:YES];
    
    safetyReqs.inputView = pickerView;
    pickerView.hidden = NO;
    
    UIToolbar *release = [[UIToolbar alloc] initWithFrame:CGRectMake(0, 0, 320, 44)];
    UIBarButtonItem *done = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action: @selector(dismissPicker:)];
    
    
    [release setItems:[NSArray arrayWithObject:done]animated:NO];
    safetyReqs.inputAccessoryView = release;
    
    
}

- (IBAction)saveDoc:(id)sender {
     NSLog(@"doc %@", estimate.dataCommon);
    Proposal *newdoc = [[Proposal alloc]initWithTitle:self.title estimate:estimate];
    
    NSLog(@"doc %@", newdoc);
     NSLog(@"doc %@", newdoc.data.dataCommon.jobName);
    
    [newdoc saveData];
}

-(void)tap:(UIGestureRecognizer*)gr{
    [self.view endEditing:YES];
    
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
        case ALUM_safetyReqs:
            rowCount = [deckTypeArray count];
            break;
        case ALUM_roofComplexity:
            rowCount = [deckTypeArray count];
            break;
        case ALUM_tearOff:
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
        case ALUM_tearOff:
            rowTitle = [deckTypeArray objectAtIndex:row];
            break;
        case ALUM_safetyReqs:
            rowTitle = [deckTypeArray objectAtIndex:row];
            break;
        case ALUM_roofComplexity:
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
            estimate.dataCommon.city = city.text;
            break;
        case PICKER_DECKTYPE:
            deckType.text = (NSString*)[deckTypeArray objectAtIndex:row];
            estimate.dataCommon.deckType = deckType.text;
            break;
        case ALUM_tearOff:
            tearOff.text = (NSString*)[deckTypeArray objectAtIndex:row];
            estimate.dataAlumination.tearOff = tearOff.text;
            break;
        case ALUM_roofComplexity:
            roofComplex.text = (NSString*)[deckTypeArray objectAtIndex:row];
            estimate.dataAlumination.roofComplexity = roofComplex.text;
            break;
        case ALUM_safetyReqs:
            safetyReqs.text = (NSString*)[deckTypeArray objectAtIndex:row];
            estimate.dataAlumination.safetyReqs = safetyReqs.text;
            break;
        default:
            break;
    }
    
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField  {
    [textField resignFirstResponder];
    return NO;
}


@end
