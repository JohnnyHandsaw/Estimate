
//
//  Coatings.h
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
#define kprimeDeck @ "Prime Deck?"
#define kgalAsphEmulsionSQS @ "Gallons of Asphalt Emulsion per SQS"
#define kgalCoatingSQSbase @ "Gallons of Coating per SQS(Base)"
#define kgalCoatingSQSinter @ "Gallons of Coating per SQS(Intermediate)"
#define kgalCoatingSQStop @ "Gallons of Coating per SQS(Top)"
#define kcoatingManu @ "Coating Manufacturer"
#define kreplaceEdge @ "Replace Metal Edge?"
#define kcounterFlashingNew @ "New Counter Flashing?"
#define kscupperNew @ "New Scuppers?"
#define ksmallChemCurb @ "Small Chemical Curbs"
#define klargeChemCurb @ "Large Chemical Curbs"
#define kpenetrationsSeal @ "Penetrations to Seal"

@interface Coatings : NSObject

@property (strong) NSString *tearOff;
@property (strong) NSString *roofComplexity;
@property (strong) NSString *safetyReqs;
@property (strong) NSString *roofTypeRec;
@property (strong) NSString *manWarranty;
@property (strong) NSString *primeDeck;
@property (assign) float galAsphEmulsionSQS;
@property (assign) float galCoatingSQSbase;
@property (assign) float galCoatingSQSinter;
@property (assign) float galCoatingSQStop;
@property (strong) NSString *coatingManu;
@property (strong) NSString *replaceEdge;
@property (strong) NSString *counterFlashingNew;
@property (strong) NSString *scuppersNew;
@property (assign) int penetrationsSeal;
@property (assign) int smallChemCurb;
@property (assign) int largeChemCurb;
@end
