//
//  Common.h
//  Estimate
//
//  Created by Daniel Hahn on 9/11/13.
//  Copyright (c) 2013 StarkWeather. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Common : NSObject

@property (strong) NSString *jobName;
@property (strong) NSString *city;
@property (strong) NSString *deckType;
@property (assign) float roofSQS;
@property (assign) float baseFlash;
@property (assign) float wallsFeet;
@property (assign) float curbFeet;
@property (assign) float edgeFeet;
@property (assign) float copingFeet;
@property (assign) int curbUnit;
@property (assign) int slopeUnit;
@property (assign) int leadJacks;
@property (assign) int sealantPans;
@property (assign) int drains;
@property (assign) int pipes;
@property (assign) int cladScuppers;
@property (assign) int scuppers;
@property (assign) int tTopVents;
@property (assign) int corners;
@property (assign) int skylights;
@property (assign) int skylightsReplace;


@end
