//
//  SinglePlyTPO.h
//  Estimate
//
//  Created by Daniel Hahn on 9/11/13.
//  Copyright (c) 2013 StarkWeather. All rights reserved.
//

#import <Foundation/Foundation.h>
#define ktearOff @ "Tear Off"
#define kroofComplexity @ "Roof Complex"
#define ksafetyReqs @ "Safety Reqs"
#define kroofTypeRec @ "Roof Type Rec"
#define kmanWarranty @ "Manufacturer Warranty"
#define kmillSheets @ "Mill Sheets"
#define ksheetManu @ "Sheet Manu"
#define kslipSheetType @ "kslipSheetType"
#define kbaseInsuApply @ "kbaseInsuApply"
#define kbaseThickness @ "kbaseThickness"
#define ksecondInsuApply @ "ksecondInsuApply"
#define ksecondThick @ "ksecondThick"
#define krecoverApply @ "krecoverApply"
#define krecoverThickness @ "krecoverThickness"
#define kseamFastenerInchCenter @ "kseamFastenerInchCenter"
#define kcrickets @ "kcrickets"
#define kperimeterSheets @ "kperimeterSheets"
#define kpipeBoots @  "kpipeBoots"
#define kwalkPads @ "kwalkPads"

@interface SinglePlyTPO : NSObject

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
