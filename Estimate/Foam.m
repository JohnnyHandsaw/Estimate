//
//  Foam.m
//  Estimate
//
//  Created by Daniel Hahn on 9/11/13.
//  Copyright (c) 2013 StarkWeather. All rights reserved.
//

#import "Foam.h"

@implementation Foam

@synthesize baseFlashSQS = baseFlashSQS;
@synthesize wallHeight = wallHeight;
@synthesize pipes = pipes;
@synthesize acUnits = acUnits;
@synthesize foamDepth = foamDepth;


-(void) encodeWithCoder:(NSCoder *)encoder
{
    [encoder encodeFloat:baseFlashSQS forKey: kbaseFlashSQS ];
    [encoder encodeFloat:wallHeight forKey: kwallHeight ];
    [encoder encodeFloat:pipes forKey: kpipes ];
    [encoder encodeFloat:acUnits forKey: kacUnits ];
    [encoder encodeFloat:foamDepth forKey: kfoamDepth ];
}
-(id)initWithCoder:(NSCoder *)decoder
{
    if (self = [super init])
    {
        self.baseFlashSQS = [ decoder decodeFloatForKey:kbaseFlashSQS];
        self.wallHeight = [ decoder decodeFloatForKey:kacUnits];
        self.pipes = [ decoder decodeFloatForKey:kpipes];
        self.acUnits = [ decoder decodeFloatForKey:kacUnits];
        self.foamDepth = [ decoder decodeFloatForKey:kfoamDepth];
        
    }
    return self;
}



@end
