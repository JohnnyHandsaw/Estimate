//
//  Estimate.h
//  Estimate
//
//  Created by Daniel Hahn on 9/11/13.
//  Copyright (c) 2013 StarkWeather. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Options;
@class Common;
@class BuiltUpPlyGIC;
@class BuiltUpFileGNC;
@class BuiltUpPlyGIS;
@class BuiltUpPlyGNS;
@class Alumination;
@class Coatings;
@class DuroLast;
@class ThreePlyCold;
@class Foam;
@class SinglePlyPVC;
@class SinglePlyTPO;
@class Torch;

@interface Estimate : NSObject <NSCoding>{
    NSString *title;
    Options *dataOptions;
    Common *dataCommon;
    Alumination *dataAlumination;
    BuiltUpPlyGNS *dataBuiltUpPlyGNS;
    BuiltUpPlyGIS *dataBuiltUpPlyGIS;
    BuiltUpPlyGIC *dataBuiltUpPlyGIC;
    BuiltUpFileGNC *dataBuiltUpPlyGNC;
    Coatings  *dataCoatings;
    DuroLast  *dataDuroLast;
    ThreePlyCold  *dataThreePlyCold;
    Foam  *dataFoam;
    SinglePlyPVC  *dataSinglePlyPVC;
    SinglePlyTPO  *dataSinglePlyTPO;
    Torch  *dataTorch;
    
}

@property (strong) NSString *title;
@property (strong) Options *dataOptions;
@property (strong) Common *dataCommon;
@property (strong) Alumination *dataAlumination;
@property (strong) BuiltUpPlyGNS *dataBuiltUpPlyGNS;
@property (strong) BuiltUpPlyGIS *dataBuiltUpPlyGIS;
@property (strong) BuiltUpPlyGIC *dataBuiltUpPlyGIC;
@property (strong) BuiltUpFileGNC *dataBuiltUpPlyGNC;
@property (strong) Coatings  *dataCoatings;
@property (strong) DuroLast  *dataDuroLast;
@property (strong) ThreePlyCold  *dataThreePlyCold;
@property (strong) Foam  *dataFoam;
@property (strong) SinglePlyPVC  *dataSinglePlyPVC;
@property (strong) SinglePlyTPO  *dataSinglePlyTPO;
@property (strong) Torch  *dataTorch;

-(id)initWithTitle:(NSString*)title options:(Options *)options common:(Common*)common alumination:(Alumination*)alumination builtupgns:(BuiltUpPlyGNS*)builtupgns builtupgis:(BuiltUpPlyGIS*)builtupgis builtupgic:(BuiltUpPlyGIC*)builtupgic builtupgnc:(BuiltUpFileGNC*)builtupgnc coatings:(Coatings*)coatings durolast:(DuroLast*)durolast threeply:(ThreePlyCold*)threeply foam:(Foam *)foam singlepvc:(SinglePlyPVC*)singlepvc singletpo:(SinglePlyTPO*)singletpo torch:(Torch*)torch;

//- (id)initWithObjects:(NSObject*)estimate options:(Options*)options common:(Common*)common
//    alumination:(Alumination*)alumination builtUpPlyGNS:(BuiltUpPlyGNS*)builtUpPlyGNS
//    builtUpPlyGIS:(BuiltUpPlyGIS*)builtUpPlyGIS builtUpPlyGIC:(BuiltUpPlyGIC*)builtUpPlyGIC
//    builtUpPlyGNC:(BuiltUpFileGNC*)builtUpPlyGNC coatings:(Coatings*)coatings
//    duroLast:(DuroLast*)duroLast threePlyCold:(ThreePlyCold*)threePlyCold
//    foam:(Foam*)foam singlePlyPVC:(SinglePlyPVC*)singlePlyPVC singlePlyTPO:(SinglePlyTPO*)singlePlyTPO
//    torch:(Torch*)torch;
//-(id)init;

//COMMON
//@property (strong) NSString *jobName;
//@property (strong) NSString *city;
//@property (strong) NSString *deckType;
//@property (assign) float roofSQS;
//@property (assign) float baseFlash;
//@property (assign) float wallsFeet;
//@property (assign) float curbFeet;
//@property (assign) float edgeFeet;
//@property (assign) float copingFeet;
//@property (assign) int curbUnit;
//@property (assign) int slopeUnit;
//@property (assign) int leadJacks;
//@property (assign) int sealantPans;
//@property (assign) int drains;
//@property (assign) int pipes;
//@property (assign) int cladScuppers;
//@property (assign) int scuppers;
//@property (assign) int tTopVents;
//@property (assign) int corners;
//@property (assign) int skylights;
//@property (assign) int skylightsReplace;

//Alumination 301
//@property (strong) NSString *tearOff;
//@property (strong) NSString *roofComplexity;
//@property (strong) NSString *safetyReqs;
//@property (assign) float seamsFeet;
//@property (assign) int sideLapsRepair;
//@property (assign) int manualFasteners;

//BUILT-UP PLY GIC
//@property (strong) NSString *tearOff;
//@property (strong) NSString *roofComplexity;
//@property (strong) NSString *safetyReqs;
//@property (strong) NSString *roofTypeRec;
//@property (strong) NSString *plySheet;
//@property (strong) NSString *manWarranty;
//@property (strong) NSString *baseInsuApply;
//@property (assign) float baseThickness;
//@property (strong) NSString *secondInsuApply;
//@property (assign) float secondThick;
//@property (strong) NSString *recoverApply;
//@property (assign) float recoverThickness;
//@property (assign) float galCoatingSQStot;
//@property (strong) NSString *coatingManu;
//@property (assign) int smallChemCurb;
//@property (assign) int largeChemCurb;

