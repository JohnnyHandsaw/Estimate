//
//  SinglePlyPVC.h
//  Estimate
//
//  Created by Daniel Hahn on 9/11/13.
//  Copyright (c) 2013 StarkWeather. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SinglePlyPVC : NSObject

@property (strong) NSString *tearOff;
@property (strong) NSString *roofComplexity;
@property (strong) NSString *safetyReqs;
@property (strong) NSString *roofTypeRec;
@property (strong) NSString *manWarranty;
@property (assign) int millSheets;
@property (strong) NSString *sheetManu;
@property (strong) NSString *slipSheetType;
@property (strong) NSString *baseInsuApply;
@property (assign) float baseThickness;
@property (strong) NSString *secondInsuApply;
@property (assign) float secondThick;
@property (strong) NSString *recoverApply;
@property (assign) float recoverThickness;
@property (assign) int seamFastenerInchCenter;
@property (strong) NSString *crickets;
@property (assign) int perimeterSheets;
@property (assign) int pipeBoots;
@property (assign) float walkPads;

@end
