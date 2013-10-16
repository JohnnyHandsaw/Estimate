//
//  Alumination.h
//  Estimate
//
//  Created by Daniel Hahn on 9/11/13.
//  Copyright (c) 2013 StarkWeather. All rights reserved.
//

#import <Foundation/Foundation.h>
#define ktearOff @ "Tear Off Includes"
#define kroofComplexity @ "Roof Complexity"
#define ksafetyReqs @ "Safety Requirements"
#define kseamsFeet @ "Linear Feet Seems"
#define ksideLapsRepair @ "Side Laps Needing Repair"
#define kmanualFastners @ "Manual Fastners"


@interface Alumination : NSObject

@property (strong) NSString *tearOff;
@property (strong) NSString *roofComplexity;
@property (strong) NSString *safetyReqs;
@property (assign) float seamsFeet;
@property (assign) int sideLapsRepair;
@property (assign) int manualFasteners;



@end
