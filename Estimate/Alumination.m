//
//  Alumination.m
//  Estimate
//
//  Created by Daniel Hahn on 9/11/13.
//  Copyright (c) 2013 StarkWeather. All rights reserved.
//

#import "Alumination.h"

@implementation Alumination

@synthesize tearOff = tearOff;
@synthesize roofComplexity = roofComplexity;
@synthesize safetyReqs = safetyReqs;
@synthesize seamsFeet = seamsFeet;
@synthesize sideLapsRepair = sideLapsRepair;
@synthesize manualFasteners = manualFasteners;

-(void) encodeWithCoder:(NSCoder *)encoder
{
    [encoder encodeObject:tearOff forKey: ktearOff];
    [encoder encodeObject:roofComplexity forKey:kroofComplexity];
    [encoder encodeObject:safetyReqs forKey:ksafetyReqs];
    [encoder encodeFloat:seamsFeet forKey:kseamsFeet];
    [encoder encodeInt:sideLapsRepair forKey:ksideLapsRepair];
    [encoder encodeInt:manualFasteners forKey:kmanualFastners];
}
-(id)initWithCoder:(NSCoder *)decoder
{
    if (self = [super init])
    {
        
        self.tearOff = [decoder decodeObjectForKey:ktearOff];
        self.roofComplexity = [decoder decodeObjectForKey:kroofComplexity];
        self.safetyReqs = [decoder decodeObjectForKey:ksafetyReqs];
        self.seamsFeet = [decoder decodeFloatForKey:kseamsFeet];
        self.sideLapsRepair = [decoder decodeIntForKey:ksideLapsRepair];
        self.manualFasteners = [decoder decodeIntForKey:kmanualFastners];
    }
return self;
}
@end
