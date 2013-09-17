//
//  DuroLast.h
//  Estimate
//
//  Created by Daniel Hahn on 9/11/13.
//  Copyright (c) 2013 StarkWeather. All rights reserved.
//

#import <Foundation/Foundation.h>

#define kwallHeight @ "Wall Height"
#define kcurbFlashings @ "Number of Curb Flashings"
#define kacUnits @ "Number of A/C Units"
#define kpipeBoots @ "Number of Pipe Boots"
#define kinsuSQS @ "Insulation SQS"
#define kslipSheet @ "Slip Sheet"
#define kwalkPads @ "Walk Pads"
#define krollsSixMembrane @ "Number of rolls 6in. Membrane"
#define kgalBondingAdhesive @ "Number of Gallons of Bonding Adhesive"
#define kscrews @ "Number of Screws"
#define kpolyPlates @ "Poly Plates"
#define ktubesCaulk @ "Number of Caulking Tubes"
#define kpailsStripMastic @ "Number of Pails of Strip Mastic"
#define kpitchPanFiller @ "Number of Pitch Pan Filler(s)"
#define kcleaner @ "Cleaner"
#define kbagBands @ "Number of Bag Bands"
#define kwoodBlocking @ "Number of Wood Blockings"
#define kdrainRings @ "Number of Drain Rings"
#define ksheetsCoverBoard @ "Number of Sheets Cover Board"

@interface DuroLast : NSObject

@property (assign) float wallHeight;
@property (assign) int curbFlashings;
@property (assign) int acUnits;
@property (assign) int pipeBoots;
@property (assign) float insuSQS;
@property (assign) float slipSheet;
@property (assign) float walkPads;
@property (assign) float rollsSixMembrane;
@property (assign) float galBondingAdhesive;
@property (assign) int screws;
@property (assign) int polyPlates;
@property (assign) int tubesCaulk;
@property (assign) int pailsStripMastic;
@property (assign) int pitchPanFiller;
@property (assign) float cleaner;
@property (assign) float bagBands;
@property (assign) int woodBlocking;
@property (assign) int drainRings;
@property (assign) int sheetsCoverBoard;

@end
