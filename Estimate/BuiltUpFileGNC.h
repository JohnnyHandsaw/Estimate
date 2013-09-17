//
//  BuiltUpFileGNC.h
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
#define kgalCoatingSQStot @ "Gallons of Coating per SQS(Total)"
#define kcoatingManu @ "Coating Manufacturer"
#define ksmallChemCurb @ "Small Chemical Curbs"
#define klargeChemCurb @ "Large Chemical Curbs"

@interface BuiltUpFileGNC : NSObject

@property (strong) NSString *tearOff;
@property (strong) NSString *roofComplexity;
@property (strong) NSString *safetyReqs;
@property (strong) NSString *roofTypeRec;
@property (strong) NSString *plySheet;
@property (strong) NSString *manWarranty;
@property (assign) float galCoatingSQStot;
@property (strong) NSString *coatingManu;
@property (assign) int smallChemCurb;
@property (assign) int largeChemCurb;

@end
