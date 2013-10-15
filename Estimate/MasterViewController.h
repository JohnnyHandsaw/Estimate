//
//  MasterViewController.h
//  Estimate
//
//  Created by Daniel Hahn on 9/3/13.
//  Copyright (c) 2013 StarkWeather. All rights reserved.
//

#import <UIKit/UIKit.h>
@class OptionsTableViewController;
NSMutableArray *loadedProposals;

@interface MasterViewController : UITableViewController{
    NSMutableArray *_proposals;
    OptionsTableViewController *_optionsTableViewController;
    //AppDelegate *appDelegate;
    
}

@property (retain) NSMutableArray *proposals;
@property (retain) OptionsTableViewController *optionsTableViewController;


@end
