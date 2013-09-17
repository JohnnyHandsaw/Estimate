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
    [encoder encodeInt:acUnits forKey:kacUnits];
    [encoder encodeInt:pitchPans forKey:kpitchPans];
    [encoder encodeInt:roofJacks forKey:kroofJacks];
    [encoder encodeInt:drainScuppers forKey:kdrainScuppers];
}
-(id)initWithCoder:(NSCoder *)decoder
{
    if (self = [super init])
    {
        self.baseFlashSQS = [ decoder decodeFloatForKey:kbaseFlashSQS];
        self.acUnits = [ decoder decodeIntForKey:kacUnits];
        self.pitchPans = [ decoder decodeIntForKey:kpitchPans];
        self.roofJacks = [ decoder decodeIntForKey:kroofJacks];
        self.drainScuppers = [ decoder decodeIntForKey:kdrainScuppers];
    }
    return self;    
}
@end
