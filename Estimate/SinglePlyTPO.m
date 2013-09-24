//
//  SinglePlyTPO.m
//  Estimate
//
//  Created by Daniel Hahn on 9/11/13.
//  Copyright (c) 2013 StarkWeather. All rights reserved.
//

#import "SinglePlyTPO.h"

@implementation SinglePlyTPO

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
    [encoder encodeObject:roofComplexity forKey:kroofComplexity];
    [encoder encodeObject:safetyReqs forKey:ksafetyReqs];
    [encoder encodeObject:roofTypeRec forKey:kroofTypeRec];
    [encoder encodeObject:manWarranty forKey:kmanWarranty];
    [encoder encodeInt:millSheets forKey:kmillSheets];
    [encoder encodeObject:sheetManu forKey:kmillSheets];
    [encoder encodeObject:slipSheetType forKey:kslipSheetType];
    [encoder encodeObject:baseInsuApply forKey:kbaseInsApply];
    [encoder encodeFloat:baseThickness forKey:kbaseThickness];
    [encoder encodeObject:secondInsuApply forKey:ksecondInsApply];
    [encoder encodeFloat:secondThick forKey:ksecondThick];
    [encoder encodeObject:recoverApply forKey:krecoverApply];
    [encoder encodeFloat:recoverThickness forKey:krecoverThickness];
    [encoder encodeInt:seamFastenerInchCenter forKey:kseamfastnerInchCenter];
    [encoder encodeObject:crickets forKey:kcrickets];
    [encoder encodeInt:perimeterSheets forKey:kperimeterSheets];
    [encoder encodeInt:pipeBoots forKey:kpipeBoots];
    [encoder encodeFloat:walkPads forKey:kwalkPads];
}
-(id)initWithCoder:(NSCoder *)decoder
{
    if (self = [super init])
    {
        self.tearOff = [ decoder decodeObjectForKey:ktearOff];
        self.roofComplexity = [ decoder decodeObjectForKey:kroofComplexity];
        self.safetyReqs = [decoder decodeObjectForKey:ksafetyReqs];
        self.roofTypeRec = [ decoder decodeObjectForKey:kroofTypeRec];
        self.manWarranty = [ decoder decodeObjectForKey:kmanWarranty];
        self.millSheets = [ decoder decodeIntForKey:kmillSheets];
        self.slipSheetType = [ decoder decodeObjectForKey:kslipSheetType];
        self.baseInsuApply = [ decoder decodeObjectForKey:kbaseInsApply];
        self.baseThickness = [ decoder decodeFloatForKey:kbaseThickness];
        self.secondInsuApply = [ decoder decodeObjectForKey:ksecondInsApply];
        self.secondThick = [ decoder decodeFloatForKey:ksecondThick];
        self.recoverApply = [ decoder decodeObjectForKey:krecoverApply];
        self.recoverThickness= [ decoder decodeFloatForKey:krecoverThickness];
        self.seamFastenerInchCenter = [ decoder decodeIntForKey:kseamfastnerInchCenter];
        self.crickets = [ decoder decodeObjectForKey:kcrickets];
        self.perimeterSheets = [ decoder decodeIntForKey:kperimeterSheets];
        self.pipeBoots = [ decoder decodeIntForKey:kpipeBoots];
        self.walkPads = [ decoder decodeFloatForKey:kwalkPads];
    }
    return self;
}
@end
