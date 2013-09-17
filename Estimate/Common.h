//
//  Common.h
//  Estimate
//
//  Created by Daniel Hahn on 9/11/13.
//  Copyright (c) 2013 StarkWeather. All rights reserved.
//
#define kjobname @ "Job Name"
#define kcity @ "Job City"
#define kdeckType @ "Deck Type"
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
#import <Foundation/Foundation.h>

@interface Common : NSObject<NSCoding>

@property (strong) NSString *jobName;
@property (strong) NSString *city;
@property (strong) NSString *deckType;
@property (assign) float roofSQS;
@property (assign) float baseFlash;
@property (assign) float wallsFeet;
@property (assign) float curbFeet;
@property (assign) float edgeFeet;
@property (assign) float copingFeet;
@property (assign) int curbUnit;
@property (assign) int slopeUnit;
@property (assign) int leadJacks;
@property (assign) int sealantPans;
@property (assign) int drains;
@property (assign) int pipes;
@property (assign) int cladScuppers;
@property (assign) int scuppers;
@property (assign) int tTopVents;
@property (assign) int corners;
@property (assign) int skylights;
@property (assign) int skylightsReplace;


@end
