//
//  Proposal.m
//  Estimate
//
//  Created by Daniel Hahn on 9/26/13.
//  Copyright (c) 2013 StarkWeather. All rights reserved.
//

#import "Proposal.h"
#import "Estimate.h"
#import "ProposalDatabase.h"
#define kDataKey @"Data"
#define kDataFile @"data.plist"

@implementation Proposal

@synthesize  docPath = _docPath;
@synthesize estimate = _estimate;

-(id)init{
    
    if((self = [super init])){
        
    }
    return self;
}

-(id)initWithDocPath:(NSString *)docPath{
    if ((self = [super init])){
        _docPath = [docPath copy];
    }
}

-(id)initWithTitle:(NSString *)title estimate:(Estimate *)estimate{
    if((self = [super init])){
        _estimate = [[Estimate alloc] init];
    }
    return self;
    
}

-

@end
