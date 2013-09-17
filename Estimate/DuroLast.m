//
//  DuroLast.m
//  Estimate
//
//  Created by Daniel Hahn on 9/11/13.
//  Copyright (c) 2013 StarkWeather. All rights reserved.
//

#import "DuroLast.h"

@implementation DuroLast

@synthesize wallHeight = wallHeight;
@synthesize curbFlashings = curbFlashings;
@synthesize acUnits = acUnits;
@synthesize pipeBoots = pipeBoots;
@synthesize insuSQS = insuSQS;
@synthesize slipSheet = slipSheet;
@synthesize walkPads = walkPads;
@synthesize rollsSixMembrane = rollsSixMembrane;
@synthesize galBondingAdhesive = galBondingAdhesive;
@synthesize screws = screws;
@synthesize polyPlates = polyPlates;
@synthesize tubesCaulk = tubesCaulk;
@synthesize pailsStripMastic = pailsStripMastic;
@synthesize pitchPanFiller = pitchPanFiller;
@synthesize cleaner = cleaner;
@synthesize bagBands = bagBands;
@synthesize woodBlocking = woodBlocking;
@synthesize drainRings = drainRings;
@synthesize sheetsCoverBoard = sheetsCoverBoard;

-(void) encodeWithCoder:(NSCoder *)encoder
{
    [encoder encodeFloat:wallHeight forKey: kwallHeight ];
    [encoder encodeInt:curbFlashings forKey:kcurbFlashings];
    [encoder encodeInt:acUnits forKey:kacUnits];
    [encoder encodeInt:pipeBoots forKey:kpipeBoots];
    [encoder encodeFloat:insuSQS forKey:kinsuSQS];
    [encoder encodeFloat:slipSheet forKey:kslipSheet];
    [encoder encodeFloat:walkPads forKey:kwalkPads];
    [encoder encodeFloat:rollsSixMembrane forKey:krollsSixMembrane];
    [encoder encodeFloat:galBondingAdhesive forKey:kgalBondingAdhesive];
    [encoder encodeInt:screws forKey:kscrews];
    [encoder encodeInt:polyPlates forKey:kpolyPlates];
    [encoder encodeInt:tubesCaulk forKey:ktubesCaulk];
    [encoder encodeInt:pailsStripMastic forKey:kpailsStripMastic];
    [encoder encodeInt:pitchPanFiller forKey:kpitchPanFiller];
    [encoder encodeFloat:cleaner forKey:kcleaner];
    [encoder encodeFloat:bagBands forKey:kbagBands];
    [encoder encodeInt:woodBlocking forKey:kwoodBlocking];
    [encoder encodeInt:drainRings forKey:kdrainRings];
    [encoder encodeInt:sheetsCoverBoard forKey:ksheetsCoverBoard];
}
-(id)initWithCoder:(NSCoder *)decoder
{
    if (self = [super init])
    {
        self.wallHeight = [ decoder decodeFloatForKey:kwallHeight];
        self.curbFlashings = [ decoder decodeIntForKey:kcurbFlashings];
        self.acUnits = [ decoder decodeIntForKey:kacUnits];
        self.pipeBoots = [ decoder decodeIntForKey:kpipeBoots];
        self.insuSQS = [ decoder decodeFloatForKey:kinsuSQS];
        self.slipSheet = [ decoder decodeFloatForKey:kslipSheet];
        self.walkPads = [ decoder decodeFloatForKey:kwalkPads];
        self.rollsSixMembrane = [ decoder decodeFloatForKey:krollsSixMembrane];
        self.galBondingAdhesive = [ decoder decodeFloatForKey:kgalBondingAdhesive];
        self.screws = [ decoder decodeIntForKey:kscrews];
        self.polyPlates = [ decoder decodeIntForKey:kpolyPlates];
        self.tubesCaulk = [ decoder decodeIntForKey:ktubesCaulk];
        self.pailsStripMastic = [ decoder decodeIntForKey:kpailsStripMastic];
        self.pitchPanFiller = [ decoder decodeIntForKey:kpitchPanFiller];
        self.cleaner = [ decoder decodeFloatForKey:kcleaner];
        self.bagBands = [ decoder decodeFloatForKey:kbagBands];
        self.woodBlocking = [decoder decodeIntForKey:kwoodBlocking];
        self.drainRings = [ decoder decodeIntForKey:kdrainRings];
        self.sheetsCoverBoard = [ decoder decodeIntForKey:ksheets];
    }
    return self;
    
}
@end