//BUILT UP PLY GIS
//@property (strong) NSString *tearOff;
//@property (strong) NSString *roofComplexity;
//@property (strong) NSString *safetyReqs;
//@property (strong) NSString *roofTypeRec;
//@property (strong) NSString *plySheet;
//@property (strong) NSString *manWarranty;
//@property (strong) NSString *baseInsuApply;
//@property (assign) float baseThickness;
//@property (strong) NSString *secondInsuApply;
//@property (assign) float secondThick;
//@property (strong) NSString *recoverApply;
//@property (assign) float recoverThickness;
//@property (assign) float galAsphEmulsionSQS;
//@property (assign) float galCoatingSQStot;
//@property (strong) NSString *coatingManu;
//@property (assign) int smallChemCurb;
//@property (assign) int largeChemCurb;
//@property (assign) int fastenersSQS;

//BUILT UP PLY GNC
//@property (strong) NSString *tearOff;
//@property (strong) NSString *roofComplexity;
//@property (strong) NSString *safetyReqs;
//@property (strong) NSString *roofTypeRec;
//@property (strong) NSString *plySheet;
//@property (strong) NSString *manWarranty;
//@property (assign) float galCoatingSQStot;
//@property (strong) NSString *coatingManu;
//@property (assign) int smallChemCurb;
//@property (assign) int largeChemCurb;

//BUILT UP PLY GNS
//@property (strong) NSString *tearOff;
//@property (strong) NSString *roofComplexity;
//@property (strong) NSString *safetyReqs;
//@property (strong) NSString *roofTypeRec;
//@property (strong) NSString *plySheet;
//@property (strong) NSString *manWarranty;
//@property (assign) float galAsphEmulsionSQS;
//@property (assign) float galCoatingSQStot;
//@property (strong) NSString *coatingManu;
//@property (assign) int smallChemCurb;
//@property (assign) int largeChemCurb;

//COATINGS
//@property (strong) NSString *tearOff;
//@property (strong) NSString *roofComplexity;
//@property (strong) NSString *safetyReqs;
//@property (strong) NSString *roofTypeRec;
//@property (strong) NSString *manWarranty;
//@property (strong) NSString *primeDeck;
//@property (assign) float galAsphEmulsionSQS;
//@property (assign) float galCoatingSQSbase;
//@property (assign) float galCoatingSQSinter;
//@property (assign) float galCoatingSQStop;
//@property (strong) NSString *coatingManu;
//@property (strong) NSString *replaceEdge;
//@property (strong) NSString *newCounterFlashing;
//@property (strong) NSString *newScuppers;
//@property (assign) int penetrationsSeal;

//DUROLAST
//@property (assign) float wallHeight;
//@property (assign) int curbFlashings;
//@property (assign) int acUnits;
//@property (assign) int pipeBoots;
//@property (assign) float insuSQS;
//@property (assign) float slipSheet;
//@property (assign) float walkPads;
//@property (assign) float rollsSixMembrane;
//@property (assign) float galBondingAdhesive;
//@property (assign) int screws;
//@property (assign) int polyPlates;
//@property (assign) int tubesCaulk;
//@property (assign) int pailsStripMastic;
//@property (assign) int pitchPanFiller;
//@property (assign) float cleaner;
//@property (assign) float bagBands;
//@property (assign) int woodBlocking;
//@property (assign) int drainRings;
//@property (assign) int sheetsCoverBoard;

//3 Ply Cold
//@property (assign) float baseFlashSQS;
//@property (assign) int acUnits;
//@property (assign) int pitchPans;
//@property (assign) int roofJacks;
//@property (assign) int drainScuppers;

//FOAM
//@property (assign) float baseFlashSQS;
//@property (assign) float wallHeight;
//@property (assign) int pipes;
//@property (assign) int acUnits;
//@property (assign) float foamDepth;

//SINGLE PLY PVC
//@property (strong) NSString *tearOff;
//@property (strong) NSString *roofComplexity;
//@property (strong) NSString *safetyReqs;
//@property (strong) NSString *roofTypeRec;
//@property (strong) NSString *manWarranty;
//@property (assign) int millSheets;
//@property (strong) NSString *sheetManu;
//@property (strong) NSString *slipSheetType;
//@property (strong) NSString *baseInsuApply;
//@property (assign) float baseThickness;
//@property (strong) NSString *secondInsuApply;
//@property (assign) float secondThick;
//@property (strong) NSString *recoverApply;
//@property (assign) float recoverThickness;
//@property (assign) int seamFastenerInchCenter;
//@property (strong) NSString *crickets;
//@property (assign) int perimeterSheets;
//@property (assign) int pipeBoots;
//@property (assign) float walkPads;

//SINGLE PLY TPO
//@property (strong) NSString *tearOff;
//@property (strong) NSString *roofComplexity;
//@property (strong) NSString *safetyReqs;
//@property (strong) NSString *roofTypeRec;
//@property (strong) NSString *manWarranty;
//@property (assign) int millSheets;
//@property (strong) NSString *sheetManu;
//@property (strong) NSString *slipSheetType;
//@property (strong) NSString *baseInsuApply;
//@property (assign) float baseThickness;
//@property (strong) NSString *secondInsuApply;
//@property (assign) float secondThick;
//@property (strong) NSString *recoverApply;
//@property (assign) float recoverThickness;
//@property (assign) int seamFastenerInchCenter;
//@property (strong) NSString *crickets;
//@property (assign) int perimeterSheets;
//@property (assign) int pipeBoots;
//@property (assign) float walkPads;

//TORCH
//@property (assign) float baseFlashSQS;
//@property (assign) int acUnits;
//@property (assign) int pitchPans;
//@property (assign) int roofJacks;
//@property (assign) int drainLeads;

@end
