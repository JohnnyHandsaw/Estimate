//
//  BuiltUpPlyGIC.m
//  Estimate
//
//  Created by Daniel Hahn on 9/11/13.
//  Copyright (c) 2013 StarkWeather. All rights reserved.
//

#import "BuiltUpPlyGIC.h"

@implementation BuiltUpPlyGIC

@synthesize tearOff = tearOff;
@synthesize roofComplexity = roofComplexity;
@synthesize safetyReqs = safetyReqs;
@synthesize roofTypeRec = roofTypeRec;
@synthesize plySheet = plySheet;
@synthesize manWarranty = manWarranty;
@synthesize baseInsuApply = baseInsuApply;
@synthesize baseThickness = baseThickness;
@synthesize secondInsuApply = secondInsuApply;
@synthesize secondThick = secondThick;
@synthesize recoverApply = recoverApply;
@synthesize recoverThickness = recoverThickness;
@synthesize galCoatingSQStot =  galCoatingSQStot;
@synthesize coatingManu = coatingManu;
@synthesize smallChemCurb = smallChemCurb;
@synthesize largeChemCurb = largeChemCurb;

-(void) encodeWithCoder:(NSCoder *)encoder
{
    [encoder encodeObject:tearOff forKey: ktearOff ];
    [encoder encodeObject:roofComplexity forKey:kroofComplexity];
    [encoder encodeObject:safetyReqs forKey:ksafetyReqs];
    [encoder encodeObject:roofTypeRec forKey:kroofTypeRec];
    [encoder encodeObject:plySheet forKey:kplysheet];
    [encoder encodeObject:manWarranty forKey:kmanWarranty];
    [encoder encodeObject:baseInsuApply forKey:kbaseInsApply];
    [encoder encodeFloat:baseThickness forKey:kbaseThickness];
    [encoder encodeObject:secondInsuApply forKey:ksecondInsApply];
    [encoder encodeFloat:secondThick forKey:ksecondThick];
    [encoder encodeObject:recoverApply forKey:krecoverApply];
    [encoder encodeFloat:recoverThickness forKey:krecoverThickness];
    [encoder encodeFloat:galCoatingSQStot forKey:kgalCoatingSQStot];
    [encoder encodeObject:coatingManu forKey:kcoatingManu];
    [encoder encodeInt:smallChemCurb forKey:ksmallChemCurb];
    [encoder encodeInt:largeChemCurb forKey:klargeChemCurb];
}
-(id)initWithCoder:(NSCoder *)decoder
{
    if (self = [super init])
    {
        self.tearOff = [ decoder decodeObjectForKey:ktearOff];
        self.roofComplexity = [ decoder decodeObjectForKey:kroofComplexity];
        self.safetyReqs = [decoder decodeObjectForKey:ksafetyReqs];
        self.roofTypeRec = [ decoder decodeObjectForKey:kroofTypeRec];
        self.plySheet = [ decoder decodeObjectForKey:kplysheet];
        self.baseInsuApply = [ decoder decodeObjectForKey:kbaseInsApply];
        self.baseThickness = [ decoder decodeFloatForKey:kbaseThickness];
        self.secondInsuApply = [ decoder decodeObjectForKey:ksecondInsApply];
        self.secondThick = [ decoder decodeFloatForKey:ksecondThick];
        self.recoverApply = [ decoder decodeObjectForKey:krecoverApply];
        self.recoverThickness= [ decoder decodeFloatForKey:krecoverThickness];
        self.galCoatingSQStot = [ decoder decodeFloatForKey:kgalCoatingSQStot];
        self.coatingManu = [ decoder decodeObjectForKey:kcoatingManu];
        self.smallChemCurb = [ decoder decodeIntForKey:ksmallChemCurb];
        self.largeChemCurb= [ decoder decodeIntForKey:klargeChemCurb];
    }
    return self;
}
@end
