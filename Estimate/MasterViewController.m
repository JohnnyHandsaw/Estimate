//
//  MasterViewController.m
//  Estimate
//
//  Created by Daniel Hahn on 9/3/13.
//  Copyright (c) 2013 StarkWeather. All rights reserved.
//
#import "AppDelegate.h"
#import "MasterViewController.h"
#import "OptionsTableViewController.h"
#import "Estimate.h"
#import "Proposal.h"
#import "ProposalDatabase.h"


@class Estimate;

@interface MasterViewController () {
    //NSMutableArray *_proposals;
    //AppDelegate *delegate;
}
@end

@implementation MasterViewController

@synthesize proposals = _proposals;
@synthesize optionsTableViewController = _optionsTableViewController;

//- (void)awakeFromNib
//{
//    [super awakeFromNib];
//}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"Stark Weather";
	// Do any additional setup after loading the view, typically from a nib.
    self.navigationItem.leftBarButtonItem = self.editButtonItem;
    
    //UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(newProject:)];
    //self.navigationItem.rightBarButtonItem = addButton;
    
    
    AppDelegate *delegate = (AppDelegate*)[[UIApplication sharedApplication]delegate];
    
    delegate.loadedproposals = [ProposalDatabase loadProposals];
    //[delegate didFinishLaunchingWithOptions];
    
    _proposals = delegate.loadedproposals;

}
//-(void)setProposals:(NSMutableArray *)proposals{
//    proposals = proposals;
//}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    [self.tableView reloadData];
}
- (void)newProject:(id)sender{
   [self performSegueWithIdentifier:@"mySegue" sender:self];  
}
//- (void)insertNewObject:(id)sender
//{
//    if (!_objects) {
//        _objects = [[NSMutableArray alloc] init];
//    }
//    [_objects insertObject:[NSDate date] atIndex:0];
//    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
//    [self.tableView insertRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
//}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    //_proposals = loadedProposals;
        NSLog(@"proposal count %lu", (unsigned long)_proposals.count);
    return _proposals.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    Proposal *doc = [_proposals objectAtIndex:indexPath.row];
    NSLog(@"proposal %@", doc);
    NSLog(@"proposal %@", doc.data.title);
    cell.textLabel.text = doc.data.title;
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;

    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        Proposal *doc = [_proposals objectAtIndex:indexPath.row];
        [doc deleteDoc];
        [_proposals removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
    }
}

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

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{

    if ([[segue identifier] isEqualToString:@"mySegue"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        Proposal *proposal = _proposals[indexPath.row];
        [[segue destinationViewController] setEstimate:proposal.data];
    }
    if ([[segue identifier] isEqualToString:@"newSegue"]){
        Estimate *estimate = [[Estimate alloc]init];
        NSLog(@"create estimate %@", estimate);
        [[segue destinationViewController] setEstimate:estimate];
    }
}



@end
