//
//  Estimate.m
//  Estimate
//
//  Created by Daniel Hahn on 9/11/13.
//  Copyright (c) 2013 StarkWeather. All rights reserved.
//

#import "Estimate.h"
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


@implementation Estimate

@synthesize title = _title;
@synthesize dataOptions = _dataOptions;
@synthesize dataCommon = _dataCommon;
@synthesize dataAlumination =  _dataAlumination;
@synthesize dataBuiltUpPlyGNS =  _dataBuiltUpPlyGNS;
@synthesize dataBuiltUpPlyGIS =  _dataBuiltUpPlyGIS;
@synthesize dataBuiltUpPlyGIC =  _dataBuiltUpPlyGIC;
@synthesize dataBuiltUpPlyGNC =  _dataBuiltUpPlyGNC;
@synthesize dataCoatings =  _dataCoatings;
@synthesize dataDuroLast =  _dataDuroLast;
@synthesize dataThreePlyCold =  _dataThreePlyCold;
@synthesize dataFoam =  _dataFoam;
@synthesize dataSinglePlyPVC =  _dataSinglePlyPVC;
@synthesize dataSinglePlyTPO =  _dataSinglePlyTPO;
@synthesize dataTorch =  _dataTorch;

-(id)initWithTitle:(NSString *)title options:(Options *)options common:(Common *)common alumination:(Alumination *)alumination builtupgns:(BuiltUpPlyGNS *)builtupgns builtupgis:(BuiltUpPlyGIS *)builtupgis builtupgic:(BuiltUpPlyGIC *)builtupgic builtupgnc:(BuiltUpFileGNC *)builtupgnc coatings:(Coatings *)coatings durolast:(DuroLast *)durolast threeply:(ThreePlyCold *)threeply foam:(Foam *)foam singlepvc:(SinglePlyPVC *)singlepvc singletpo:(SinglePlyTPO *)singletpo torch:(Torch *)torch {
    
    if((self = [super init])){
        _title = [title copy];
        _dataOptions = options;
        _dataCommon = common;
        _dataAlumination = alumination;
        _dataBuiltUpPlyGNS = builtupgns;
        _dataBuiltUpPlyGIS = builtupgis;
        _dataBuiltUpPlyGIC = builtupgic;
        _dataBuiltUpPlyGNC = builtupgnc;
        _dataCoatings = coatings;
        _dataDuroLast = durolast;
        _dataThreePlyCold = threeply;
        _dataFoam = foam;
        _dataSinglePlyPVC = singlepvc;
        _dataSinglePlyTPO = singletpo;
        _dataTorch = torch;
        
    }
    return self;
}

#define kTitleKey @"Title"
#define kOptionsKey @"Options"
#define kCommonKey @"Common"
#define kAluminationKey @"Alumination"
#define kTitleKey @"Title"
#define kTitleKey @"Title"
#define kTitleKey @"Title"
#define kTitleKey @"Title"
#define kTitleKey @"Title"
#define kTitleKey @"Title"

#define kTitleKey @"Title"
#define kOptionsKey @"Options"
#define kCommonKey @"Common"
#define kAluminationKey @"Alumination"
#define kBuiltUpPlyGNSKey @"BuiltUpPlyGNS"
#define kBuiltUpPlyGISKey @"BuiltUpPlyGIS"
#define kBuiltUpPlyGICKey @"BuiltUpPlyGIC"
#define kBuiltUpFileGNCKey @"BuiltUpFileGNC"
#define kCoatingsKey @"Coatings"
#define kDuroLastKey @"DuroLast"
#define kThreePlyColdKey @"ThreePlyCold"
#define kFoamKey @"Foam"
#define kSinglePlyTPOKey @"SinglePlyTPO"
#define kSinglePlyPVCKey @"SinglePlyPVC"
#define kTorchKey @"Torch"

