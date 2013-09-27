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
#define kTitleKey @"Title"
#define kOptionsKey @"Options"
#define kCommonKey @"Common"
#define kAluminationKey @"Alumination"
#define kBuiltUpGNSKey @"Built-up Ply GNS"
#define kBuiltUpGISKey @"Built-up Ply GIS"
#define kBuiltUpGICKey @"Built-up Ply GIC"
#define kBuiltUpGNCKey @"Built-up Ply GNC"
#define kCoatingsKey @"Coating"
#define kDurolastKey @"Durolast"
#define kThreePlyKey @"ThreePly"
#define kFoamKey @"Foam"
#define kSinglePlyPVCKey @"Single Ply PCV"
#define kSinglePlyTPOKey @"Single Ply TPO"
#define kTorchKey @"Torch"


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

-(id)initWithTitle:(NSString *)title dataOptions:(Options *)dataOptions dataCommon:(Common *)dataCommon dataAlumination:(Alumination *)dataAlumination dataBuiltUpPlyGNS:(BuiltUpPlyGNS *)dataBuiltUpPlyGNS dataBuiltUpPlyGIS:(BuiltUpPlyGIS *)dataBuiltUpPlyGIS dataBuiltUpPlyGIC:(BuiltUpPlyGIC *)dataBuiltUpPlyGIC dataBuiltUpPlyGNC:(BuiltUpPlyGNC *)dataBuiltUpPlyGNC dataCoatings:(Coatings *)dataCoatings dataDuroLast:(DuroLast *)dataDuroLast dataThreePlyCold:(ThreePlyCold *)dataThreePlyCold dataFoam:(Foam *)dataFoam dataSinglePlyPVC:(SinglePlyPVC *)dataSinglePlyPVC dataSinglePlyTPO:(SinglePlyTPO *)dataSinglePlyTPO dataTorch:(Torch *)dataTorch{
    if ((self = [super init])) {
        _title = title;
        _dataOptions = dataOptions;
        _dataCommon = dataCommon;
        _dataAlumination = dataAlumination;
        _dataBuiltUpPlyGNS= dataBuiltUpPlyGNS;
        _dataBuiltUpPlyGIS = dataBuiltUpPlyGIS;
        _dataBuiltUpPlyGIC = dataBuiltUpPlyGIC;
        _dataBuiltUpPlyGNC = dataBuiltUpPlyGNC;
        _dataCoatings = dataCoatings;
        _dataDuroLast = dataDuroLast;
        _dataThreePlyCold = dataThreePlyCold;
        _dataFoam = dataFoam;
        _dataSinglePlyPVC = dataSinglePlyPVC;
        _dataSinglePlyTPO = dataSinglePlyTPO;
        _dataTorch = dataTorch;
        
    }
    return self;
}

-(void) encodeWithCoder:(NSCoder* )encoder{
    [encoder encodeObject:_title forKey:kTitleKey];
    [encoder encodeObject:_dataOptions forKey:kOptionsKey];
    [encoder encodeObject:_dataCommon forKey:kCommonKey];
    [encoder encodeObject:_dataAlumination forKey:kAluminationKey];
    [encoder encodeObject:_dataBuiltUpPlyGNS forKey:kBuiltUpGNSKey];
    [encoder encodeObject:_dataBuiltUpPlyGIS forKey:kBuiltUpGISKey];
    [encoder encodeObject:_dataBuiltUpPlyGIC forKey:kBuiltUpGICKey];
    [encoder encodeObject:_dataBuiltUpPlyGNC forKey:kBuiltUpGNCKey];
    [encoder encodeObject:_dataCoatings forKey:kCoatingsKey];
    [encoder encodeObject:_dataDuroLast forKey:kDurolastKey];
    [encoder encodeObject:_dataThreePlyCold forKey:kThreePlyKey];
    [encoder encodeObject:_dataFoam forKey:kFoamKey];
    [encoder encodeObject:_dataSinglePlyPVC forKey:kSinglePlyPVCKey];
    [encoder encodeObject:_dataSinglePlyTPO forKey:kSinglePlyTPOKey];
    [encoder encodeObject:_dataTorch forKey:kTorchKey];
}

-(id)initWithCoder:(NSCoder*)decoder{
   NSString *title =[decoder decodeObjectForKey:kTitleKey];
   Options *dataOptions  =[decoder decodeObjectForKey:kOptionsKey];
   Common *dataCommon =[decoder decodeObjectForKey:kCommonKey];
   Alumination *dataAlumination =[decoder decodeObjectForKey:kAluminationKey];
   BuiltUpPlyGNS *dataBuiltUpPlyGNS =[decoder decodeObjectForKey:kBuiltUpGNSKey];
   BuiltUpPlyGIS *dataBuiltUpPlyGIS =[decoder decodeObjectForKey:kBuiltUpGISKey];
   BuiltUpPlyGIC *dataBuiltUpPlyGIC =[decoder decodeObjectForKey:kBuiltUpGICKey];
    BuiltUpFileGNC *dataBuiltUpPlyGNC =[decoder decodeObjectForKey:kBuiltUpGNCKey];
   Coatings  *dataCoatings =[decoder decodeObjectForKey:kCoatingsKey];
   DuroLast  *dataDuroLast =[decoder decodeObjectForKey:kDurolastKey];
   ThreePlyCold  *dataThreePlyCold =[decoder decodeObjectForKey:kThreePlyKey];
   Foam  *dataFoam =[decoder decodeObjectForKey:kFoamKey];
   SinglePlyPVC  *dataSinglePlyPVC =[decoder decodeObjectForKey:kSinglePlyPVCKey];
   SinglePlyTPO  *dataSinglePlyTPO =[decoder decodeObjectForKey:kSinglePlyTPOKey];
   Torch  *dataTorch =[decoder decodeObjectForKey:kTorchKey];
    
    return [self init];
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
//
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
