//
//  OptionsTableViewController.h
//  Estimate
//
//  Created by Daniel Hahn on 9/4/13.
//  Copyright (c) 2013 StarkWeather. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface OptionsTableViewController : UITableViewController
{
    NSMutableArray *options;
    //NSNumber *alumination;
//    NSNumber *builtUpGIC;
//    NSNumber *builtUpGIS;
//    NSNumber *builtUpGNC;
//    NSNumber *builtUpGNS;
//    NSNumber *coatings;
//    NSNumber *duroLast;
//    NSNumber *threePly;
//    NSNumber *foam;
//    NSNumber *singlePVC;
//    NSNumber *singleTPO;
//    NSNumber *torch;
}

@property (nonatomic) NSUInteger alumination;
@property (nonatomic) NSUInteger builtUpGIC;
@property (nonatomic) NSUInteger builtUpGIS;
@property (nonatomic) NSUInteger builtUpGNC;
@property (nonatomic) NSUInteger builtUpGNS;
@property (nonatomic) NSUInteger coatings;
@property (nonatomic) NSUInteger duroLast;
@property (nonatomic) NSUInteger threePly;
@property (nonatomic) NSUInteger foam;
@property (nonatomic) NSUInteger singlePVC;
@property (nonatomic) NSUInteger singleTPO;
@property (nonatomic) NSUInteger torch;
@property (nonatomic) NSMutableArray *options;





@end
