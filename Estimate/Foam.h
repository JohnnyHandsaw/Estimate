//
//  Foam.h
//  Estimate
//
//  Created by Daniel Hahn on 9/11/13.
//  Copyright (c) 2013 StarkWeather. All rights reserved.
//

#import <Foundation/Foundation.h>
#define kbaseFlashSQS @ "Base Flash"
#define kwallHeight@ "Wall Height"
#define kpipes @ "Pipes"
#define kacUnits @ "AC Units"
#define kfoamDepth @ "Foam Depth"

@interface Foam : NSObject

@property (assign) float baseFlashSQS;
@property (assign) float wallHeight;
@property (assign) int pipes;
@property (assign) int acUnits;
@property (assign) float foamDepth;

@end
