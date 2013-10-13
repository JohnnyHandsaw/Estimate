//
//  ThreePlyCold.m
//  Estimate
//
//  Created by Daniel Hahn on 9/11/13.
//  Copyright (c) 2013 StarkWeather. All rights reserved.
//

#import "ThreePlyCold.h"

@implementation ThreePlyCold

@synthesize baseFlashSQS = baseFlashSQS;
@synthesize acUnits = acUnits;
@synthesize pitchPans = pitchPans;
@synthesize roofJacks = roofJacks;
@synthesize drainScuppers = drainScuppers;

-(void) encodeWithCoder:(NSCoder *)encoder
{
    [encoder encodeFloat:baseFlashSQS forKey: kbaseFlashSQS ];
    [encoder encodeFloat:acUnits forKey: kacUnits ];
    [encoder encodeFloat:pitchPans forKey: kpitchPans ];
    [encoder encodeFloat:roofJacks forKey: kroofJacks ];
    [encoder encodeFloat:drainScuppers forKey: kdrainScuppers ];
}
-(id)initWithCoder:(NSCoder *)decoder
{
    if (self = [super init])
    {
        self.baseFlashSQS = [ decoder decodeFloatForKey:kbaseFlashSQS];
        self.acUnits = [ decoder decodeFloatForKey:kacUnits];
        self.pitchPans = [ decoder decodeFloatForKey:kpitchPans];
        self.roofJacks = [ decoder decodeFloatForKey:kroofJacks];
        self.drainScuppers = [ decoder decodeFloatForKey:kdrainScuppers];

    }
    return self;
}

@end
