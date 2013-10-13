//
//  Proposal.h
//  Estimate
//
//  Created by Daniel Hahn on 10/3/13.
//  Copyright (c) 2013 StarkWeather. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Estimate;
@class Options;
@class Common;
@class BuiltUpPlyGIC;
@class BuiltUpFileGNC;
@class BuiltUpPlyGIS;
@class BuiltUpPlyGNS;
@class Alumination;
@class Coatings;
@class DuroLast;
@class ThreePlyCold;
@class Foam;
@class SinglePlyPVC;
@class SinglePlyTPO;
@class Torch;

@interface Proposal : NSObject {
    Estimate *_data;
    NSString *_docPath;
    
}

@property (retain) Estimate *data;
@property (copy) NSString *docPath;

- (id)init;
- (id)initWithDocPath:(NSString *)docPath;
//- (id)initWithTitle:(NSString*)title options:(Options *)options common:(Common*)common alumination:(Alumination*)alumination builtupgns:(BuiltUpPlyGNS*)builtupgns builtupgis:(BuiltUpPlyGIS*)builtupgis builtupgic:(BuiltUpPlyGIC*)builtupgic builtupgnc:(BuiltUpFileGNC*)builtupgnc coatings:(Coatings*)coatings durolast:(DuroLast*)durolast threeply:(ThreePlyCold*)threeply foam:(Foam *)foam singlepvc:(SinglePlyPVC*)singlepvc singletpo:(SinglePlyTPO*)singletpo torch:(Torch*)torch;
- (id)initWithTitle:(NSString*)title estimate:(Estimate *)estimate;
- (void)saveData;
- (void)deleteDoc;

@end
