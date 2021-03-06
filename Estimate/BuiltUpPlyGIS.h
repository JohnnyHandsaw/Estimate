//
//  BuiltUpPlyGIS.h
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
#define kplysheet @ "Ply Sheet"
#define kmanWarranty @ "Manufacturer's Warranty Offered"
#define kbaseInsApply @ "How Will Base Insulation Be Applied?"
#define kbaseThickness @ "Thickness of Base Layer Insulation(inches)"
#define ksecondInsApply @ "How Will 2nd Insulation be Applied?"
#define ksecondThick @ "Thickness of 2nd Layer Insulation(inches)"
#define krecoverApply @ "How Will Recover Board Be Applied?"
#define krecoverThickness @ "Thickness of Recover Board(inches)"
#define kgalAsphEmulsionSQS @ "Gallons of Asphalt Emulsion per SQS"
#define kgalCoatingSQStot @ "Gallons of Coating per SQS(Total)"
#define kcoatingManu @ "Coating Manufacturer"
#define ksmallChemCurb @ "Small Chemical Curbs"
#define klargeChemCurb @ "Large Chemical Curbs"
#define kfastnersSQS @ "Fastners per SQS" 

@interface BuiltUpPlyGIS : NSObject

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
@property (assign) float galAsphEmulsionSQS;
@property (assign) float galCoatingSQStot;
@property (strong) NSString *coatingManu;
@property (assign) int smallChemCurb;
@property (assign) int largeChemCurb;
@property (assign) int fastenersSQS;

@end
