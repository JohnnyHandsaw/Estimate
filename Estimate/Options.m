//
//  Options.m
//  Estimate
//
//  Created by Daniel Hahn on 9/11/13.
//  Copyright (c) 2013 StarkWeather. All rights reserved.
//

#import "Options.h"

@implementation Options

@synthesize alumination = alumination;
@synthesize builtUpGIC = builtUpGIC;
@synthesize builtUpGIS = builtUpGIS;
@synthesize builtUpGNC = builtUpGNC;
@synthesize builtUpGNS = builtUpGNS;
@synthesize coatings = coatings;
@synthesize duroLast = duroLast;
@synthesize threePly = threePly;
@synthesize foam = foam;
@synthesize singlePVC = singlePVC;
@synthesize singleTPO = singleTPO;
@synthesize torch = torch;

-(void) encodeWithCoder:(NSCoder *)encoder
{
    [encoder encodeInt:alumination forKey: kalumination ];
    [encoder encodeInt:builtUpGIC forKey:kbuiltUpGIC];
    [encoder encodeInt:builtUpGIS forKey:kbuiltUpGIS];
    [encoder encodeInt:builtUpGNC forKey:kbuiltUpGNC];
    [encoder encodeInt:builtUpGNS forKey:KbuiltUpGNS];
    [encoder encodeInt:coatings forKey:kcoatings];
    [encoder encodeInt:duroLast forKey:kdurolast];
    [encoder encodeInt:threePly forKey:kthreePly];
    [encoder encodeInt:foam forKey:kfoam];
    [encoder encodeInt:singlePVC forKey:ksinglePVC];
    [encoder encodeInt:singleTPO forKey:ksingleTPO];
    [encoder encodeInt:torch forKey:ktorch];
}
-(id)initWithCoder:(NSCoder *)decoder
{
    if (self = [super init])
    {
        
        self.alumination = [decoder decodeIntForKey:kalumination];
        self.builtUpGIC = [decoder decodeIntForKey:kbuiltUpGIC];
        self.builtUpGIS = [decoder decodeIntForKey:kbuiltUpGIS];
        self.builtUpGNC = [decoder decodeIntForKey:kbuiltUpGNC];
        self.builtUpGNS = [decoder decodeIntForKey:KbuiltUpGNS];
        self.coatings = [decoder decodeIntForKey:kcoatings];
        self.duroLast = [decoder decodeIntForKey:kdurolast];
        self.threePly = [decoder decodeIntForKey:kthreePly];
        self.foam = [decoder decodeIntForKey:kfoam];
        self.singlePVC = [decoder decodeIntForKey:ksinglePVC];
        self.singleTPO = [decoder decodeIntForKey:ksingleTPO];
        self.torch = [decoder decodeIntForKey:ktorch];
    }
    return self;
}
@end
