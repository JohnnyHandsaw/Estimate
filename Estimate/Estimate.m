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

@synthesize title = title;
@synthesize dataOptions = dataOptions;
@synthesize dataCommon = dataCommon;
@synthesize dataAlumination =  dataAlumination;
@synthesize dataBuiltUpPlyGNS =  dataBuiltUpPlyGNS;
@synthesize dataBuiltUpPlyGIS =  dataBuiltUpPlyGIS;
@synthesize dataBuiltUpPlyGIC =  dataBuiltUpPlyGIC;
@synthesize dataBuiltUpPlyGNC =  dataBuiltUpPlyGNC;
@synthesize dataCoatings =  dataCoatings;
@synthesize dataDuroLast =  dataDuroLast;
@synthesize dataThreePlyCold =  dataThreePlyCold;
@synthesize dataFoam =  dataFoam;
@synthesize dataSinglePlyPVC =  dataSinglePlyPVC;
@synthesize dataSinglePlyTPO =  dataSinglePlyTPO;
@synthesize dataTorch =  dataTorch;
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
