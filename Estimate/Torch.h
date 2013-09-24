//
//  Torch.h
//  Estimate
//
//  Created by Daniel Hahn on 9/11/13.
//  Copyright (c) 2013 StarkWeather. All rights reserved.
//

#import <Foundation/Foundation.h>

#define kbaseFlashSQS @ "Number of Base Flash SQS"
#define kacUnits @ "Number of A/C Units"
#define kpitchPans @ "Number of Pitch Pans"
#define kroofJacks @ "Number of Roof Jacks"
#define kdrainLeads @ "Foam Depth"

@interface Torch : NSObject

@property (assign) float baseFlashSQS;
@property (assign) int acUnits;
@property (assign) int pitchPans;
@property (assign) int roofJacks;
@property (assign) int drainLeads;


@end
