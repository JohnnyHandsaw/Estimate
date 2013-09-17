//
//  Options.h
//  Estimate
//
//  Created by Daniel Hahn on 9/11/13.
//  Copyright (c) 2013 StarkWeather. All rights reserved.
//

#import <Foundation/Foundation.h>
#define kalumination @ "Alumination" 
#define kbuiltUpGIC @ "Built Up GIC"
#define kbuiltUpGIS @ "Built Up GIS"
#define kbuiltUpGNC @ "Built Up GNC"
#define KbuiltUpGNS @ "Built Up GNS"
#define kcoatings @ "Coatings"
#define kdurolast @ "Duro-Last"
#define kthreePly @ "3 Ply cold"
#define kfoam @ "Foam"
#define ksinglePVC @ "Single-Ply PVC"
#define ksingleTPO @"Single-Ply TPO"
#define ktorch @ "Torch"

@interface Options : NSObject

@property (assign) int alumination;
@property (assign) int builtUpGIC;
@property (assign) int builtUpGIS;
@property (assign) int builtUpGNC;
@property (assign) int builtUpGNS;
@property (assign) int coatings;
@property (assign) int duroLast;
@property (assign) int threePly;
@property (assign) int foam;
@property (assign) int singlePVC;
@property (assign) int singleTPO;
@property (assign) int torch;

@end

//estimate.dataOptions.alumination
//estimate.dataOptions.builtUpGIC
//estimate.dataOptions.builtUpGIS
//estimate.dataOptions.builtUpGNC
//estimate.dataOptions.builtUpGNS
//estimate.dataOptions.coatings
//estimate.dataOptions.duroLast
//estimate.dataOptions.threePly
//estimate.dataOptions.foam
//estimate.dataOptions.singlePVC
//estimate.dataOptions.singleTPO
//estimate.dataOptions.torch