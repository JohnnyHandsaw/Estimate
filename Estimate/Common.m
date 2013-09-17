//
//  Common.m
//  Estimate
//
//  Created by Daniel Hahn on 9/11/13.
//  Copyright (c) 2013 StarkWeather. All rights reserved.
//

#import "Common.h"
#define kjobName @"Project Name"
#define kcity @"Project City"
#define kroofSQS @"Roof SQS"
#define kbaseFlash @"Base Flashing Height"
#define kwallsFeet @"Linear ft. Walls"
#define kcurbFeet @"Linear ft. Curbs "
#define kedgeFeet @"Linear ft. Edge"
#define kcopingFeet @"Linear ft. Coping"
#define kcurbUnit @"A/C Units on Curbs"
#define kslopeUnit @"A/C Units on Sleepers"
#define kleadJacks @"Lead Jacks"
#define ksealantPans @"Sealant Pans"
#define kdrains @"Drains"
#define kpipes @"Pipes"
#define kcladScuppers @"Cladded Scuppers"
#define kscuppers @"Scuppers"
#define ktTopVents @"T- Tops / Vents"
#define kcorners @"Corners"
#define kskylights @"Skylights"
#define kskylightsReplace @"Skylights Needing Replacement"
@implementation Common

@synthesize jobName = jobName;
@synthesize city = city;
@synthesize deckType = deckType;
@synthesize roofSQS = roofSQS;
@synthesize baseFlash = baseFlash;
@synthesize wallsFeet = wallsFeet;
@synthesize curbFeet = curbFeet;
@synthesize edgeFeet = edgeFeet;
@synthesize copingFeet = copingFeet;
@synthesize curbUnit = curbUnit;
@synthesize slopeUnit = slopeUnit;
@synthesize leadJacks = leadJacks;
@synthesize sealantPans = sealantPans;
@synthesize drains = drains;
@synthesize pipes = pipes;
@synthesize cladScuppers = cladScuppers;
@synthesize scuppers = scuppers;
@synthesize tTopVents = tTopVents;
@synthesize corners = corners;
@synthesize skylights = skylights;
@synthesize skylightsReplace = skylightsReplace;

-(void) encodeWithCoder:(NSCoder *)encoder
{
    [encoder encodeObject:jobName forKey: kjobname ];
    [encoder encodeObject:city forKey:kcity];
    [encoder encodeObject:deckType forKey:kdeckType];
    [encoder encodeFloat:roofSQS forKey:kroofSQS];
    [encoder encodeFloat:baseFlash forKey:kbaseFlash];
    [encoder encodeFloat:wallsFeet forKey:kwallsFeet];
    [encoder encodeFloat:curbFeet forKey:kcurbFeet];
    [encoder encodeFloat:edgeFeet forKey:kedgeFeet];
    [encoder encodeFloat:copingFeet forKey:kcopingFeet];
    [encoder encodeInt:curbUnit forKey:kcurbUnit];
    [encoder encodeInt:slopeUnit forKey:kslopeUnit];
    [encoder encodeInt:leadJacks forKey:kleadJacks];
    [encoder encodeInt:sealantPans forKey:ksealantPans];
    [encoder encodeInt:drains forKey:kdrains];
    [encoder encodeInt:pipes forKey:kpipes];
    [encoder encodeInt:cladScuppers forKey:kcladScuppers];
    [encoder encodeInt:scuppers forKey:kscuppers];
    [encoder encodeInt:tTopVents forKey:ktTopVents];
    [encoder encodeInt:corners  forKey:kcorners];
    [encoder encodeInt:skylights forKey:kskylights];
    [encoder encodeInt:skylightsReplace forKey:kskylightsReplace];}
-(id)initWithCoder:(NSCoder *)decoder
{
    if (self = [super init])
    {
        
        self.jobName = [ decoder decodeObjectForKey:kjobname];
        self.city = [ decoder decodeObjectForKey:kcity];
        self.deckType = [ decoder decodeObjectForKey:kdeckType];
        self.roofSQS = [ decoder decodeFloatForKey:kroofSQS];
        self.baseFlash = [ decoder decodeFloatForKey:kbaseFlash];
        self.wallsFeet = [ decoder decodeFloatForKey:kwallsFeet];
        self.curbFeet = [ decoder decodeFloatForKey:kcurbFeet];
        self.edgeFeet = [ decoder decodeFloatForKey:kedgeFeet];
        self.copingFeet = [ decoder decodeFloatForKey:kcopingFeet];
        self.curbUnit= [ decoder decodeIntForKey:kcurbUnit];
        self.slopeUnit = [ decoder decodeIntForKey:kslopeUnit];
        self.leadJacks = [ decoder decodeIntForKey:kleadJacks];
        self.sealantPans = [ decoder decodeIntForKey:ksealantPans];
        self.drains= [ decoder decodeIntForKey:kdrains];
        self.pipes  = [ decoder decodeIntForKey:kpipes];
        self.cladScuppers = [ decoder decodeIntForKey:kcladScuppers];
        self.scuppers= [ decoder decodeIntForKey:kscuppers];
        self.tTopVents= [ decoder decodeIntForKey:ktTopVents];
        self.corners= [ decoder decodeIntForKey:kcorners];
        self.skylights = [ decoder decodeIntForKey:kskylights];
        self.skylightsReplace= [ decoder decodeIntForKey:kskylightsReplace];
    }
        return self;
    
}

@end