-(void)encodeWithCoder:(NSCoder *)encoder{
    [encoder encodeObject:_title forKey:kTitleKey];
    [encoder encodeObject:_dataOptions forKey:kOptionsKey];
    [encoder encodeObject:_dataCommon forKey:kCommonKey];
    [encoder encodeObject:_dataAlumination forKey:kAluminationKey];
    [encoder encodeObject:_dataBuiltUpPlyGNS forKey:kBuiltUpPlyGNSKey];
    [encoder encodeObject:_dataBuiltUpPlyGIS forKey:kBuiltUpPlyGISKey];
    [encoder encodeObject:_dataBuiltUpPlyGIC forKey:kBuiltUpPlyGICKey];
    [encoder encodeObject:_dataBuiltUpPlyGNC forKey:kBuiltUpFileGNCKey];
    [encoder encodeObject:_dataCoatings forKey:kCoatingsKey];
    [encoder encodeObject:_dataDuroLast forKey:kDuroLastKey];
    [encoder encodeObject:_dataThreePlyCold forKey:kThreePlyColdKey];
    [encoder encodeObject:_dataFoam forKey:kFoamKey];
    [encoder encodeObject:_dataSinglePlyPVC forKey:kSinglePlyTPOKey];
    [encoder encodeObject:_dataSinglePlyTPO forKey:kSinglePlyPVCKey];
    [encoder encodeObject:_dataTorch forKey:kTorchKey];
    
}
-(id)initWithCoder:(NSCoder *)decoder{
    
    NSString *title = [decoder decodeObjectForKey:kTitleKey];
    Options *dataOptions = [decoder decodeObjectForKey:kOptionsKey];;
    Common *dataCommon = [decoder decodeObjectForKey:kCommonKey];;
    Alumination *dataAlumination = [decoder decodeObjectForKey:kAluminationKey];;
    BuiltUpPlyGNS *dataBuiltUpPlyGNS = [decoder decodeObjectForKey:kBuiltUpPlyGNSKey];;
    BuiltUpPlyGIS *dataBuiltUpPlyGIS = [decoder decodeObjectForKey:kBuiltUpPlyGISKey];;
    BuiltUpPlyGIC *dataBuiltUpPlyGIC = [decoder decodeObjectForKey:kBuiltUpPlyGICKey];;
    BuiltUpFileGNC *dataBuiltUpPlyGNC = [decoder decodeObjectForKey:kBuiltUpFileGNCKey];;
    Coatings  *dataCoatings = [decoder decodeObjectForKey:kCoatingsKey];;
    DuroLast  *dataDuroLast = [decoder decodeObjectForKey:kDuroLastKey];;
    ThreePlyCold  *dataThreePlyCold = [decoder decodeObjectForKey:kThreePlyColdKey];;
    Foam  *dataFoam = [decoder decodeObjectForKey:kFoamKey];;
    SinglePlyPVC  *dataSinglePlyPVC = [decoder decodeObjectForKey:kSinglePlyTPOKey];;
    SinglePlyTPO  *dataSinglePlyTPO = [decoder decodeObjectForKey:kSinglePlyPVCKey];;
    Torch  *dataTorch = [decoder decodeObjectForKey:kTorchKey];
    
    return [self initWithTitle:title options:dataOptions common:dataCommon alumination:dataAlumination builtupgns:dataBuiltUpPlyGNS builtupgis:dataBuiltUpPlyGIS builtupgic:dataBuiltUpPlyGIC builtupgnc:dataBuiltUpPlyGNC coatings:dataCoatings durolast:dataDuroLast threeply:dataThreePlyCold foam:dataFoam singlepvc:dataSinglePlyPVC singletpo:dataSinglePlyTPO torch:dataTorch];
}

//
//-(id)initWithObjects:(NSObject *)estimate options:(Options *)options common:(Common *)common alumination:(Alumination *)alumination builtUpPlyGNS:(BuiltUpPlyGNS *)builtUpPlyGNS builtUpPlyGIS:(BuiltUpPlyGIS *)builtUpPlyGIS builtUpPlyGIC:(BuiltUpPlyGIC *)builtUpPlyGIC builtUpPlyGNC:(BuiltUpFileGNC *)builtUpPlyGNC coatings:(Coatings *)coatings duroLast:(DuroLast *)duroLast threePlyCold:(ThreePlyCold *)threePlyCold foam:(Foam *)foam singlePlyPVC:(SinglePlyPVC *)singlePlyPVC singlePlyTPO:(SinglePlyTPO *)singlePlyTPO torch:(Torch *)torch
//{
//    if((self = [super init])) {
//        self.dataOptions = [[Options alloc]init];
//        self.dataCommon = [[Common alloc]init];
//        self.dataAlumination =  [[Alumination alloc]init];
//        self.dataBuiltUpPlyGNS =  [[BuiltUpPlyGNS alloc]init];
//        self.dataBuiltUpPlyGIS =  [[BuiltUpPlyGIS alloc]init];
//        self.dataBuiltUpPlyGIC =  [[BuiltUpPlyGIC alloc]init];
//        self.dataBuiltUpPlyGNC =  [[BuiltUpFileGNC alloc]init];
//        self.dataCoatings =  [[Coatings alloc]init];
//        self.dataDuroLast =  [[DuroLast alloc]init];
//        self.dataThreePlyCold =  [[ThreePlyCold alloc]init];
//        self.dataFoam =  [[Foam alloc]init];;
//        self.dataSinglePlyPVC =  [[SinglePlyPVC alloc]init];
//        self.dataSinglePlyTPO =  [[SinglePlyTPO alloc]init];
//        self.dataTorch =  [[Torch alloc]init];
//    }
//    return self;
//}

-(id)init{
    if((self = [super init])) {
        self.dataOptions = [[Options alloc]init];
        self.dataCommon = [[Common alloc]init];
        self.dataAlumination =  [[Alumination alloc]init];
        self.dataBuiltUpPlyGNS =  [[BuiltUpPlyGNS alloc]init];
        self.dataBuiltUpPlyGIS =  [[BuiltUpPlyGIS alloc]init];
        self.dataBuiltUpPlyGIC =  [[BuiltUpPlyGIC alloc]init];
        self.dataBuiltUpPlyGNC =  [[BuiltUpFileGNC alloc]init];
        self.dataCoatings =  [[Coatings alloc]init];
        self.dataDuroLast =  [[DuroLast alloc]init];
        self.dataThreePlyCold =  [[ThreePlyCold alloc]init];
        self.dataFoam =  [[Foam alloc]init];;
        self.dataSinglePlyPVC =  [[SinglePlyPVC alloc]init];
        self.dataSinglePlyTPO =  [[SinglePlyTPO alloc]init];
        self.dataTorch =  [[Torch alloc]init];
    }
    return self;
}
//
//


@end
