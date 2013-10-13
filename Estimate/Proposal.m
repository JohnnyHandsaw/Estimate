//
//  Proposal.m
//  Estimate
//
//  Created by Daniel Hahn on 10/3/13.
//  Copyright (c) 2013 StarkWeather. All rights reserved.
//

#import "Proposal.h"
#import "Estimate.h"
#import "ProposalDatabase.h"
#import "Options.h"
#import "Common.h"
#import "Alumination.h"
#import "BuiltUpPlyGNS.h"
#import "BuiltUpPlyGIS.h"
#import "BuiltUpPlyGIC.h"
#import "BuiltUpFileGNC.h"
#import "BuiltUpFileGNC.h"
#import "Coatings.h"
#import "DuroLast.h"
#import "ThreePlyCold.h"
#import "Foam.h"
#import "SinglePlyTPO.h"
#import "SinglePlyPVC.h"
#import "Torch.h"

#define kDataKey        @"Data"
#define kDataFile       @"data.plist"


@implementation Proposal

@synthesize data =  _data;
@synthesize docPath = _docPath;

-(id)init {
    if((self = [super init])){
    }
    return self;
}

- (id)initWithDocPath:(NSString *)docPath {
    if ((self = [super init])) {
        _docPath = [docPath copy];
    }
    return self;
}

//- (id)initWithTitle:(NSString*)title options:(Options *)options common:(Common*)common alumination:(Alumination*)alumination builtupgns:(BuiltUpPlyGNS*)builtupgns builtupgis:(BuiltUpPlyGIS*)builtupgis builtupgic:(BuiltUpPlyGIC*)builtupgic builtupgnc:(BuiltUpFileGNC*)builtupgnc coatings:(Coatings*)coatings durolast:(DuroLast*)durolast threeply:(ThreePlyCold*)threeply foam:(Foam *)foam singlepvc:(SinglePlyPVC*)singlepvc singletpo:(SinglePlyTPO*)singletpo torch:(Torch*)torch{
//    if ((self = [super init])) {
//        _data = [[Estimate alloc] initWithTitle:title options:options common:common alumination:alumination builtupgns:builtupgns builtupgis:builtupgis builtupgic:builtupgic builtupgnc:builtupgnc coatings:coatings durolast:durolast threeply:threeply foam:foam singlepvc:singlepvc singletpo:singletpo torch:torch];
//    }
//    return self;
//}
-(id)initWithTitle:(NSString *)title estimate:(Estimate *)estimate{
    if ((self = [super init])) {

        _data = estimate;
        title = [title copy];
    }
    return self;
}

- (BOOL)createDataPath {
    if (_docPath == nil) {
        self.docPath = [ProposalDatabase nextProposalPath];
    }
    
    NSError *error;
    BOOL success = [[NSFileManager defaultManager] createDirectoryAtPath:_docPath withIntermediateDirectories:YES attributes:nil error:&error];
    if (!success) {
        NSLog(@"Error creating data path: %@", [error localizedDescription]);
    }
    return success;
    
}

- (Estimate *)data {
    
    if (_data != nil) return _data;
    
    NSString *dataPath = [_docPath stringByAppendingPathComponent:kDataFile];
    NSData *codedData = [[NSData alloc] initWithContentsOfFile:dataPath];
    if (codedData == nil) return nil;
    
    NSKeyedUnarchiver *unarchiver = [[NSKeyedUnarchiver alloc] initForReadingWithData:codedData];
    _data = [unarchiver decodeObjectForKey:kDataKey];
    [unarchiver finishDecoding];
    
    return _data;
    
}
- (void)saveData {
    
    if (_data == nil) return;
    
    [self createDataPath];
    
    NSString *dataPath = [_docPath stringByAppendingPathComponent:kDataFile];
    NSLog(@"path %@", dataPath);
    NSMutableData *data = [[NSMutableData alloc] init];
    NSKeyedArchiver *archiver = [[NSKeyedArchiver alloc] initForWritingWithMutableData:data];
    [archiver encodeObject:_data forKey:kDataKey];
    [archiver finishEncoding];
    [data writeToFile:dataPath atomically:YES];


    
}

- (void)deleteDoc {
    
    NSError *error;
    BOOL success = [[NSFileManager defaultManager] removeItemAtPath:_docPath error:&error];
    if (!success) {
        NSLog(@"Error removing document path: %@", error.localizedDescription);
    }
    
}

@end
