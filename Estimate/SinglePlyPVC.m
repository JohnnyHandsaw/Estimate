//
//  SinglePlyPVC.m
//  Estimate
//
//  Created by Daniel Hahn on 9/11/13.
//  Copyright (c) 2013 StarkWeather. All rights reserved.
//

#import "SinglePlyPVC.h"

@implementation SinglePlyPVC

@synthesize tearOff = tearOff;
@synthesize roofComplexity = roofComplexity;
@synthesize safetyReqs = safetyReqs;
@synthesize roofTypeRec = roofTypeRec;
@synthesize manWarranty = manWarranty;
@synthesize millSheets = millSheets;
@synthesize sheetManu = sheetManu;
@synthesize slipSheetType = slipSheetType;
@synthesize baseInsuApply = baseInsuApply;
@synthesize baseThickness = baseThickness;
@synthesize secondInsuApply = secondInsuApply;
@synthesize secondThick = secondThick;
@synthesize recoverApply = recoverApply;
@synthesize recoverThickness = recoverThickness;
@synthesize seamFastenerInchCenter = seamFastenerInchCenter;
@synthesize crickets = crickets;
@synthesize perimeterSheets = perimeterSheets;
@synthesize pipeBoots = pipeBoots;
@synthesize walkPads = walkPads;

-(void) encodeWithCoder:(NSCoder *)encoder
{
    [encoder encodeObject:tearOff forKey: ktearOff ];
    [encoder encodeObject:roofComplexity forKey: kroofComplexity ];
    [encoder encodeObject:safetyReqs forKey: ksafetyReqs ];
    [encoder encodeObject:roofTypeRec forKey: kroofTypeRec ];
    [encoder encodeObject:manWarranty forKey: kmanWarranty ];
        [encoder encodeFloat:millSheets forKey: kmillSheets ];
        [encoder encodeObject:sheetManu forKey: ksheetManu ];
        [encoder encodeObject:slipSheetType forKey: kslipSheetType ];
        [encoder encodeObject:baseInsuApply forKey: kbaseInsuApply ];
        [encoder encodeFloat:baseThickness forKey: kbaseThickness ];
        [encoder encodeObject:secondInsuApply forKey: ksecondInsuApply ];
    
        [encoder encodeFloat:secondThick forKey: ksecondThick ];
        [encoder encodeObject:recoverApply forKey: krecoverApply ];
        [encoder encodeFloat:recoverThickness forKey: krecoverThickness ];
        [encoder encodeFloat:seamFastenerInchCenter forKey: kseamFastenerInchCenter ];
        [encoder encodeObject:crickets forKey: kcrickets ];
    [encoder encodeFloat:perimeterSheets forKey: kperimeterSheets ];
    [encoder encodeFloat:pipeBoots forKey: kpipeBoots ];
    [encoder encodeFloat:walkPads forKey: kwalkPads ];
}
-(id)initWithCoder:(NSCoder *)decoder
{
    if (self = [super init])
    {
        self.tearOff = [ decoder decodeObjectForKey:ktearOff];
        self.roofComplexity = [ decoder decodeObjectForKey:kroofComplexity];
        self.safetyReqs = [ decoder decodeObjectForKey:ksafetyReqs];
        self.roofTypeRec = [ decoder decodeObjectForKey:kroofTypeRec];
        self.manWarranty = [ decoder decodeObjectForKey:kmanWarranty];
         self.millSheets = [ decoder decodeFloatForKey:kmillSheets];
         self.sheetManu = [ decoder decodeObjectForKey:ksheetManu];
         self.slipSheetType = [ decoder decodeObjectForKey:kslipSheetType];
         self.baseInsuApply = [ decoder decodeObjectForKey:kbaseInsuApply];
         self.baseThickness = [ decoder decodeFloatForKey:kbaseThickness];
         self.secondInsuApply = [ decoder decodeObjectForKey:ksecondInsuApply];
         self.secondThick = [ decoder decodeFloatForKey:ksecondThick];
         self.recoverApply = [ decoder decodeObjectForKey:krecoverApply];
        self.recoverThickness = [ decoder decodeFloatForKey:krecoverThickness];
         self.seamFastenerInchCenter = [ decoder decodeFloatForKey:kseamFastenerInchCenter];
         self.crickets = [ decoder decodeObjectForKey:kcrickets];
         self.perimeterSheets = [ decoder decodeFloatForKey:kperimeterSheets];
         self.pipeBoots = [ decoder decodeFloatForKey:kpipeBoots];
         self.walkPads = [ decoder decodeFloatForKey:kwalkPads];
        
    }
    return self;
}

@end
