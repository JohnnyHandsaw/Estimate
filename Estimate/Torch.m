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
    [encoder encodeFloat:baseFlashSQS forKey: kbaseFlashSQS ];
    [encoder encodeFloat:acUnits forKey: kacUnits ];
    [encoder encodeFloat:pitchPans forKey: kpitchPans ];
    [encoder encodeFloat:roofJacks forKey: kroofJacks ];
    [encoder encodeFloat:drainLeads forKey: kdrainLeads ];
}
-(id)initWithCoder:(NSCoder *)decoder
{
    if (self = [super init])
    {
        self.baseFlashSQS = [ decoder decodeFloatForKey:kbaseFlashSQS];
        self.acUnits = [ decoder decodeFloatForKey:kacUnits];
        self.pitchPans = [ decoder decodeFloatForKey:kpitchPans];
        self.roofJacks = [ decoder decodeFloatForKey:kroofJacks];
        self.drainLeads = [ decoder decodeFloatForKey:kdrainLeads];
        
    }
    return self;
}


@end
