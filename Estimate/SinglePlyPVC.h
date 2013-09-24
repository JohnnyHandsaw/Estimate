//
//  SinglePlyPVC.h
//  Estimate
//
//  Created by Daniel Hahn on 9/11/13.
//  Copyright (c) 2013 StarkWeather. All rights reserved.
//

#import <Foundation/Foundation.h>

#define ktearOff @ "Tear Off Includes"
#define kroofComplexity @ "Roof Complexity"
#define ksafetyReqs @ "Safety Requirements"
#define kroofTypeRec @ "Type of Roof Recommended"
#define kmanWarranty @ "Manufacturer's Warranty Offered"
#define kmillSheets @ "Mill of Sheet"
#define ksheetManu @ "Sheet Manufacturer"
#define kslipSheetType @ "Slip Sheet Type"
#define kbaseInsApply @ "How Will Base Insulation Be Applied?"
#define kbaseThickness @ "Thickness of Base Layer Insulation(inches)"
#define ksecondInsApply @ "How Will 2nd Insulation be Applied?"
#define ksecondThick @ "Thickness of 2nd Layer Insulation(inches)"
#define krecoverApply @ "How Will Recover Board Be Applied?"
#define krecoverThickness @ "Thickness of Recover Board(inches)"
#define kseamfastnerInchCenter @ "Seam Fastner Inches on Center"
#define kcrickets @ "Crickets?"
#define kperimeterSheets @ "Number of Parimeter Sheets"
#define kpipeBoots @ "Number of Pipe Boots"
#define kwalkPads @ "Number Feet of Walk Pads"


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
