//
//  BuiltUpPlyGIC.h
//  Estimate
//
//  Created by Daniel Hahn on 9/11/13.
//  Copyright (c) 2013 StarkWeather. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BuiltUpPlyGIC : NSObject

@property (strong) NSString *tearOff;
@property (strong) NSString *roofComplexity;
@property (strong) NSString *safetyReqs;
@property (strong) NSString *roofTypeRec;
@property (strong) NSString *plySheet;
@property (strong) NSString *manWarranty;
@property (strong) NSString *baseInsuApply;
@property (assign) float baseThickness;
@property (strong) NSString *secondInsuApply;
@property (assign) float secondThick;
@property (strong) NSString *recoverApply;
@property (assign) float recoverThickness;
@property (assign) float galCoatingSQStot;
@property (strong) NSString *coatingManu;
@property (assign) int smallChemCurb;
@property (assign) int largeChemCurb;

@end
