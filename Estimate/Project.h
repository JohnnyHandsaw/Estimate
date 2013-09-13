//
//  Project.h
//  Estimate
//
//  Created by Daniel Hahn on 9/11/13.
//  Copyright (c) 2013 StarkWeather. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Project : NSObject

@property (assign) int alumination;
@property (assign) int builtUpGIC;
@property (assign) int builtUpGIS;
@property (assign) int builtUpGNC;
@property (assign) int builtUpGNS;
@property (assign) int coatings;
@property (assign) int duroLast;
@property (assign) int threePly;
@property (assign) int foam;
@property (assign) int singlePVC;
@property (assign) int singleTPO;
@property (assign) int torch;
@property (strong) NSMutableArray *options;

@property (strong) NSString *city;
@property (strong) NSString *projectName;
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

@property (strong) NSString *tearOff;
@property (strong) NSString *roofComplexity;
@property (strong) NSString *safetyReqs;
@property (assign) float seamsFeet;
@property (assign) int sideLapsRepair;
@property (assign) int manualFasteners;

@property (strong) NSString *roofTypeRec;
@property (strong) NSString *plySheet;
@property (strong) NSString *manWarranty;
@property (strong) NSString *baseInsuApply;
@property (assign) float *baseThickness;
@property (strong) NSString *secondInsuApply;
@property (assign) float *secondThick;
@property (strong) NSString *recoverApply;
@property (assign) float *recoverThickness;
@property (assign) float *galCoatingSQStot;
@property (strong) NSString *coatingManu;
@property (assign) int smallChemCurb;
@property (assign) int largeChemCurb;

@property (assign) int fastenersSQS;

@property (assign) float *galAsphEmulsionSQS;

@property (strong) NSString *primeDeck;
@property (assign) float *galCoatingSQSbase;
@property (assign) float *galCoatingSQSinter;
@property (assign) float *galCoatingSQStop;
@property (strong) NSString *replaceEdge;
@property (strong) NSString *newCounterFlashing;
@property (strong) NSString *newScuppers;
@property (assign) int penetrationsSeal;

@end
