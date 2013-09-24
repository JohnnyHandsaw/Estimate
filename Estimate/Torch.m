//
//  Torch.m
//  Estimate
//
//  Created by Daniel Hahn on 9/11/13.
//  Copyright (c) 2013 StarkWeather. All rights reserved.
//

#import "Torch.h"

@implementation Torch

@synthesize baseFlashSQS = baseFlashSQS;
@synthesize acUnits = acUnits;
@synthesize pitchPans = pitchPans;
@synthesize roofJacks = roofJacks;
@synthesize drainLeads = drainLeads;


-(void) encodeWithCoder:(NSCoder *)encoder
{
    [encoder encodeFloat:baseFlashSQS forKey:kbaseFlashSQS];
    [encoder encodeInt:acUnits forKey:kacUnits];
    [encoder encodeInt:pitchPans forKey:kpitchPans];
    [encoder encodeInt:roofJacks forKey:kroofJacks];
    [encoder encodeInt:drainLeads forKey:kdrainLeads];
}
-(id)initWithCoder:(NSCoder *)decoder
{
    if (self = [super init])
    {
        self.baseFlashSQS = [decoder decodeFloatForKey:kbaseFlashSQS];
        self.acUnits = [ decoder decodeFloatForKey:kacUnits];
        self.pitchPans = [decoder decodeIntForKey:kpitchPans];
        self.roofJacks= [decoder decodeIntForKey:kroofJacks];
        self.drainLeads = [ decoder decodeFloatForKey:kdrainLeads];
    }
    return self;
}
@end
