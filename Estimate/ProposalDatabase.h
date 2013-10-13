//
//  ProposalDatabase.h
//  Estimate
//
//  Created by Daniel Hahn on 10/3/13.
//  Copyright (c) 2013 StarkWeather. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ProposalDatabase : NSObject{
    
}

+ (NSMutableArray *)loadProposals;
+ (NSString *)nextProposalPath;

@end
