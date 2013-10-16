//
//  Coatings.m
//  Estimate
//
//  Created by Daniel Hahn on 9/11/13.
//  Copyright (c) 2013 StarkWeather. All rights reserved.
//

#import "Coatings.h"

@implementation Coatings

@synthesize tearOff = tearOff;
@synthesize roofComplexity = roofComplexity;
@synthesize safetyReqs = safetyReqs;
@synthesize roofTypeRec = roofTypeRec;
@synthesize manWarranty = manWarranty;
@synthesize primeDeck = primeDeck;
@synthesize galAsphEmulsionSQS = galAsphEmulsionSQS;
@synthesize galCoatingSQSbase = galCoatingSQSbase;
@synthesize galCoatingSQSinter = galCoatingSQSinter;
@synthesize galCoatingSQStop = galCoatingSQStop;
@synthesize coatingManu = coatingManu;
@synthesize replaceEdge = replaceEdge;
@synthesize counterFlashingNew = counterFlashingNew;
@synthesize scuppersNew = scuppersNew;
@synthesize penetrationsSeal = penetrationsSeal;
@synthesize smallChemCurb = smallChemCurb;
@synthesize largeChemCurb = largeChemCurb;

-(void) encodeWithCoder:(NSCoder *)encoder
{
    [encoder encodeObject:tearOff forKey: ktearOff ];
    [encoder encodeObject:roofComplexity forKey:kroofComplexity];
    [encoder encodeObject:safetyReqs forKey:ksafetyReqs];
    [encoder encodeObject:roofTypeRec forKey:kroofTypeRec];
    [encoder encodeObject:manWarranty forKey:kmanWarranty];
    [encoder encodeObject:primeDeck forKey:kprimeDeck];
    [encoder encodeFloat:galAsphEmulsionSQS forKey:kgalAsphEmulsionSQS];
    [encoder encodeFloat:galCoatingSQSbase forKey:kgalCoatingSQSbase];
    [encoder encodeFloat:galCoatingSQSinter forKey:kgalCoatingSQSinter];
    [encoder encodeFloat:galCoatingSQStop forKey:kgalCoatingSQStop];
    [encoder encodeObject:coatingManu forKey:kcoatingManu];
    [encoder encodeObject:replaceEdge forKey:kreplaceEdge];
    [encoder encodeObject:counterFlashingNew forKey:kcounterFlashingNew];
    [encoder encodeObject:scuppersNew forKey:kscupperNew];
    [encoder encodeInt:penetrationsSeal forKey:kpenetrationsSeal];
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
        self.primeDeck = [ decoder decodeObjectForKey:kprimeDeck];
        self.galAsphEmulsionSQS = [ decoder decodeFloatForKey:kgalAsphEmulsionSQS];
        self.galCoatingSQSbase = [ decoder decodeFloatForKey:kgalCoatingSQSbase];
        self.galCoatingSQSinter = [ decoder decodeFloatForKey:kgalCoatingSQSinter];
        self.galCoatingSQStop = [ decoder decodeFloatForKey:kgalCoatingSQStop];
        self.coatingManu = [ decoder decodeObjectForKey:kcoatingManu];
        self.replaceEdge = [ decoder decodeObjectForKey:kreplaceEdge];
        self.counterFlashingNew = [decoder decodeObjectForKey:kcounterFlashingNew];
        self.scuppersNew = [ decoder decodeObjectForKey:kscupperNew];
        self.penetrationsSeal= [ decoder decodeIntForKey:kpenetrationsSeal];
        self.smallChemCurb= [ decoder decodeIntForKey:ksmallChemCurb];
        self.largeChemCurb= [ decoder decodeIntForKey:klargeChemCurb];
    }
    return self;
}
    @end
