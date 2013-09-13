
//
//  Coatings.h
//  Estimate
//
//  Created by Daniel Hahn on 9/11/13.
//  Copyright (c) 2013 StarkWeather. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Coatings : NSObject

@property (strong) NSString *tearOff;
@property (strong) NSString *roofComplexity;
@property (strong) NSString *safetyReqs;
@property (strong) NSString *roofTypeRec;
@property (strong) NSString *manWarranty;
@property (strong) NSString *primeDeck;
@property (assign) float galAsphEmulsionSQS;
@property (assign) float galCoatingSQSbase;
@property (assign) float galCoatingSQSinter;
@property (assign) float galCoatingSQStop;
@property (strong) NSString *coatingManu;
@property (strong) NSString *replaceEdge;
@property (strong) NSString *counterFlashingNew;
@property (strong) NSString *scuppersNew;
@property (assign) int penetrationsSeal;

@end
