//
//  ThreePlyCold.h
//  Estimate
//
//  Created by Daniel Hahn on 9/11/13.
//  Copyright (c) 2013 StarkWeather. All rights reserved.
//

#import <Foundation/Foundation.h>

#define kbaseFlashSQS @ "Base Flash"
#define kacUnits @ "AC Units"
#define kpitchPans @ "Pitch Pans"
#define kroofJacks @ "Roof Jacks"
#define kdrainScuppers @ "Drain Scuppers"
@interface ThreePlyCold : NSObject

@property (assign) float baseFlashSQS;
@property (assign) int acUnits;
@property (assign) int pitchPans;
@property (assign) int roofJacks;
@property (assign) int drainScuppers;

@end
