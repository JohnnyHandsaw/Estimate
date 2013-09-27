//
//  Proposal.h
//  Estimate
//
//  Created by Daniel Hahn on 9/26/13.
//  Copyright (c) 2013 StarkWeather. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Estimate;

@interface Proposal : NSObject {
    
    NSString * _docPath;
    Estimate * estimate;
}

@property (retain) Estimate *estimate;
@property (copy) NSString * docPath;
-(id)init;
-(id)initWithTitle:(NSString*)title estimate:(Estimate*)estimate;
-(id)initWithDocPath:(NSString*)docPath;
-(id)saveData;
-(void)deleteDoc;

@end
