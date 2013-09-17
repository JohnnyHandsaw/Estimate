//
//  BuiltUpFileGNC.m
//  Estimate
//
//  Created by Daniel Hahn on 9/11/13.
//  Copyright (c) 2013 StarkWeather. All rights reserved.
//

#import "BuiltUpFileGNC.h"

@implementation BuiltUpFileGNC

@synthesize tearOff = tearOff;
@synthesize roofComplexity = roofComplexity;
@synthesize safetyReqs = safetyReqs;
@synthesize roofTypeRec = roofTypeRec;
@synthesize plySheet = plySheet;
@synthesize manWarranty = manWarranty;
@synthesize galCoatingSQStot = galCoatingSQStot;
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
        self.manWarranty = [decoder decodeObjectForKey:kmanWarranty];
        self.galCoatingSQStot = [ decoder decodeFloatForKey:kgalCoatingSQStot];
        self.coatingManu = [ decoder decodeObjectForKey:kcoatingManu];
        self.smallChemCurb = [ decoder decodeIntForKey:ksmallChemCurb];
        self.largeChemCurb = [ decoder decodeIntForKey:klargeChemCurb];
    }
    return self;
}
@end
