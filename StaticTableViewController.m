//
//  StaticTableViewController.m
//  Estimate
//
//  Created by Daniel Hahn on 9/3/13.
//  Copyright (c) 2013 StarkWeather. All rights reserved.
//

#import "StaticTableViewController.h"
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
#import "Proposal.h"
#import "MasterViewController.h"
#import "AppDelegate.h"

@interface StaticTableViewController ()

@end

@implementation StaticTableViewController

@synthesize estimate;
@synthesize doc;
@synthesize pickerArray;

@synthesize optionsArray;
@synthesize pickerView;
@synthesize inputView;
//@synthesize standardKeyBoard;
@synthesize cityOptions;
@synthesize deckTypeArray;
//@synthesize release;
@synthesize done;

@synthesize city;
@synthesize projectName;
@synthesize deckType;
@synthesize roofSQS;
@synthesize baseFlash;
@synthesize wallsFeet;
@synthesize curbFeet;
@synthesize edgeFeet;
@synthesize copingFeet;
@synthesize curbUnit;
@synthesize slopeUnit;
@synthesize leadJacks;
@synthesize sealantPans;
@synthesize drains;
@synthesize pipes;
@synthesize cladScuppers;
@synthesize scuppers;
@synthesize tTopVents;
@synthesize corners;
@synthesize skylights;
@synthesize skylightsReplace;

@synthesize tearOff;
@synthesize roofComplex;
@synthesize safetyReqs;
@synthesize alum_seemsFeet;
@synthesize alum_sideLaps;
@synthesize alum_manualFasteners;


@synthesize gic_tearOff;
@synthesize gic_roofComplex;
@synthesize gic_roofRec;
@synthesize gic_safetyReq;
@synthesize gic_manuWarranty;
@synthesize gic_plysheet;
@synthesize gic_thickBase;
@synthesize gic_baseApply;
@synthesize gic_thick2nd;
@synthesize gic_apply2nd;
@synthesize gic_thickRec;
@synthesize gic_recApply;
@synthesize gic_galCoating;
@synthesize gic_coatingManu;
@synthesize gic_smallChemCurb;
@synthesize gic_largeChemCurb;

@synthesize gis_tearOff;
@synthesize gis_roofComplex;
@synthesize gis_safetyReq;
@synthesize gis_roofRec;
@synthesize gis_manuWarranty;
@synthesize gis_plysheet;
@synthesize gis_thickBase;
@synthesize gis_baseApply;
@synthesize gis_2ndThick;
@synthesize gis_apply2nd;
@synthesize gis_recThick;
@synthesize gis_applyRec;
@synthesize gis_galCoating;
@synthesize gis_galAsphalt;
@synthesize gis_coatingManu;
@synthesize gis_fasteners;
@synthesize gis_smallChem;
@synthesize gis_largeChem;
@synthesize gnc_tearOff;
@synthesize gnc_roofComplex;
@synthesize gnc_safetyReq;
@synthesize gnc_roofRec;
@synthesize gnc_warrantyManu;
@synthesize gnc_plysheet;
@synthesize gnc_galCoating;
@synthesize gnc_coatingManu;
@synthesize gnc_smallChem;
@synthesize gnc_largeChem;
@synthesize gns_tearOff;
@synthesize gns_roofComplex;
@synthesize gns_safetyReq;
@synthesize gns_roofRec;
@synthesize gns_warrantyManu;
@synthesize gns_plysheet;
@synthesize gns_galCoating;
@synthesize gns_galAshpalt;
@synthesize gns_coatingManu;
@synthesize gns_smallChem;
@synthesize gns_largeChem;
@synthesize coating_tearOff;
@synthesize coating_roofComplex;
@synthesize coating_safetyReq;
@synthesize coating_roofRec;
@synthesize coating_warrantyManu;

@synthesize coating_primeDeck;
@synthesize coating_sqsBase;
@synthesize coating_sqsInt;
@synthesize coating_sqsTop;
@synthesize coating_coatingManu;
@synthesize coating_replaceMetal;
@synthesize coating_counterFlash;
@synthesize coating_newScup;
@synthesize coating_penetration;
@synthesize coating_smallChem;
@synthesize coating_largeChem;
@synthesize dl_wallsqs;
@synthesize dl_wallHeight;
@synthesize dl_curbFlash;
@synthesize dl_acUnits;
@synthesize dl_pipeBoots;
@synthesize dl_insuSQS;
@synthesize dl_slipSheet;
@synthesize dl_walkPad;
@synthesize dl_rollMem;
@synthesize dl_galBond;
@synthesize dl_screws;
@synthesize dl_polyPlates;
@synthesize dl_tubeCaulk;
@synthesize dl_pailStrip;
@synthesize dl_pitchPan;
@synthesize dl_cleaner;
@synthesize dl_bagBands;
@synthesize dl_woodBlock;
@synthesize dl_drainRings;
@synthesize dl_sheetCover;
@synthesize cold_baseFlash;
@synthesize cold_acUnits;
@synthesize cold_pitchPans;
@synthesize cold_roofJacks;
@synthesize cold_drainScup;
@synthesize foam_baseFlash;
@synthesize foam_wallHeight;
@synthesize foam_pipes;
@synthesize foam_acUnits;
@synthesize foam_depth;
@synthesize pvc_tearOff;
@synthesize pvc_roofComplex;
@synthesize pvc_safetyReq;
@synthesize pvc_roofRec;
@synthesize pvc_warrantyManu;
@synthesize pvc_millSheet;
@synthesize pvc_slipSheet;
@synthesize pvc_sheetManu;
@synthesize pvc_thickBase;
@synthesize pvc_baseApply;
@synthesize pvc_2ndthick;
@synthesize pvc_2ndApply;
@synthesize pvc_recThick;
@synthesize pvc_recApply;
@synthesize pvc_seamFast;
@synthesize pvc_cricket;
@synthesize pvc_perimSheet;
@synthesize pvc_pipeBoots;
@synthesize pvc_walkPads;
@synthesize tpo_tearOff;
@synthesize tpo_roofComplex;
@synthesize tpo_safetyReq;
@synthesize tpo_roofRec;
@synthesize tpo_warrantyManu;
@synthesize tpo_millSheet;
@synthesize tpo_slipSheet;
@synthesize tpo_sheetManu;
@synthesize tpo_thickbase;
@synthesize tpo_baseApply;
@synthesize tpo_2ndthick;
@synthesize tpo_2ndApply;
@synthesize tpo_recThick;
@synthesize tpo_recApply;
@synthesize tpo_seamFast;
@synthesize tpo_cricket;
@synthesize tpo_perimSheet;
@synthesize tpo_pipeBoots;
@synthesize tpo_walkPads;
@synthesize torch_baseFlash;
@synthesize torch_acUnits;
@synthesize torch_pitchPans;
@synthesize torch_roofJacks;
@synthesize torch_drainLeads;

#define SECTION_alumination 1
#define SECTION_builtUpGIC 2
#define SECTION_builtUpGIS 3
#define SECTION_builtUpGNC 4
#define SECTION_builtUpGNS 5
#define SECTION_coatings 6
#define SECTION_duroLast 7
#define SECTION_threePly 8
#define SECTION_foam 9
#define SECTION_singlePVC 10
#define SECTION_singleTPO 11
#define SECTION_torch 12
#define COMMON_JOBNAME 1000
#define PICKER_CITY 1000
#define PICKER_DECKTYPE 1001
#define COMMON_ROOFSQS 1001
#define COMMON_baseFlash 1002
#define COMMON_wallsFeet 1003
#define COMMON_curbFeet 1004
#define COMMON_edgeFeet 1005
#define COMMON_copingFeet 1006
#define COMMON_curbUnit 1007
#define COMMON_slopeUnit 1008
#define COMMON_leadJacks 1009
#define COMMON_sealantPans 1010
#define COMMON_drains 1011
#define COMMON_pipes 1012
#define COMMON_cladScuppers 1013
#define COMMON_scuppers 1014
#define COMMON_tTopVents 1015
#define COMMON_corners 1016
#define COMMON_skylights 1017
#define COMMON_skylightsReplace 1018
#define ALUM_tearOff 1100
#define ALUM_roofComplexity 1101
#define ALUM_safetyReqs 1102
#define ALUM_seamsFeet 1103
#define ALUM_sideLapsRepair 1104
#define ALUM_manualFasteners 1105

#define GIC_tearOff 1200
#define GIC_roofComplex 1201
#define GIC_safetyReq 1202
#define GIC_roofRec 1203
#define GIC_manuWarranty 1204
#define GIC_plysheet 1205
#define GIC_thickBase 1206
#define GIC_baseApply 1207
#define GIC_thick2nd 1208
#define GIC_apply2nd 1209
#define GIC_thickRec 1210
#define GIC_recApply 1211
#define GIC_galCoating 1212
#define GIC_coatingManu 1213
#define GIC_smallChemCurb 1214
#define GIC_largeChemCurb 1215

#define GIS_tearOff 1300
#define GIS_roofComplex 1301
#define GIS_safetyReq 1302
#define GIS_roofRec 1303
#define GIS_manuWarranty 1304
#define GIS_plysheet 1305
#define GIS_thickBase 1306
#define GIS_baseApply 1307
#define GIS_2ndThick 1308
#define GIS_apply2nd 1309
#define GIS_recThick 1310
#define GIS_applyRec 1311
#define GIS_galCoating 1312
#define GIS_galAsphalt 1313
#define GIS_coatingManu 1314
#define GIS_fasteners 1315
#define GIS_smallChem 1316
#define GIS_largeChem 1317

#define GNC_tearOff 1400
#define GNC_roofComplex 1401
#define GNC_safetyReq 1402
#define GNC_roofRec 1403
#define GNC_warrantyManu 1404
#define GNC_plysheet 1405
#define GNC_galCoating 1406
#define GNC_coatingManu 1407
#define GNC_smallChem 1408
#define GNC_largeChem 1409

#define GNS_tearOff 1500
#define GNS_roofComplex 1501
#define GNS_safetyReq 1502
#define GNS_roofRec 1503
#define GNS_warrantyManu 1504
#define GNS_plysheet 1505
#define GNS_galCoating 1506
#define GNS_galAshpalt 1507
#define GNS_coatingManu 1508
#define GNS_smallChem 1509
#define GNS_largeChem 1510

#define COATING_tearOff 1600
#define COATING_roofComplex 1601
#define COATING_safetyReq 1602
#define COATING_roofRec 1603
#define COATING_warrantyManu 1604

#define COATING_primeDeck 1605
#define COATING_sqsBase 1606
#define COATING_sqsInt 1607
#define COATING_sqsTop 1608
#define COATING_coatingManu 1609
#define COATING_replaceMetal 1610
#define COATING_counterFlash 1611
#define COATING_newScup 1612
#define COATING_penetration 1613
#define COATING_smallChem 1614
#define COATING_largeChem 1615
#define DL_wallsqs 1700
#define DL_wallHeight 1701
#define DL_curbFlash 1702
#define DL_acUnits 1703
#define DL_pipeBoots 1704
#define DL_insuSQS 1705
#define DL_slipSheet 1706
#define DL_walkPad 1707
#define DL_rollMem 1708
#define DL_galBond 1709
#define DL_screws 1710
#define DL_polyPlates 1711
#define DL_tubeCaulk 1712
#define DL_pailStrip 1713
#define DL_pitchPan 1714
#define DL_cleaner 1715
#define DL_bagBands 1716
#define DL_woodBlock 1717
#define DL_drainRings 1718
#define DL_sheetCover 1719
#define COLD_baseFlash 1800
#define COLD_acUnits 1801
#define COLD_pitchPans 1802
#define COLD_roofJacks 1803
#define COLD_drainScup 1804
#define FOAM_baseFlash 1900
#define FOAM_wallHeight 1901
#define FOAM_pipes 1902
#define FOAM_acUnits 1903
#define FOAM_depth 1904
#define PVC_tearOff 2000
#define PVC_roofComplex 2001
#define PVC_safetyReq 2002
#define PVC_roofRec 2003
#define PVC_warrantyManu 2004
#define PVC_millSheet 2005
#define PVC_slipSheet 2006
#define PVC_sheetManu 2007
#define PVC_thickBase 2008
#define PVC_baseApply 2009
#define PVC_2ndthick 2010
#define PVC_2ndApply 2011
#define PVC_recThick 2012
#define PVC_recApply 2013
#define PVC_seamFast 2014
#define PVC_cricket 2015
#define PVC_perimSheet 2016
#define PVC_pipeBoots 2017
#define PVC_walkPads 2018

#define TPO_tearOff 2100
#define TPO_roofComplex 2101
#define TPO_safetyReq 2102
#define TPO_roofRec 2103
#define TPO_warrantyManu 2104
#define TPO_millSheet 2105
#define TPO_slipSheet 2106
#define TPO_sheetManu 2107
#define TPO_thickbase 2108
#define TPO_baseApply 2109
#define TPO_2ndthick 2110
#define TPO_2ndApply 2111
#define TPO_recThick 2112
#define TPO_recApply 2113
#define TPO_seamFast 2114
#define TPO_cricket 2115
#define TPO_perimSheet 2116
#define TPO_pipeBoots 2117
#define TPO_walkPads 2118

#define TORCH_baseFlash 2200
#define TORCH_acUnits 2201
#define TORCH_pitchPans 2202
#define TORCH_roofJacks 2203
#define TORCH_drainLeads 2204
 
- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    UITapGestureRecognizer *tapRecognizer = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tap:)];
    [self.view addGestureRecognizer:tapRecognizer];
    
    [super viewDidLoad];
    
    if(estimate.saved > 0){
        city.text = estimate.dataCommon.city;
        projectName.text = estimate.dataCommon.jobName;
        deckType.text = estimate.dataCommon.deckType;
        
        roofSQS.text = [NSString stringWithFormat:@"%1.6f",estimate.dataCommon.roofSQS];
        baseFlash.text = [NSString stringWithFormat:@"%1.6f",estimate.dataCommon.baseFlash];
        wallsFeet.text = [NSString stringWithFormat:@"%1.6f",estimate.dataCommon.wallsFeet];
        curbFeet.text = [NSString stringWithFormat:@"%1.6f",estimate.dataCommon.curbFeet];
        edgeFeet.text = [NSString stringWithFormat:@"%1.6f",estimate.dataCommon.edgeFeet];
        copingFeet.text = [NSString stringWithFormat:@"%1.6f",estimate.dataCommon.copingFeet];
        curbUnit.text = [NSString stringWithFormat:@"%d",estimate.dataCommon.curbUnit];
        slopeUnit.text = [NSString stringWithFormat:@"%d",estimate.dataCommon.slopeUnit];
        leadJacks.text = [NSString stringWithFormat:@"%d",estimate.dataCommon.leadJacks];
        sealantPans.text = [NSString stringWithFormat:@"%d",estimate.dataCommon.sealantPans];
        drains.text = [NSString stringWithFormat:@"%d",estimate.dataCommon.drains];
        pipes.text = [NSString stringWithFormat:@"%d",estimate.dataCommon.pipes];
        cladScuppers.text = [NSString stringWithFormat:@"%d",estimate.dataCommon.cladScuppers];
        scuppers.text = [NSString stringWithFormat:@"%d",estimate.dataCommon.scuppers];
        tTopVents.text = [NSString stringWithFormat:@"%d",estimate.dataCommon.tTopVents];
        corners.text = [NSString stringWithFormat:@"%d",estimate.dataCommon.corners];
        skylights.text = [NSString stringWithFormat:@"%d",estimate.dataCommon.skylights];
        skylightsReplace.text = [NSString stringWithFormat:@"%d",estimate.dataCommon.skylightsReplace];
        
        tearOff.text = estimate.dataAlumination.tearOff;
        roofComplex.text = estimate.dataAlumination.roofComplexity;
        safetyReqs.text = estimate.dataAlumination.safetyReqs;
        alum_seemsFeet.text = [NSString stringWithFormat:@"%1.6f",estimate.dataAlumination.seamsFeet];
        alum_sideLaps.text = [NSString stringWithFormat:@"%d",estimate.dataAlumination.sideLapsRepair];
        alum_manualFasteners.text = [NSString stringWithFormat:@"%d",estimate.dataAlumination.manualFasteners];

        gic_tearOff.text = estimate.dataBuiltUpPlyGIC.tearOff;
        gic_roofComplex.text = estimate.dataBuiltUpPlyGIC.roofComplexity;
        gic_roofRec.text = estimate.dataBuiltUpPlyGIC.roofTypeRec;
        gic_safetyReq.text = estimate.dataBuiltUpPlyGIC.safetyReqs;
        gic_manuWarranty.text = estimate.dataBuiltUpPlyGIC.manWarranty;
        gic_plysheet.text = estimate.dataBuiltUpPlyGIC.plySheet;
        gic_thickBase.text = [NSString stringWithFormat:@"%1.6f",estimate.dataBuiltUpPlyGIC.baseThickness];
        gic_baseApply.text = estimate.dataBuiltUpPlyGIC.baseInsuApply;
        gic_thick2nd.text = [NSString stringWithFormat:@"%1.6f",estimate.dataBuiltUpPlyGIC.secondThick];
        gic_apply2nd.text = estimate.dataBuiltUpPlyGIC.secondInsuApply;
        gic_thickRec.text = [NSString stringWithFormat:@"%1.6f",estimate.dataBuiltUpPlyGIC.recoverThickness];
        gic_recApply.text = estimate.dataBuiltUpPlyGIC.recoverApply;
        gic_galCoating.text = [NSString stringWithFormat:@"%1.6f",estimate.dataBuiltUpPlyGIC.galCoatingSQStot];
        gic_coatingManu.text = estimate.dataBuiltUpPlyGIC.coatingManu;
        gic_smallChemCurb.text = [NSString stringWithFormat:@"%1.6d",estimate.dataBuiltUpPlyGIC.smallChemCurb];
        gic_largeChemCurb.text  = [NSString stringWithFormat:@"%1.6d",estimate.dataBuiltUpPlyGIC.largeChemCurb];
        
        gis_tearOff.text = estimate.dataBuiltUpPlyGIS.tearOff;
        gis_roofComplex.text = estimate.dataBuiltUpPlyGIS.roofComplexity;
        gis_safetyReq.text = estimate.dataBuiltUpPlyGIS.safetyReqs;
        gis_roofRec.text = estimate.dataBuiltUpPlyGIS.roofTypeRec;
        gis_manuWarranty.text = estimate.dataBuiltUpPlyGIS.manWarranty;
        gis_plysheet.text = estimate.dataBuiltUpPlyGIS.plySheet;
        gis_thickBase.text = [NSString stringWithFormat:@"%1.6f",estimate.dataBuiltUpPlyGIS.baseThickness];
        gis_baseApply.text = estimate.dataBuiltUpPlyGIS.baseInsuApply;
        gis_2ndThick.text = [NSString stringWithFormat:@"%1.6f",estimate.dataBuiltUpPlyGIS.secondThick];
        gis_apply2nd.text = estimate.dataBuiltUpPlyGIS.secondInsuApply;
        gis_recThick.text = [NSString stringWithFormat:@"%1.6f",estimate.dataBuiltUpPlyGIS.recoverThickness] ;
        gis_applyRec.text = estimate.dataBuiltUpPlyGIS.recoverApply;
        gis_galCoating.text = [NSString stringWithFormat:@"%1.6f",estimate.dataBuiltUpPlyGIS.galCoatingSQStot];
        gis_galAsphalt.text = [NSString stringWithFormat:@"%1.6f",estimate.dataBuiltUpPlyGIS.galAsphEmulsionSQS];
        gis_coatingManu.text = estimate.dataBuiltUpPlyGIS.coatingManu;
        gis_fasteners.text = [NSString stringWithFormat:@"%1.6d",estimate.dataBuiltUpPlyGIS.fastenersSQS];
        gis_smallChem.text = [NSString stringWithFormat:@"%1.6d",estimate.dataBuiltUpPlyGIS.smallChemCurb];
        gis_largeChem.text  = [NSString stringWithFormat:@"%1.6d",estimate.dataBuiltUpPlyGIS.largeChemCurb];
        gnc_tearOff.text = estimate.dataBuiltUpPlyGNC.tearOff;
        gnc_roofComplex.text = estimate.dataBuiltUpPlyGNC.roofComplexity;
        gnc_safetyReq.text = estimate.dataBuiltUpPlyGNC.safetyReqs;
        gnc_roofRec.text = estimate.dataBuiltUpPlyGNC.roofTypeRec;
        gnc_warrantyManu.text = estimate.dataBuiltUpPlyGNC.manWarranty;
        gnc_plysheet.text = estimate.dataBuiltUpPlyGNC.plySheet;
        gnc_galCoating.text = [NSString stringWithFormat:@"%1.6f",estimate.dataBuiltUpPlyGNC.galCoatingSQStot];
        gnc_coatingManu.text = estimate.dataBuiltUpPlyGNC.coatingManu;
        gnc_smallChem.text = [NSString stringWithFormat:@"%1.6d",estimate.dataBuiltUpPlyGNC.smallChemCurb] ;
        gnc_largeChem.text = [NSString stringWithFormat:@"%1.6d",estimate.dataBuiltUpPlyGNC.largeChemCurb];
        
        gns_tearOff.text = estimate.dataBuiltUpPlyGNS.tearOff;
        gns_roofComplex.text = estimate.dataBuiltUpPlyGNS.roofComplexity;
        gns_safetyReq.text = estimate.dataBuiltUpPlyGNS.safetyReqs ;
        gns_roofRec.text = estimate.dataBuiltUpPlyGNS.roofTypeRec;
        gns_warrantyManu.text = estimate.dataBuiltUpPlyGNS.manWarranty;
        gns_plysheet.text = estimate.dataBuiltUpPlyGNS.plySheet;
        gns_galCoating.text = [NSString stringWithFormat:@"%1.6f",estimate.dataBuiltUpPlyGNS.galCoatingSQStot];
        gns_galAshpalt.text = [NSString stringWithFormat:@"%1.6f",estimate.dataBuiltUpPlyGNS.galAsphEmulsionSQS];
        gns_coatingManu.text = estimate.dataBuiltUpPlyGNS.coatingManu;
        gns_smallChem.text = [NSString stringWithFormat:@"%1.6d",estimate.dataBuiltUpPlyGNS.smallChemCurb];
        gns_largeChem.text = [NSString stringWithFormat:@"%1.6d",estimate.dataBuiltUpPlyGNS.largeChemCurb];
        NSLog(@"Coatings %@", estimate.dataCoatings.tearOff);
        coating_tearOff.text = estimate.dataCoatings.tearOff;
        coating_roofComplex.text = estimate.dataCoatings.roofComplexity;
        coating_safetyReq.text = estimate.dataCoatings.safetyReqs;
        coating_roofRec.text = estimate.dataCoatings.roofTypeRec;
        coating_warrantyManu.text = estimate.dataCoatings.manWarranty;
        
        coating_primeDeck.text = estimate.dataCoatings.primeDeck;
        coating_sqsBase.text = [NSString stringWithFormat:@"%1.6f",estimate.dataCoatings.galCoatingSQSbase];
        coating_sqsInt.text = [NSString stringWithFormat:@"%1.6f",estimate.dataCoatings.galCoatingSQSinter];
        coating_sqsTop.text = [NSString stringWithFormat:@"%1.6f",estimate.dataCoatings.galCoatingSQStop];
        coating_coatingManu.text = estimate.dataCoatings.coatingManu;
        coating_replaceMetal.text = estimate.dataCoatings.replaceEdge;
        coating_counterFlash.text = estimate.dataCoatings.counterFlashingNew;
        coating_newScup.text = estimate.dataCoatings.scuppersNew;
        coating_penetration.text = [NSString stringWithFormat:@"%1.6d",estimate.dataCoatings.penetrationsSeal];
        coating_smallChem.text = [NSString stringWithFormat:@"%1.6d",estimate.dataCoatings.smallChemCurb];
        coating_largeChem.text = [NSString stringWithFormat:@"%1.6d",estimate.dataCoatings.largeChemCurb];
        
        dl_wallsqs.text = [NSString stringWithFormat:@"%1.6f",estimate.dataDuroLast.wallSQS];
        dl_wallHeight.text = [NSString stringWithFormat:@"%1.6f",estimate.dataDuroLast.wallHeight];
        dl_curbFlash.text = [NSString stringWithFormat:@"%1.6d",estimate.dataDuroLast.curbFlashings];
        dl_acUnits.text = [NSString stringWithFormat:@"%1.6d",estimate.dataDuroLast.acUnits];
        dl_pipeBoots.text = [NSString stringWithFormat:@"%1.6d",estimate.dataDuroLast.pipeBoots];
        dl_insuSQS.text = [NSString stringWithFormat:@"%1.6f",estimate.dataDuroLast.insuSQS];
        dl_slipSheet.text = [NSString stringWithFormat:@"%1.6f",estimate.dataDuroLast.slipSheet];
        dl_walkPad.text = [NSString stringWithFormat:@"%1.6f",estimate.dataDuroLast.walkPads];
        dl_rollMem.text = [NSString stringWithFormat:@"%1.6f",estimate.dataDuroLast.rollsSixMembrane];
        dl_galBond.text = [NSString stringWithFormat:@"%1.6f",estimate.dataDuroLast.galBondingAdhesive];
        dl_screws.text = [NSString stringWithFormat:@"%1.6d",estimate.dataDuroLast.screws];
        dl_polyPlates.text = [NSString stringWithFormat:@"%1.6d",estimate.dataDuroLast.polyPlates];
        dl_tubeCaulk.text = [NSString stringWithFormat:@"%1.6d",estimate.dataDuroLast.tubesCaulk];
        dl_pailStrip.text = [NSString stringWithFormat:@"%1.6d",estimate.dataDuroLast.pailsStripMastic];
        dl_pitchPan.text = [NSString stringWithFormat:@"%1.6d",estimate.dataDuroLast.pitchPanFiller];
        dl_cleaner.text = [NSString stringWithFormat:@"%1.6f",estimate.dataDuroLast.cleaner];
        dl_bagBands.text = [NSString stringWithFormat:@"%1.6f",estimate.dataDuroLast.bagBands];
        dl_woodBlock.text = [NSString stringWithFormat:@"%1.6d",estimate.dataDuroLast.woodBlocking];
        dl_drainRings.text = [NSString stringWithFormat:@"%1.6d",estimate.dataDuroLast.drainRings];
        dl_sheetCover.text = [NSString stringWithFormat:@"%1.6d",estimate.dataDuroLast.sheetsCoverBoard];
        
        cold_baseFlash.text = [NSString stringWithFormat:@"%1.6f",estimate.dataThreePlyCold.baseFlashSQS];
        cold_acUnits.text = [NSString stringWithFormat:@"%1.6d",estimate.dataThreePlyCold.acUnits];
        cold_pitchPans.text = [NSString stringWithFormat:@"%1.6d",estimate.dataThreePlyCold.pitchPans];
        cold_roofJacks.text = [NSString stringWithFormat:@"%1.6d",estimate.dataThreePlyCold.roofJacks];
        cold_drainScup.text = [NSString stringWithFormat:@"%1.6d",estimate.dataThreePlyCold.drainScuppers];
        
        foam_baseFlash.text = [NSString stringWithFormat:@"%1.6f",estimate.dataFoam.baseFlashSQS];
        foam_wallHeight.text = [NSString stringWithFormat:@"%1.6f",estimate.dataFoam.wallHeight];
        foam_pipes.text = [NSString stringWithFormat:@"%1.6d",estimate.dataFoam.pipes];
        foam_acUnits.text = [NSString stringWithFormat:@"%1.6d",estimate.dataFoam.acUnits];
        foam_depth.text = [NSString stringWithFormat:@"%1.6f",estimate.dataFoam.foamDepth];
        
        pvc_tearOff.text = estimate.dataSinglePlyPVC.tearOff;
        pvc_roofComplex.text = estimate.dataSinglePlyPVC.roofComplexity;
        pvc_safetyReq.text = estimate.dataSinglePlyPVC.safetyReqs;
        pvc_roofRec.text = estimate.dataSinglePlyPVC.roofTypeRec;
        pvc_warrantyManu.text = estimate.dataSinglePlyPVC.manWarranty;
        pvc_millSheet.text = [NSString stringWithFormat:@"%1.6d",estimate.dataSinglePlyPVC.millSheets];
        pvc_slipSheet.text = estimate.dataSinglePlyPVC.slipSheetType;
        pvc_sheetManu.text = estimate.dataSinglePlyPVC.sheetManu;
        pvc_thickBase.text = [NSString stringWithFormat:@"%1.6f",estimate.dataSinglePlyPVC.baseThickness];
        pvc_baseApply.text = estimate.dataSinglePlyPVC.baseInsuApply;
        pvc_2ndthick.text = [NSString stringWithFormat:@"%1.6f",estimate.dataSinglePlyPVC.secondThick   ];
        pvc_2ndApply.text = estimate.dataSinglePlyPVC.secondInsuApply;
        pvc_recThick.text = [NSString stringWithFormat:@"%1.6f",estimate.dataSinglePlyPVC.recoverThickness  ];
        pvc_recApply.text = estimate.dataSinglePlyPVC.recoverApply;
        pvc_seamFast.text = [NSString stringWithFormat:@"%1.6d",estimate.dataSinglePlyPVC.seamFastenerInchCenter    ];
        pvc_cricket.text = estimate.dataSinglePlyPVC.crickets   ;
        pvc_perimSheet.text = [NSString stringWithFormat:@"%1.6d",estimate.dataSinglePlyPVC.perimeterSheets];
        pvc_pipeBoots.text = [NSString stringWithFormat:@"%1.6d",estimate.dataSinglePlyPVC.pipeBoots];
        pvc_walkPads.text = [NSString stringWithFormat:@"%1.6f",estimate.dataSinglePlyPVC.walkPads];
        
        tpo_tearOff.text = estimate.dataSinglePlyTPO.tearOff;
        tpo_roofComplex.text = estimate.dataSinglePlyTPO.roofComplexity;
        tpo_safetyReq.text = estimate.dataSinglePlyTPO.safetyReqs   ;
        tpo_roofRec.text = estimate.dataSinglePlyTPO.roofTypeRec;
        tpo_warrantyManu.text = estimate.dataSinglePlyTPO.manWarranty;
        tpo_millSheet.text = [NSString stringWithFormat:@"%1.6d",estimate.dataSinglePlyTPO.millSheets];
        tpo_slipSheet.text = estimate.dataSinglePlyTPO.slipSheetType;
        tpo_sheetManu.text = estimate.dataSinglePlyTPO.sheetManu;
        tpo_thickbase.text = [NSString stringWithFormat:@"%1.6f",estimate.dataSinglePlyTPO.baseThickness];
        tpo_baseApply.text = estimate.dataSinglePlyTPO.baseInsuApply;
        tpo_2ndthick.text = [NSString stringWithFormat:@"%1.6f",estimate.dataSinglePlyTPO.secondThick];
        tpo_2ndApply.text = estimate.dataSinglePlyTPO.secondInsuApply;
        tpo_recThick.text = [NSString stringWithFormat:@"%1.6f",estimate.dataSinglePlyTPO.recoverThickness];
        tpo_recApply.text = estimate.dataSinglePlyTPO.recoverApply;
        tpo_seamFast.text = [NSString stringWithFormat:@"%1.6d",estimate.dataSinglePlyTPO.seamFastenerInchCenter]   ;
        tpo_cricket.text = estimate.dataSinglePlyTPO.crickets;
        tpo_perimSheet.text = [NSString stringWithFormat:@"%1.6d",estimate.dataSinglePlyTPO.perimeterSheets];
        tpo_pipeBoots.text = [NSString stringWithFormat:@"%1.6d",estimate.dataSinglePlyTPO.pipeBoots];
        tpo_walkPads.text = [NSString stringWithFormat:@"%1.6f",estimate.dataSinglePlyTPO.walkPads];
        
        torch_baseFlash.text = [NSString stringWithFormat:@"%1.6f",estimate.dataTorch.baseFlashSQS];
        torch_acUnits.text = [NSString stringWithFormat:@"%1.6d",estimate.dataTorch.acUnits];
        torch_pitchPans.text = [NSString stringWithFormat:@"%1.6d",estimate.dataTorch.pitchPans];
        torch_roofJacks.text = [NSString stringWithFormat:@"%1.6d",estimate.dataTorch.roofJacks];
        torch_drainLeads.text =[NSString stringWithFormat:@"%1.6d", estimate.dataTorch.drainLeads];
    }

    
    [self configureView];
}
- (void)configureView
{
    // Update the user interface for the detail item.
    
    NSLog(@"ConfigureView");
    NSLog(@"array: %@", estimate.dataOptions);

    
     if(estimate.dataOptions.alumination == 1)
     {
         NSLog(@"0");
     }
    if(estimate.dataOptions.builtUpGIC == 1)
    {
        NSLog(@"1");
    }
    if(estimate.dataOptions.builtUpGIS == 1)
    {
        NSLog(@"2");
    }
    if(estimate.dataOptions.builtUpGNC == 1)
    {
        NSLog(@"3");
    }
    if(estimate.dataOptions.builtUpGNS == 1)
    {
        NSLog(@"4");
    }
    if(estimate.dataOptions.coatings == 1)
    {
        NSLog(@"5");
    }
    if(estimate.dataOptions.duroLast == 1)
    {
        NSLog(@"6");
    }
    if(estimate.dataOptions.threePly == 1)
    {
        NSLog(@"7");
    }
    if(estimate.dataOptions.foam == 1)
    {
        NSLog(@"8");
    }
    if(estimate.dataOptions.singlePVC == 1)
    {
        NSLog(@"9");
    }
    if(estimate.dataOptions.singleTPO == 1)
    {
        NSLog(@"10");
    }
    if(estimate.dataOptions.torch == 1)
    {
        NSLog(@"11");
    }
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    NSInteger rows;
    
    switch (section) {
            
        case SECTION_alumination:
            if(estimate.dataOptions.alumination == 0)
            {
                NSLog(@"Hiding section 1");
                rows = 0;
            }
            else
                rows = [super tableView:self.tableView numberOfRowsInSection:section];
            break;
        case SECTION_builtUpGIC:
            if(estimate.dataOptions.builtUpGIC == 0)
            {
                rows = 0;
            }
            else
                rows = [super tableView:self.tableView numberOfRowsInSection:section];
            break;
        case SECTION_builtUpGIS:
            if(estimate.dataOptions.builtUpGIS == 0)
            {
                 rows = 0;
            }
            else
                rows = [super tableView:self.tableView numberOfRowsInSection:section];
            break;
        case SECTION_builtUpGNC:
            if(estimate.dataOptions.builtUpGNC == 0)
            {
                 rows = 0;
            }
            else
                rows = [super tableView:self.tableView numberOfRowsInSection:section];
            break;
        case SECTION_builtUpGNS:
            if(estimate.dataOptions.builtUpGNS == 0)
            {
                 rows = 0;
            }
            else
                rows = [super tableView:self.tableView numberOfRowsInSection:section];
            break;
        case SECTION_coatings:
            if(estimate.dataOptions.coatings == 0)
            {
                 rows = 0;
            }
            else
                rows = [super tableView:self.tableView numberOfRowsInSection:section];
            break;
        case SECTION_duroLast:
            if(estimate.dataOptions.duroLast == 0)
            {
                rows = 0;
            }
            else
                rows = [super tableView:self.tableView numberOfRowsInSection:section];
            break;
        case SECTION_threePly:
            if(estimate.dataOptions.threePly == 0)
            {
                 rows = 0;
            }
            else
                rows = [super tableView:self.tableView numberOfRowsInSection:section];
            break;
        case SECTION_foam:
            if(estimate.dataOptions.foam == 0)
            {
                 rows = 0;
            }
            else
                rows = [super tableView:self.tableView numberOfRowsInSection:section];
            break;
        case SECTION_singlePVC:
            if(estimate.dataOptions.singlePVC == 0)
            {
                 rows = 0;
            }
            else
                rows = [super tableView:self.tableView numberOfRowsInSection:section];
            break;
        case SECTION_singleTPO:
            if(estimate.dataOptions.singleTPO == 0)
            {
                rows = 0;
            }
            else
                rows = [super tableView:self.tableView numberOfRowsInSection:section];
            break;
        case SECTION_torch:
            if(estimate.dataOptions.torch == 0)
            {
                 rows = 0;
            }
            else
                rows = [super tableView:self.tableView numberOfRowsInSection:section];
            break;
            
        default:
            rows = [super tableView:self.tableView numberOfRowsInSection:section];
            break;
    }
    
    return rows;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    
    NSString *sectionHeader;
    
    switch (section) {
            
        case SECTION_alumination:
            if(estimate.dataOptions.alumination == 0)
            {
                NSLog(@"removing header section 1");
                sectionHeader = nil;
            }
            else
                sectionHeader = [super tableView:self.tableView titleForHeaderInSection:section];
            break;
        case SECTION_builtUpGIC:
            if(estimate.dataOptions.builtUpGIC == 0)
            {
                sectionHeader = nil;
            }
            else
                sectionHeader = [super tableView:self.tableView titleForHeaderInSection:section];
            break;
        case SECTION_builtUpGIS:
            if(estimate.dataOptions.builtUpGIS == 0)
            {
                sectionHeader = nil;
            }
            else
                sectionHeader = [super tableView:self.tableView titleForHeaderInSection:section];
            break;
        case SECTION_builtUpGNC:
            if(estimate.dataOptions.builtUpGNC == 0)
            {
                sectionHeader = nil;
            }
            else
                sectionHeader = [super tableView:self.tableView titleForHeaderInSection:section];
            break;
        case SECTION_builtUpGNS:
            if(estimate.dataOptions.builtUpGNS == 0)
            {
                sectionHeader = nil;
            }
            else
                sectionHeader = [super tableView:self.tableView titleForHeaderInSection:section];
            break;
        case SECTION_coatings:
            if(estimate.dataOptions.coatings == 0)
            {
                sectionHeader = nil;
            }
            else
                sectionHeader = [super tableView:self.tableView titleForHeaderInSection:section];
            break;
        case SECTION_duroLast:
            if(estimate.dataOptions.duroLast == 0)
            {
                sectionHeader = nil;
            }
            else
                sectionHeader = [super tableView:self.tableView titleForHeaderInSection:section];
            break;
        case SECTION_threePly:
            if(estimate.dataOptions.threePly == 0)
            {
                sectionHeader = nil;
            }
            else
                sectionHeader = [super tableView:self.tableView titleForHeaderInSection:section];
            break;
        case SECTION_foam:
            if(estimate.dataOptions.foam == 0)
            {
                sectionHeader = nil;
            }
            else
                sectionHeader = [super tableView:self.tableView titleForHeaderInSection:section];
            break;
        case SECTION_singlePVC:
            if(estimate.dataOptions.singlePVC == 0)
            {
                sectionHeader = nil;
            }
            else
                sectionHeader = [super tableView:self.tableView titleForHeaderInSection:section];
            break;
        case SECTION_singleTPO:
            if(estimate.dataOptions.singleTPO == 0)
            {
                sectionHeader = nil;
            }
            else
                sectionHeader = [super tableView:self.tableView titleForHeaderInSection:section];
            break;
        case SECTION_torch:
            if(estimate.dataOptions.torch == 0)
            {
                sectionHeader = nil;
            }
            else
                sectionHeader = [super tableView:self.tableView titleForHeaderInSection:section];
            break;
            
        default:
            sectionHeader = [super tableView:self.tableView titleForHeaderInSection:section];
            break;
    }
    return sectionHeader;
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    
    CGFloat headerHeight;
    
    switch (section) {
            
        case SECTION_alumination:
            if(estimate.dataOptions.alumination == 0)
            {
                NSLog(@"setting height 1");
                headerHeight = 1;
            }
            else
                headerHeight = [super tableView:self.tableView heightForHeaderInSection:section];
            break;
        case SECTION_builtUpGIC:
            if(estimate.dataOptions.builtUpGIC == 0)
            {
                headerHeight = 1;
            }
            else
                headerHeight = [super tableView:self.tableView heightForHeaderInSection:section];
            break;
        case SECTION_builtUpGIS:
            if(estimate.dataOptions.builtUpGIS == 0)
            {
                headerHeight = 1;
            }
            else
                headerHeight = [super tableView:self.tableView heightForHeaderInSection:section];
            break;
        case SECTION_builtUpGNC:
            if(estimate.dataOptions.builtUpGNC == 0)
            {
                headerHeight = 1;
            }
            else
                headerHeight = [super tableView:self.tableView heightForHeaderInSection:section];
            break;
        case SECTION_builtUpGNS:
            if(estimate.dataOptions.builtUpGNS == 0)
            {
                headerHeight = 1;
            }
            else
                headerHeight = [super tableView:self.tableView heightForHeaderInSection:section];
            break;
        case SECTION_coatings:
            if(estimate.dataOptions.coatings == 0)
            {
                headerHeight = 1;
            }
            else
                headerHeight = [super tableView:self.tableView heightForHeaderInSection:section];
            break;
        case SECTION_duroLast:
            if(estimate.dataOptions.duroLast == 0)
            {
                headerHeight = 1;
            }
            else
                headerHeight = [super tableView:self.tableView heightForHeaderInSection:section];
            break;
        case SECTION_threePly:
            if(estimate.dataOptions.threePly == 0)
            {
                headerHeight = 1;
            }
            else
                headerHeight = [super tableView:self.tableView heightForHeaderInSection:section];
            break;
        case SECTION_foam:
            if(estimate.dataOptions.foam == 0)
            {
                headerHeight = 1;
            }
            else
                headerHeight = [super tableView:self.tableView heightForHeaderInSection:section];
            break;
        case SECTION_singlePVC:
            if(estimate.dataOptions.singlePVC == 0)
            {
                headerHeight = 1;
            }
            else
                headerHeight = [super tableView:self.tableView heightForHeaderInSection:section];
            break;
        case SECTION_singleTPO:
            if(estimate.dataOptions.singleTPO == 0)
            {
                headerHeight = 1;
            }
            else
                headerHeight = [super tableView:self.tableView heightForHeaderInSection:section];
            break;
        case SECTION_torch:
            if(estimate.dataOptions.torch == 0)
            {
                headerHeight = 1;
            }
            else
                headerHeight = [super tableView:self.tableView heightForHeaderInSection:section];
            break;
            
        default:
            headerHeight = [super tableView:self.tableView heightForHeaderInSection:section];
            break;
    }
    return headerHeight;
}

-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    CGFloat footerHeight;
    
    switch (section) {
            
        case SECTION_alumination:
            if(estimate.dataOptions.alumination == 0)
            {
                NSLog(@"setting height 1");
                footerHeight = 1;
            }
            else
                footerHeight = [super tableView:self.tableView heightForFooterInSection:section];
            break;
        case SECTION_builtUpGIC:
            if(estimate.dataOptions.builtUpGIC == 0)
            {
                footerHeight = 1;
            }
            else
                footerHeight = [super tableView:self.tableView heightForFooterInSection:section];
            break;
        case SECTION_builtUpGIS:
            if(estimate.dataOptions.builtUpGIS == 0)
            {
                footerHeight = 1;
            }
            else
                footerHeight = [super tableView:self.tableView heightForFooterInSection:section];
            break;
        case SECTION_builtUpGNC:
            if(estimate.dataOptions.builtUpGNC == 0)
            {
                footerHeight = 1;
            }
            else
                footerHeight = [super tableView:self.tableView heightForFooterInSection:section];
            break;
        case SECTION_builtUpGNS:
            if(estimate.dataOptions.builtUpGNS == 0)
            {
                footerHeight = 1;
            }
            else
                footerHeight = [super tableView:self.tableView heightForFooterInSection:section];
            break;
        case SECTION_coatings:
            if(estimate.dataOptions.coatings == 0)
            {
                footerHeight = 1;
            }
            else
                footerHeight = [super tableView:self.tableView heightForFooterInSection:section];
            break;
        case SECTION_duroLast:
            if(estimate.dataOptions.duroLast == 0)
            {
                footerHeight = 1;
            }
            else
                footerHeight = [super tableView:self.tableView heightForFooterInSection:section];
            break;
        case SECTION_threePly:
            if(estimate.dataOptions.threePly == 0)
            {
                footerHeight = 1;
            }
            else
                footerHeight = [super tableView:self.tableView heightForFooterInSection:section];
            break;
        case SECTION_foam:
            if(estimate.dataOptions.foam == 0)
            {
                footerHeight = 1;
            }
            else
                footerHeight = [super tableView:self.tableView heightForFooterInSection:section];
            break;
        case SECTION_singlePVC:
            if(estimate.dataOptions.singlePVC == 0)
            {
                footerHeight = 1;
            }
            else
                footerHeight = [super tableView:self.tableView heightForFooterInSection:section];
            break;
        case SECTION_singleTPO:
            if(estimate.dataOptions.singleTPO == 0)
            {
                footerHeight = 1;
            }
            else
                footerHeight = [super tableView:self.tableView heightForFooterInSection:section];
            break;
        case SECTION_torch:
            if(estimate.dataOptions.torch == 0)
            {
                footerHeight = 1;
            }
            else
                footerHeight = [super tableView:self.tableView heightForFooterInSection:section];
            break;
            
        default:
            footerHeight = [super tableView:self.tableView heightForFooterInSection:section];
            break;
    }
    return footerHeight;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    UITableViewCell *cell = [super tableView:tableView cellForRowAtIndexPath:indexPath];
        
    NSUInteger section = [indexPath section];
    NSUInteger row = [indexPath row];
    
    NSLog(@"Section: %lu", (unsigned long)section);
    NSLog(@"Row: %lu",(unsigned long) row);
    
    switch (section) {

        case SECTION_alumination:
             if(estimate.dataOptions.alumination == 0)
             {
                 NSLog(@"Hiding section 1");
                 cell.hidden =YES;
             }
            break;
        case SECTION_builtUpGIC:
            if(estimate.dataOptions.builtUpGIC == 0)
            {
                cell.hidden =YES;
            }
            break;
        case SECTION_builtUpGIS:
            if(estimate.dataOptions.builtUpGIS == 0)
            {
                cell.hidden =YES;
            }
            break;
        case SECTION_builtUpGNC:
            if(estimate.dataOptions.builtUpGNC == 0)
            {
                cell.hidden =YES;
            }
            break;
        case SECTION_builtUpGNS:
            if(estimate.dataOptions.builtUpGNS == 0)
            {
                cell.hidden =YES;
            }
            break;
        case SECTION_coatings:
            if(estimate.dataOptions.coatings == 0)
            {
                cell.hidden =YES;
            }
            break;
        case SECTION_duroLast:
            if(estimate.dataOptions.duroLast == 0)
            {
                cell.hidden =YES;
            }
            break;
        case SECTION_threePly:
            if(estimate.dataOptions.threePly == 0)
            {
                cell.hidden =YES;
            }
            break;
        case SECTION_foam:
            if(estimate.dataOptions.foam == 0)
            {
                cell.hidden =YES;
            }
            break;
        case SECTION_singlePVC:
            if(estimate.dataOptions.singlePVC == 0)
            {
                cell.hidden =YES;
            }
            break;
        case SECTION_singleTPO:
            if(estimate.dataOptions.singleTPO == 0)
            {
                cell.hidden =YES;
            }
            break;
        case SECTION_torch:
            if(estimate.dataOptions.torch == 0)
            {
                cell.hidden =YES;
            }
            break;
            
        default:
            break;
    }
    
    return cell;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



#pragma mark - Table view data source


//Total rows in our component
-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    
//    NSInteger rowCount;
//    switch (pickerView.tag) {
//        case PICKER_CITY:
//            rowCount = [cityOptions count];
//            break;
//        case PICKER_DECKTYPE:
//            rowCount = [deckTypeArray count];
//            break;
//        case ALUM_safetyReqs:
//            rowCount = [deckTypeArray count];
//            break;
//        case ALUM_roofComplexity:
//            rowCount = [deckTypeArray count];
//            break;
//        case ALUM_tearOff:
//            rowCount = [deckTypeArray count];
//            break;
//        default:
//            rowCount = 0;
//            break;
//    }
//    
//    return rowCount;
    return [pickerArray count];
}

//Display each row's data
-(NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    NSLog(@"picker array %@", pickerArray);
//    NSString *rowTitle;
//    switch (pickerView.tag) {
//        case PICKER_CITY:
//            rowTitle = [cityOptions objectAtIndex:row];
//            break;
//        case PICKER_DECKTYPE:
//            rowTitle = [deckTypeArray objectAtIndex:row];
//            break;
//        case ALUM_tearOff:
//            rowTitle = [deckTypeArray objectAtIndex:row];
//            break;
//        case ALUM_safetyReqs:
//            rowTitle = [deckTypeArray objectAtIndex:row];
//            break;
//        case ALUM_roofComplexity:
//            rowTitle = [deckTypeArray objectAtIndex:row];
//            break;
//        default:
//            rowTitle = @"unknown";
//            break;
//    }
//    return rowTitle;
    return [pickerArray objectAtIndex:row];
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    
    switch (pickerView.tag) {
        case PICKER_CITY:
            city.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataCommon.city = city.text;
            break;
        case PICKER_DECKTYPE:
            deckType.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataCommon.deckType = deckType.text;
            break;
        case ALUM_tearOff:
            tearOff.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataAlumination.tearOff = tearOff.text;
            break;
        case ALUM_roofComplexity:
            roofComplex.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataAlumination.roofComplexity = roofComplex.text;
            break;
        case ALUM_safetyReqs:
            safetyReqs.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataAlumination.safetyReqs = safetyReqs.text;
            break;
        case GIC_tearOff:
            gic_tearOff.text = (NSString*)[pickerArray objectAtIndex:row];
           estimate.dataBuiltUpPlyGIC.tearOff = gic_tearOff.text;
            break;
        case GIC_roofComplex:
            gic_roofComplex.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataBuiltUpPlyGIC.roofComplexity = gic_roofComplex.text;
            break;
        case GIC_safetyReq:
            gic_safetyReq.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataBuiltUpPlyGIC.safetyReqs = gic_safetyReq.text;
            break;
        case GIC_roofRec:
            gic_roofRec.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataBuiltUpPlyGIC.roofTypeRec = gic_roofRec.text;
            break;
        case GIC_manuWarranty:
            gic_manuWarranty.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataBuiltUpPlyGIC.manWarranty = gic_manuWarranty.text;
            break;
        case GIC_plysheet:
            gic_plysheet.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataBuiltUpPlyGIC.plySheet = gic_plysheet.text;
            break;
        case GIC_thickBase:
            gic_thickBase.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataBuiltUpPlyGIC.baseThickness = gic_thickBase.text.floatValue;
            break;
        case GIC_baseApply:
            gic_baseApply.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataBuiltUpPlyGIC.baseInsuApply = gic_baseApply.text;
            break;
        case GIC_thick2nd:
            gic_thick2nd.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataBuiltUpPlyGIC.secondThick = gic_thick2nd.text.floatValue;
            break;
        case GIC_apply2nd:
            gic_apply2nd.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataBuiltUpPlyGIC.secondInsuApply = gic_apply2nd.text;
            break;
        case GIC_thickRec:
            gic_thickRec.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataBuiltUpPlyGIC.recoverThickness = gic_thickRec.text.floatValue;
            break;
        case GIC_recApply:
            gic_recApply.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataBuiltUpPlyGIC.recoverApply = gic_recApply.text;
            break;
        case GIC_galCoating:
            gic_galCoating.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataBuiltUpPlyGIC.galCoatingSQStot = gic_galCoating.text.floatValue;
            break;
        case GIC_coatingManu:
            gic_coatingManu.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataBuiltUpPlyGIC.coatingManu = gic_coatingManu.text;
            break;
            
        case GIS_tearOff:
            gis_tearOff.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataBuiltUpPlyGIS.tearOff = gis_tearOff.text;
            break;
        case GIS_roofComplex:
            gis_roofComplex.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataBuiltUpPlyGIS.roofComplexity = gis_roofComplex.text;
            break;
        case GIS_safetyReq:
            gis_safetyReq.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataBuiltUpPlyGIS.safetyReqs = gis_safetyReq.text;
            break;
        case GIS_roofRec:
            gis_roofRec.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataBuiltUpPlyGIS.roofTypeRec = gis_roofRec.text;
            break;
        case GIS_manuWarranty:
            gis_manuWarranty.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataBuiltUpPlyGIS.manWarranty = gis_manuWarranty.text;
            break;
        case GIS_plysheet:
            gis_plysheet.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataBuiltUpPlyGIS.plySheet = gis_plysheet.text;
            break;
        case GIS_thickBase:
            gis_thickBase.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataBuiltUpPlyGIS.baseThickness = gis_thickBase.text.floatValue;
            break;
        case GIS_baseApply:
            gis_baseApply.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataBuiltUpPlyGIS.baseInsuApply = gis_baseApply.text;
            break;
        case GIS_2ndThick:
            gis_2ndThick.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataBuiltUpPlyGIS.secondThick = gis_2ndThick.text.floatValue;
            break;
        case GIS_apply2nd:
            gis_apply2nd.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataBuiltUpPlyGIS.coatingManu = gis_apply2nd.text;
            break;
        case GIS_recThick:
            gis_recThick.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataBuiltUpPlyGIS.recoverThickness = gis_recThick.text.floatValue;
            break;
        case GIS_applyRec:
            gis_applyRec.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataBuiltUpPlyGIS.recoverApply = gis_applyRec.text;
            break;
        case GIS_galCoating:
            gis_galCoating.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataBuiltUpPlyGIS.galCoatingSQStot = gis_galCoating.text.floatValue;
            break;
        case GIS_galAsphalt:
            gis_galAsphalt.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataBuiltUpPlyGIS.galAsphEmulsionSQS = gis_galAsphalt.text.floatValue;
            break;
        case GIS_coatingManu:
            gis_coatingManu.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataBuiltUpPlyGIS.coatingManu = gis_coatingManu.text;
            break;
            
            
        case GNC_tearOff:
            gnc_tearOff.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataBuiltUpPlyGNC.tearOff = gnc_tearOff.text;
            break;
        case GNC_roofComplex:
            gnc_roofComplex.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataBuiltUpPlyGNC.roofComplexity = gnc_roofComplex.text;
            break;
        case GNC_safetyReq:
            gnc_safetyReq.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataBuiltUpPlyGNC.safetyReqs = gnc_safetyReq.text;
            break;
        case GNC_roofRec:
            gnc_roofRec.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataBuiltUpPlyGNC.roofTypeRec = gnc_roofRec.text;
            break;
        case GNC_warrantyManu:
            gnc_warrantyManu.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataBuiltUpPlyGNC.manWarranty = gnc_warrantyManu.text;
            break;
        case GNC_plysheet:
            gnc_plysheet.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataBuiltUpPlyGNC.plySheet = gnc_plysheet.text;
            break;
        case GNC_galCoating:
            gnc_galCoating.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataBuiltUpPlyGNC.galCoatingSQStot = gnc_galCoating.text.floatValue;
            break;
        case GNC_coatingManu:
            gnc_coatingManu.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataBuiltUpPlyGNC.coatingManu = gnc_coatingManu.text;
            break;
            
            
        case GNS_tearOff:
            gns_tearOff.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataBuiltUpPlyGNS.tearOff = gns_tearOff.text;
            break;
        case GNS_roofComplex:
            gns_roofComplex.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataBuiltUpPlyGNS.roofComplexity = gns_roofComplex.text;
            break;
        case GNS_safetyReq:
            gns_safetyReq.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataBuiltUpPlyGNS.safetyReqs = gns_safetyReq.text;
            break;
        case GNS_roofRec:
            gns_roofRec.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataBuiltUpPlyGNS.roofTypeRec = gns_roofRec.text;
            break;
        case GNS_plysheet:
            gns_plysheet.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataBuiltUpPlyGNS.plySheet = gns_plysheet.text;
            break;
        case GNS_warrantyManu:
            gns_warrantyManu.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataBuiltUpPlyGNS.manWarranty = gns_warrantyManu.text;
            break;
        case GNS_galCoating:
            gns_galCoating.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataBuiltUpPlyGNS.galCoatingSQStot = gns_galCoating.text.floatValue;
            break;
        case GNS_galAshpalt:
            gns_galAshpalt.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataBuiltUpPlyGNS.galAsphEmulsionSQS = gns_galAshpalt.text.floatValue;
            break;
        case GNS_coatingManu:
            gns_coatingManu.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataBuiltUpPlyGNS.coatingManu = gns_coatingManu.text;
            break;
            
        case COATING_tearOff:
            coating_tearOff.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataCoatings.tearOff = coating_tearOff.text;
            break;
        case COATING_roofComplex:
            coating_roofComplex.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataCoatings.roofComplexity = coating_roofComplex.text;
            break;
        case COATING_safetyReq:
            coating_safetyReq.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataCoatings.safetyReqs = coating_safetyReq.text;
            break;
        case COATING_roofRec:
            coating_roofRec.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataCoatings.roofTypeRec = coating_roofRec.text;
            break;
        case COATING_warrantyManu:
            coating_warrantyManu.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataCoatings.manWarranty = coating_warrantyManu.text;
            break;
        case COATING_primeDeck:
            coating_primeDeck.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataCoatings.primeDeck = coating_primeDeck.text;
            break;
        case COATING_sqsBase:
            coating_sqsBase.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataCoatings.galCoatingSQSbase = coating_sqsBase.text.floatValue;
            break;
        case COATING_sqsInt:
            coating_sqsInt.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataCoatings.galCoatingSQSinter = coating_sqsInt.text.floatValue;
            break;
        case COATING_sqsTop:
            coating_sqsTop.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataCoatings.galCoatingSQStop = coating_sqsTop.text.floatValue;
            break;
        case COATING_coatingManu:
            coating_coatingManu.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataCoatings.coatingManu = coating_coatingManu.text;
            break;
        case COATING_replaceMetal:
            coating_replaceMetal.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataCoatings.replaceEdge = coating_replaceMetal.text;
            break;
        case COATING_counterFlash:
            coating_counterFlash.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataCoatings.counterFlashingNew = coating_counterFlash.text;
            break;
        case COATING_newScup:
            coating_newScup.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataCoatings.scuppersNew = coating_newScup.text;
            break;
            
        case PVC_tearOff:
            pvc_tearOff.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataSinglePlyPVC.tearOff = pvc_tearOff.text;
            break;
        case PVC_roofComplex:
            pvc_roofComplex.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataSinglePlyPVC.roofComplexity = pvc_roofComplex.text;
            break;
        case PVC_safetyReq:
            pvc_safetyReq.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataSinglePlyPVC.safetyReqs = pvc_safetyReq.text;
            break;
        case PVC_roofRec:
            pvc_roofRec.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataSinglePlyPVC.roofTypeRec = pvc_roofRec.text;
            break;
        case PVC_warrantyManu:
            pvc_warrantyManu.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataSinglePlyPVC.manWarranty = pvc_warrantyManu.text;
            break;
        case PVC_millSheet:
            pvc_millSheet.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataSinglePlyPVC.millSheets = pvc_millSheet.text.floatValue;
            break;
        case PVC_slipSheet:
            pvc_slipSheet.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataSinglePlyPVC.slipSheetType = pvc_slipSheet.text;
            break;
        case PVC_sheetManu:
            pvc_sheetManu.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataSinglePlyPVC.sheetManu = pvc_sheetManu.text;
            break;
        case PVC_thickBase:
            pvc_thickBase.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataSinglePlyPVC.baseThickness = pvc_thickBase.text.floatValue;
            break;
        case PVC_baseApply:
            pvc_baseApply.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataSinglePlyPVC.baseInsuApply = pvc_baseApply.text;
            break;
        case PVC_2ndthick:
            NSLog(@"2nd apply");
            pvc_2ndthick.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataSinglePlyPVC.secondThick = pvc_2ndthick.text.floatValue;
            break;
        case PVC_2ndApply:
            pvc_2ndApply.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataSinglePlyPVC.secondInsuApply = pvc_2ndApply.text;
            break;
        case PVC_recThick:
            pvc_recThick.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataSinglePlyPVC.recoverThickness = pvc_recThick.text.floatValue;
            break;
        case PVC_recApply:
            pvc_recApply.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataSinglePlyPVC.recoverApply = pvc_recApply.text;
            break;
        case PVC_seamFast:
            pvc_seamFast.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataSinglePlyPVC.seamFastenerInchCenter = pvc_seamFast.text.floatValue;
            break;
        case PVC_cricket:
            pvc_cricket.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataSinglePlyPVC.crickets = pvc_cricket.text;
            break;
        case PVC_perimSheet:
            pvc_perimSheet.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataSinglePlyPVC.perimeterSheets = pvc_perimSheet.text.floatValue;
            break;
           
        case TPO_tearOff:
            tpo_tearOff.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataSinglePlyTPO.tearOff = tpo_tearOff.text;
            break;
        case TPO_roofComplex:
            tpo_roofComplex.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataSinglePlyTPO.roofComplexity = tpo_roofComplex.text;
            break;
        case TPO_safetyReq:
            tpo_safetyReq.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataSinglePlyTPO.safetyReqs = tpo_safetyReq.text;
            break;
        case TPO_roofRec:
            tpo_roofRec.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataSinglePlyTPO.roofTypeRec = tpo_roofRec.text;
            break;
        case TPO_warrantyManu:
            tpo_warrantyManu.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataSinglePlyTPO.manWarranty = tpo_warrantyManu.text;
            break;
        case TPO_millSheet:
            tpo_millSheet.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataSinglePlyTPO.millSheets = tpo_millSheet.text.floatValue;
            break;
        case TPO_slipSheet:
            tpo_slipSheet.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataSinglePlyTPO.slipSheetType = tpo_slipSheet.text;
            break;
        case TPO_sheetManu:
            tpo_sheetManu.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataSinglePlyTPO.sheetManu = tpo_sheetManu.text;
            break;
        case TPO_thickbase:
            tpo_thickbase.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataSinglePlyTPO.baseThickness = tpo_thickbase.text.floatValue;
            break;
        case TPO_baseApply:
            tpo_baseApply.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataSinglePlyTPO.baseInsuApply = tpo_baseApply.text;
            break;
        case TPO_2ndthick:
            tpo_2ndthick.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataSinglePlyTPO.secondThick = tpo_2ndthick.text.floatValue;
            break;
        case TPO_2ndApply:
            tpo_2ndApply.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataSinglePlyTPO.secondInsuApply = tpo_2ndApply.text;
            break;
        case TPO_recThick:
            tpo_recThick.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataSinglePlyTPO.recoverThickness = tpo_recThick.text.floatValue;
            break;
        case TPO_recApply:
            tpo_recApply.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataSinglePlyTPO.recoverApply = tpo_recApply.text;
            break;
        case TPO_seamFast:
            tpo_seamFast.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataSinglePlyTPO.seamFastenerInchCenter = tpo_seamFast.text.floatValue;
            break;
        case TPO_cricket:
            tpo_cricket.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataSinglePlyTPO.crickets = tpo_cricket.text;
            break;
        case TPO_perimSheet:
            tpo_perimSheet.text = (NSString*)[pickerArray objectAtIndex:row];
            estimate.dataSinglePlyTPO.perimeterSheets = tpo_perimSheet.text.floatValue;
            break;
            
        default:
            break;
    }
    
}


-(IBAction)picker:(id)sender{
    NSLog(@"Setting up picker");

    pickerView=[[UIPickerView alloc]init];
    
    NSLog(@"sender tag %lu", (long)[sender tag]);
    
    switch ([sender tag]) {
        case PICKER_CITY:
            pickerArray = [[NSMutableArray
                            alloc]initWithObjects:@"Apache Junction, Maricopa County", @"Apache Junction, Pinal County", @"Arlington", @"Avondale", @"Benson", @"Bisbee", @"Black Canyon City" @"Buckeye", @"Bullhead City", @"Camp Verde", @"Carefree", @"Casa Grande", @"Cave Creek", @"Chandler", @"Chino Valley", @"Clarkdale", @"Claypool", @"Clifton", @"Colorado City", @"Coolidge", @"Cottonwood", @"Desert Hills", @"Dewey-Humboldt", @"Douglas", @"Duncan", @"Eagar", @"El Mirage", @"Eloy", @"Flagstaff", @"Florence", @"Fountain Hills", @"Fredownia", @"Gila Bend", @"Gilbert", @"Glendale", @"Globe", @"Gold Canyon", @"Goodyear", @"Guadalupe", @"Hayden", @"Heber", @"Higley", @"Holbrook", @"Huachuca City", @"Jerome", @"Kearney", @"Kingman, Mohave County", @"Lake Havasu", @"Litchfield Park", @"Mammoth", @"Marana", @"Maricopa", @"Mayer", @"Mesa", @"Miami", @"Navajo Nation", @"Nogales", @"Oro Valley", @"Page", @"Paradise Valley", @"Parker", @"Patagonia", @"Payson", @"Peoria", @"Phoenix", @"Pima", @"Pinetop/Lake", @"Prescott", @"Prescott Valley", @"Quartzsite", @"Queen Creek, Maricopa County", @"Queen Creek, Pinal County", @"Rio Rico", @"Rio Verde", @"Safford", @"Sahuarita", @"San Luis", @"San Manuel", @"Scottsdale", @"Sedona, Coconino County", @"Sedona, Yavapai County", @"Seligman", @"Show Low", @"Sierra Vista", @"Snowflake", @"Somerton", @"South Tucson", @"Springerville", @"St. Johns", @"Stanfield", @"Star Valley", @"Sun City", @"Sun Lakes", @"Superior", @"Surprise", @"Taylor", @"Tempe", @"Thatcher", @"Tolleson", @"Tombstone", @"Tonapah", @"Tuba City", @"Tucson", @"Waddell", @"Welton", @"Wickenburg", @"Wilcox", @"Williams", @"Winkel, Gila County", @"Winkel, Pinal County", @"Winslow", @"Wittman", @"Youngtown", @"Yuma", nil];
            pickerView.tag = PICKER_CITY;
            break;
         
        case PICKER_DECKTYPE:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"Plywood",@"Metal",@"Concrete",nil];
            pickerView.tag = PICKER_DECKTYPE;
            break;
        case ALUM_tearOff:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"NO TEAR OFF",@"1 layer",@"1 layer + insulation under 2''", @"1 layer + insulation 2+",@"2 layers",@"2 layers with Gravel",@"Foam (Direct to Plywood)",@"Shingles",@"Tile",nil];
            pickerView.tag = ALUM_tearOff;
            break;
        case ALUM_roofComplexity:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"Easy",@"Moderate",@"Difficult",nil];
            pickerView.tag = ALUM_roofComplexity;
            break;
        case ALUM_safetyReqs:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"Easy",@"Moderate",@"Difficult",nil];
            pickerView.tag = ALUM_safetyReqs;
            break;
            
        case GIC_tearOff:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"NO TEAR OFF",@"1 layer",@"1 layer + insulation under 2''", @"1 layer + insulation 2+",@"2 layers",@"2 layers with Gravel",@"Foam (Direct to Plywood)",@"Shingles",@"Tile",nil];
            pickerView.tag = GIC_tearOff;
            break;
        case GIC_roofComplex:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"Easy",@"Moderate",@"Difficult",nil];
            pickerView.tag = GIC_roofComplex;
            break;
        case GIC_safetyReq:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"Easy",@"Moderate",@"Difficult",nil];
            pickerView.tag = GIC_safetyReq;
            break;
        case GIC_roofRec:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"3-PLY CAP",@"4-PLY CAP",@"5-PLY CAP",nil];
            pickerView.tag = GIC_roofRec;
            break;
        case GIC_manuWarranty:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"NO WARRANTY",@"10 YEAR",@"12 YEAR",@"15 YEAR",@"20 YEAR",nil];
            pickerView.tag = GIC_manuWarranty;
            break;
        case GIC_plysheet:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"Ply Sheet TYpe 4-5 sq roll",@"Ply Sheet TYpe 6-5 sq roll",nil];
            pickerView.tag = GIC_plysheet;
            break;
        case GIC_thickBase:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"0.0",@"0.5",@"1.0",@"1.5",@"2.0",@"2.5",@"3.0",@"3.5",@"4.0",@"4.5",@"5.0",nil];
            pickerView.tag = GIC_thickBase;
            break;
        case GIC_baseApply:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"NONE",@"ASPHALT",@"INSULATION ADHESIVE",@"SCREWS & PLATES",nil];
            pickerView.tag = GIC_baseApply;
            break;
        case GIC_thick2nd:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"0.0",@"0.5",@"1.0",@"1.5",@"2.0",@"2.5",@"3.0",@"3.5",@"4.0",@"4.5",@"5.0",nil];
            pickerView.tag = GIC_thick2nd;
            break;
        case GIC_apply2nd:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"NONE",@"ASPHALT",@"INSULATION ADHESIVE",@"SCREWS & PLATES",nil];
            pickerView.tag = GIC_apply2nd;
            break;
        case GIC_thickRec:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"0.0",@"0.5",@"0.75",nil];
            pickerView.tag = GIC_thickRec;
            break;
        case GIC_recApply:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"NONE",@"ASPHALT",@"INSULATION ADHESIVE",@"SCREWS & PLATES",nil];
            pickerView.tag = GIC_recApply;
            break;
        case GIC_galCoating:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"0.0",@"1.25",@"1.5",@"2.5",@"3.0",@"3.5",@"4.0",@"4.5",@"5.0",nil];
            pickerView.tag = GIC_galCoating;
            break;
        case GIC_coatingManu:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"NONE",@"KIM",@"ProTech",@"United RoofMate",@"United RoofShield",@"Western Colloid",@"OTHER",nil];
            pickerView.tag = GIC_coatingManu;
            break;
            
        case GIS_tearOff:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"NO TEAR OFF",@"1 layer",@"1 layer + insulation under 2''", @"1 layer + insulation 2+",@"2 layers",@"2 layers with Gravel",@"Foam (Direct to Plywood)",@"Shingles",@"Tile",nil];
            pickerView.tag = GIS_tearOff;
            break;
        case GIS_roofComplex:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"Easy",@"Moderate",@"Difficult",nil];
            pickerView.tag = GIS_roofComplex;
            break;
        case GIS_safetyReq:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"Easy",@"Moderate",@"Difficult",nil];
            pickerView.tag = GIS_safetyReq;
            break;
        case GIS_roofRec:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"3-PLY CAP",@"4-PLY CAP",@"5-PLY CAP",nil];
            pickerView.tag = GIS_roofRec;
            break;
        case GIS_manuWarranty:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"NO WARRANTY",@"10 YEAR",@"12 YEAR",@"15 YEAR",@"20 YEAR",nil];
            pickerView.tag = GIS_manuWarranty;
            break;
        case GIS_plysheet:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"Ply Sheet TYpe 4-5 sq roll",@"Ply Sheet TYpe 6-5 sq roll",nil];
            pickerView.tag = GIS_plysheet;
            break;
        case GIS_thickBase:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"0.0",@"0.5",@"1.0",@"1.5",@"2.0",@"2.5",@"3.0",@"3.5",@"4.0",@"4.5",@"5.0",nil];
            pickerView.tag = GIS_thickBase;
            break;
        case GIS_baseApply:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"NONE",@"ASPHALT",@"INSULATION ADHESIVE",@"SCREWS & PLATES",nil];
            pickerView.tag = GIS_baseApply;
            break;
        case GIS_2ndThick:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"0.0",@"0.5",@"1.0",@"1.5",@"2.0",@"2.5",@"3.0",@"3.5",@"4.0",@"4.5",@"5.0",nil];
            pickerView.tag = GIS_2ndThick;
            break;
        case GIS_apply2nd:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"NONE",@"ASPHALT",@"INSULATION ADHESIVE",@"SCREWS & PLATES",nil];
            pickerView.tag = GIS_apply2nd;
            break;
        case GIS_recThick:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"0.0",@"0.5",@"0.75",nil];
            pickerView.tag = GIS_recThick;
            break;
        case GIS_applyRec:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"NONE",@"ASPHALT",@"INSULATION ADHESIVE",@"SCREWS & PLATES",nil];
            pickerView.tag = GIS_applyRec;
            break;
        case GIS_galCoating:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"0.0",@"1.25",@"1.5",@"2.5",@"3.0",@"3.5",@"4.0",@"4.5",@"5.0",nil];
            pickerView.tag = GIS_galCoating;
            break;
        case GIS_galAsphalt:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"0.0",@"1.25",@"1.5",@"2.5",@"3.0",@"3.5",@"4.0",@"4.5",@"5.0",nil];
            pickerView.tag = GIS_galAsphalt;
            break;
        case GIS_coatingManu:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"NONE",@"KIM",@"ProTech",@"United RoofMate",@"United RoofShield",@"Western Colloid",@"OTHER",nil];
            pickerView.tag = GIS_coatingManu;
            break;
            
            
        case GNC_tearOff:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"NO TEAR OFF",@"1 layer",@"1 layer + insulation under 2''", @"1 layer + insulation 2+",@"2 layers",@"2 layers with Gravel",@"Foam (Direct to Plywood)",@"Shingles",@"Tile",nil];
            pickerView.tag = GNC_tearOff;
            break;
        case GNC_roofComplex:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"Easy",@"Moderate",@"Difficult",nil];
            pickerView.tag = GNC_roofComplex;
            break;
        case GNC_safetyReq:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"Easy",@"Moderate",@"Difficult",nil];
            pickerView.tag = GNC_safetyReq;
            break;
        case GNC_roofRec:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"3-PLY CAP",@"4-PLY CAP",@"5-PLY CAP",nil];
            pickerView.tag = GNC_roofRec;
            break;
        case GNC_warrantyManu:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"NO WARRANTY",@"10 YEAR",@"12 YEAR",@"15 YEAR",@"20 YEAR",nil];
            pickerView.tag = GNC_warrantyManu;
            break;
        case GNC_plysheet:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"Ply Sheet TYpe 4-5 sq roll",@"Ply Sheet TYpe 6-5 sq roll",nil];
            pickerView.tag = GNC_plysheet;
            break;
        case GNC_galCoating:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"0.0",@"1.25",@"1.5",@"2.5",@"3.0",@"3.5",@"4.0",@"4.5",@"5.0",nil];
            pickerView.tag = GNC_galCoating;
            break;
        case GNC_coatingManu:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"NONE",@"KIM",@"ProTech",@"United RoofMate",@"United RoofShield",@"Western Colloid",@"OTHER",nil];
            pickerView.tag = GNC_coatingManu;
            break;
            
            
        case GNS_tearOff:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"NO TEAR OFF",@"1 layer",@"1 layer + insulation under 2''", @"1 layer + insulation 2+",@"2 layers",@"2 layers with Gravel",@"Foam (Direct to Plywood)",@"Shingles",@"Tile",nil];
            pickerView.tag = GNS_tearOff;
            break;
        case GNS_roofComplex:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"Easy",@"Moderate",@"Difficult",nil];
            pickerView.tag = GNS_roofComplex;
            break;
        case GNS_safetyReq:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"Easy",@"Moderate",@"Difficult",nil];
            pickerView.tag = GNS_safetyReq;
            break;
        case GNS_roofRec:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"3-PLY CAP",@"4-PLY CAP",@"5-PLY CAP",nil];
            pickerView.tag = GNS_roofRec;
            break;
        case GNS_plysheet:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"Ply Sheet TYpe 4-5 sq roll",@"Ply Sheet TYpe 6-5 sq roll",nil];
            pickerView.tag = GNS_plysheet;
            break;
        case GNS_warrantyManu:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"NO WARRANTY",@"10 YEAR",@"12 YEAR",@"15 YEAR",@"20 YEAR",nil];
            pickerView.tag = GNS_warrantyManu;
            break;
        case GNS_galCoating:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"0.0",@"1.25",@"1.5",@"2.5",@"3.0",@"3.5",@"4.0",@"4.5",@"5.0",nil];
            pickerView.tag = GNS_galCoating;
            break;
        case GNS_galAshpalt:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"0.0",@"1.25",@"1.5",@"2.5",@"3.0",@"3.5",@"4.0",@"4.5",@"5.0",nil];
            pickerView.tag = GNS_galAshpalt;
            break;
        case GNS_coatingManu:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"NONE",@"KIM",@"ProTech",@"United RoofMate",@"United RoofShield",@"Western Colloid",@"OTHER",nil];
            pickerView.tag = GNS_coatingManu;
            break;
            
        case COATING_tearOff:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"NO TEAR OFF",@"1 layer",@"1 layer + insulation under 2''", @"1 layer + insulation 2+",@"2 layers",@"2 layers with Gravel",@"Foam (Direct to Plywood)",@"Shingles",@"Tile",nil];
            pickerView.tag = COATING_tearOff;
            break;
        case COATING_roofComplex:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"Easy",@"Moderate",@"Difficult",nil];
            pickerView.tag = COATING_roofComplex;
            break;
        case COATING_safetyReq:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"Easy",@"Moderate",@"Difficult",nil];
            pickerView.tag = COATING_roofComplex;
            break;
        case COATING_roofRec:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"2 Coat Coating Spec",@"3 Coat Coating Spec",@"Emulsion Elastometric",@"Emulsion 1 Layer Polyestra Elastometric",@"Emulsion 2 Layer Polyestra Elastometric",@"Elastometric Polyestra Elastometric",nil];
            pickerView.tag = COATING_roofRec;
            break;
        case COATING_warrantyManu:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"NO WARRANTY",@"5 YEAR",@"10 YEAR",@"15 YEAR",nil];
            pickerView.tag = COATING_warrantyManu;
            break;
        case COATING_primeDeck:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"NO",@"YES",nil];
            pickerView.tag = COATING_primeDeck;
            break;
        case COATING_sqsBase:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"0.0",@"1.25",@"1.5",@"2.0",nil];
            pickerView.tag = COATING_sqsBase;
            break;
        case COATING_sqsInt:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"0.0",@"1.25",@"1.5",@"2.0",nil];
            pickerView.tag = COATING_sqsInt;
            break;
        case COATING_sqsTop:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"0.0",@"1.25",@"1.5",@"2.0",nil];
            pickerView.tag = COATING_sqsTop;
            break;
        case COATING_coatingManu:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"NONE",@"KIM",@"ProTech",@"United RoofMate",@"United RoofShield",@"Western Colloid",@"OTHER",nil];
            pickerView.tag = COATING_coatingManu;
            break;
        case COATING_replaceMetal:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"NO",@"YES",nil];
            pickerView.tag = COATING_replaceMetal;
            break;
        case COATING_counterFlash:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"NO",@"YES",nil];
            pickerView.tag = COATING_counterFlash;
            break;
        case COATING_newScup:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"NO",@"YES",nil];
            pickerView.tag = COATING_newScup;
            break;
            
        case PVC_tearOff:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"NO TEAR OFF",@"1 layer",@"1 layer + insulation under 2''", @"1 layer + insulation 2+",@"2 layers",@"2 layers with Gravel",@"Foam (Direct to Plywood)",@"Shingles",@"Tile",nil];
            pickerView.tag = PVC_tearOff;
            break;
        case PVC_roofComplex:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"Easy",@"Moderate",@"Difficult",nil];
            pickerView.tag = PVC_roofComplex;
            break;
        case PVC_safetyReq:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"Easy",@"Moderate",@"Difficult",nil];
            pickerView.tag = PVC_roofComplex;
            break;
        case PVC_roofRec:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"PVCMA",@"PVCFA",nil];
            pickerView.tag = PVC_roofRec;
            break;
        case PVC_warrantyManu:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"NO WARRANTY",@"5 YEAR",@"10 YEAR",@"15 YEAR",nil];
            pickerView.tag = PVC_warrantyManu;
            break;
        case PVC_millSheet:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"50",@"60",@"80",nil];
            pickerView.tag = PVC_millSheet;
            break;
        case PVC_slipSheet:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"NONE",@"FR-10",@"FR-50",nil];
            pickerView.tag = PVC_slipSheet;
            break;
        case PVC_sheetManu:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"Carlisle",@"DOW",@"GAF",@"Johns Manville",@"Versico",nil];
            pickerView.tag = PVC_sheetManu;
            break;
        case PVC_thickBase:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"0.0",@"0.5",@"1.0",@"1.5",@"2.0",@"2.5",@"3.0",@"3.5",@"4.0",@"4.5",@"5.0",nil];
            pickerView.tag = PVC_thickBase;
            break;
        case PVC_baseApply:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"NONE",@"ASPHALT",@"INSULATION ADHESIVE",@"SCREWS & PLATES",nil];
            pickerView.tag = PVC_baseApply;
            break;
        case PVC_2ndthick:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"0.0",@"0.5",@"1.0",@"1.5",@"2.0",@"2.5",@"3.0",@"3.5",@"4.0",@"4.5",@"5.0",nil];
            pickerView.tag = PVC_2ndthick;
            break;
        case PVC_2ndApply:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"NONE",@"ASPHALT",@"INSULATION ADHESIVE",@"SCREWS & PLATES",nil];
            pickerView.tag = PVC_2ndApply;
            break;
        case PVC_recThick:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"0.0",@"0.5",@"0.75",nil];
            pickerView.tag = PVC_recThick;
            break;
        case PVC_recApply:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"NONE",@"ASPHALT",@"INSULATION ADHESIVE",@"SCREWS & PLATES",nil];
            pickerView.tag = PVC_recApply;
            break;
        case PVC_seamFast:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"6",@"9",@"12",nil];
            pickerView.tag = PVC_seamFast;
            break;
        case PVC_cricket:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"NO",@"YES",nil];
            pickerView.tag = PVC_cricket;
            break;
        case PVC_perimSheet:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"0",@"1",@"2",@"3",@"4",nil];
            pickerView.tag = PVC_perimSheet;

            break;
            
        case TPO_tearOff:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"NO TEAR OFF",@"1 layer",@"1 layer + insulation under 2''", @"1 layer + insulation 2+",@"2 layers",@"2 layers with Gravel",@"Foam (Direct to Plywood)",@"Shingles",@"Tile",nil];
            pickerView.tag = TPO_tearOff;
            break;
        case TPO_roofComplex:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"Easy",@"Moderate",@"Difficult",nil];
            pickerView.tag = TPO_roofComplex;
            break;
        case TPO_safetyReq:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"Easy",@"Moderate",@"Difficult",nil];
            pickerView.tag = TPO_safetyReq;
            break;
        case TPO_roofRec:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"TPOMA",@"TPOFA",nil];
            pickerView.tag = TPO_roofRec;
            break;
        case TPO_warrantyManu:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"NO WARRANTY",@"10 YEAR",@"15 YEAR",@"20 YEAR",nil];
            pickerView.tag = TPO_warrantyManu;
            break;
        case TPO_millSheet:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"45",@"60",@"80",nil];
            pickerView.tag = PVC_millSheet;
            break;
        case TPO_slipSheet:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"NONE",@"FR-10",@"FR-50",nil];
            pickerView.tag = TPO_slipSheet;
            break;
        case TPO_sheetManu:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"Carlisle",@"DOW",@"GAF",@"Johns Manville",@"Versico",nil];
            pickerView.tag = TPO_sheetManu;
            break;
        case TPO_thickbase:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"0.0",@"0.5",@"1.0",@"1.5",@"2.0",@"2.5",@"3.0",@"3.5",@"4.0",@"4.5",@"5.0",nil];
            pickerView.tag = TPO_thickbase;
            break;
        case TPO_baseApply:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"NONE",@"ASPHALT",@"INSULATION ADHESIVE",@"SCREWS & PLATES",nil];
            pickerView.tag = TPO_baseApply;
            break;
        case TPO_2ndthick:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"0.0",@"0.5",@"1.0",@"1.5",@"2.0",@"2.5",@"3.0",@"3.5",@"4.0",@"4.5",@"5.0",nil];
            pickerView.tag = TPO_2ndthick;
            break;
        case TPO_2ndApply:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"NONE",@"ASPHALT",@"INSULATION ADHESIVE",@"SCREWS & PLATES",nil];
            pickerView.tag = TPO_2ndApply;
            break;
        case TPO_recThick:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"0.0",@"0.5",@"0.75",nil];
            pickerView.tag = TPO_recThick;
            break;
        case TPO_recApply:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"NONE",@"ASPHALT",@"INSULATION ADHESIVE",@"SCREWS & PLATES",nil];
            pickerView.tag = TPO_recApply;
            break;
        case TPO_seamFast:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"6",@"9",@"12",nil];
            pickerView.tag = TPO_seamFast;
            break;
        case TPO_cricket:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"NO",@"YES",nil];
            pickerView.tag = TPO_cricket;
            break;
        case TPO_perimSheet:
            pickerArray = [[NSMutableArray alloc]initWithObjects:@"0",@"1",@"2",@"3",@"4",nil];
            pickerView.tag = TPO_perimSheet;
            break;
        default:
            break;
    }
    
    NSLog(@"picker view %@", pickerArray);
    //set delegate and datasource
    [pickerView setDelegate:self];
    [pickerView setDataSource:self];
    pickerView.showsSelectionIndicator =YES;
    
    //preselect the thrird option
    [pickerView selectRow:2 inComponent:0 animated:YES];
    pickerView.hidden = NO;
    
    UIToolbar *release = [[UIToolbar alloc] initWithFrame:CGRectMake(0, 0, 320, 44)];
    UIBarButtonItem *done = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action: @selector(dismissPicker:)];
    
    [release setItems:[NSArray arrayWithObject:done]animated:NO];
    
    [sender setInputView:pickerView];
    [sender setInputAccessoryView:release];
    
}

-(IBAction)dismissPicker:(id)sender{
   // NSLog(@"Sender: %@", self.pickerView);
    [self.view endEditing:YES];
}

- (IBAction)fieldChange:(id)sender {
    NSLog(@"tag %ld", (long)[sender tag]);
    
    switch ([sender tag]) {
        case COMMON_JOBNAME:
            self.estimate.dataCommon.jobName= self.projectName.text;
            self.estimate.title = self.projectName.text;
            NSLog(@"common change %@",self.estimate.dataCommon.jobName);
            break;
        case COMMON_ROOFSQS:
            self.estimate.dataCommon.roofSQS = self.roofSQS.text.floatValue;
            NSLog(@"common %f",self.estimate.dataCommon.roofSQS);
            NSLog(@"common %@",self.roofSQS.text);
            break;
        case COMMON_baseFlash:
            self.estimate.dataCommon.baseFlash = self.baseFlash.text.floatValue;
            NSLog(@"common %f",self.estimate.dataCommon.baseFlash);
            NSLog(@"common %@",self.baseFlash.text);
            break;
        case COMMON_wallsFeet:
            self.estimate.dataCommon.wallsFeet = self.wallsFeet.text.floatValue;
            NSLog(@"common %f",self.estimate.dataCommon.wallsFeet);
            NSLog(@"common %@",self.wallsFeet.text);
            break;
        case COMMON_curbFeet:
            self.estimate.dataCommon.wallsFeet = self.curbFeet.text.floatValue;
            NSLog(@"common %f",self.estimate.dataCommon.curbFeet);
            NSLog(@"common %@",self.curbFeet.text);
            break;
        case COMMON_edgeFeet:
            self.estimate.dataCommon.edgeFeet = self.edgeFeet.text.floatValue;
            NSLog(@"common %f",self.estimate.dataCommon.edgeFeet);
            NSLog(@"common %@",self.edgeFeet.text);
            break;
        case COMMON_copingFeet:
            self.estimate.dataCommon.copingFeet = self.copingFeet.text.floatValue;
            NSLog(@"common %f",self.estimate.dataCommon.copingFeet);
            NSLog(@"common %@",self.copingFeet.text);
            break;
        case COMMON_curbUnit:
            self.estimate.dataCommon.curbUnit = self.curbUnit.text.integerValue;
            NSLog(@"common %d",self.estimate.dataCommon.curbUnit);
            NSLog(@"common %@",self.curbUnit.text);
            break;
        case COMMON_slopeUnit:
            self.estimate.dataCommon.wallsFeet = self.slopeUnit.text.integerValue;
            NSLog(@"common %d",self.estimate.dataCommon.slopeUnit);
            NSLog(@"common %@",self.slopeUnit.text);
            break;
        case COMMON_leadJacks:
            self.estimate.dataCommon.leadJacks = self.wallsFeet.text.integerValue;
            NSLog(@"common %d",self.estimate.dataCommon.leadJacks);
            NSLog(@"common %@",self.leadJacks.text);
            break;
        case COMMON_sealantPans:
            self.estimate.dataCommon.sealantPans = self.sealantPans.text.integerValue;
            NSLog(@"common %d",self.estimate.dataCommon.sealantPans);
            NSLog(@"common %@",self.sealantPans.text);
            break;
        case COMMON_drains:
            self.estimate.dataCommon.drains = self.drains.text.integerValue;
            NSLog(@"common %d",self.estimate.dataCommon.drains);
            NSLog(@"common %@",self.drains.text);
            break;
        case COMMON_pipes:
            self.estimate.dataCommon.pipes = self.pipes.text.integerValue;
            NSLog(@"common %d",self.estimate.dataCommon.pipes);
            NSLog(@"common %@",self.pipes.text);
            break;
        case COMMON_cladScuppers:
            self.estimate.dataCommon.cladScuppers = self.cladScuppers.text.integerValue;
            NSLog(@"common %d",self.estimate.dataCommon.cladScuppers);
            NSLog(@"common %@",self.cladScuppers.text);
            break;
        case COMMON_scuppers:
            self.estimate.dataCommon.scuppers = self.scuppers.text.integerValue;
            NSLog(@"common %d",self.estimate.dataCommon.scuppers);
            NSLog(@"common %@",self.scuppers.text);
            break;
        case COMMON_tTopVents:
            self.estimate.dataCommon.tTopVents = self.tTopVents.text.integerValue;
            NSLog(@"common %d",self.estimate.dataCommon.tTopVents);
            NSLog(@"common %@",self.tTopVents.text);
            break;
        case COMMON_corners:
            self.estimate.dataCommon.corners = self.wallsFeet.text.integerValue;
            NSLog(@"common %d",self.estimate.dataCommon.corners);
            NSLog(@"common %@",self.corners.text);
            break;
        case COMMON_skylights:
            self.estimate.dataCommon.skylights = self.skylights.text.integerValue;
            NSLog(@"common %d",self.estimate.dataCommon.skylights);
            NSLog(@"common %@",self.skylights.text);
            break;
        case COMMON_skylightsReplace:
            self.estimate.dataCommon.skylightsReplace = self.skylightsReplace.text.integerValue;
            NSLog(@"common %d",self.estimate.dataCommon.skylightsReplace);
            NSLog(@"common %@",self.skylightsReplace.text);
            break;
        case ALUM_seamsFeet:
            self.estimate.dataAlumination.seamsFeet = self.alum_seemsFeet.text.floatValue;
            NSLog(@"common %f",self.estimate.dataAlumination.seamsFeet);
            NSLog(@"common %@",self.alum_seemsFeet.text);
            break;
        case ALUM_sideLapsRepair:
            self.estimate.dataAlumination.sideLapsRepair = self.alum_sideLaps.text.floatValue;
            NSLog(@"common %d",self.estimate.dataAlumination.sideLapsRepair);
            NSLog(@"common %@",self.alum_sideLaps.text);
            break;
        case ALUM_manualFasteners:
            self.estimate.dataAlumination.manualFasteners = self.alum_manualFasteners.text.floatValue;
            NSLog(@"common %d",self.estimate.dataAlumination.manualFasteners);
            NSLog(@"common %@",self.alum_manualFasteners.text);
            break;
            
        case GIC_smallChemCurb:
            self.estimate.dataBuiltUpPlyGIC.smallChemCurb = self.gic_smallChemCurb.text.floatValue;
            NSLog(@"common %d",self.estimate.dataBuiltUpPlyGIC.smallChemCurb);
            NSLog(@"common %@",self.gic_smallChemCurb.text);
            break;
        case GIC_largeChemCurb:
            self.estimate.dataBuiltUpPlyGIC.largeChemCurb = self.gic_largeChemCurb.text.floatValue;
            NSLog(@"common %d",self.estimate.dataBuiltUpPlyGIC.largeChemCurb);
            NSLog(@"common %@",self.gic_largeChemCurb.text);
            break;
            
        case GIS_fasteners:
            self.estimate.dataBuiltUpPlyGIS.fastenersSQS = self.gis_fasteners.text.floatValue;
            NSLog(@"common %d",self.estimate.dataBuiltUpPlyGIS.fastenersSQS);
            NSLog(@"common %@",self.gis_fasteners.text);
            break;
        case GIS_smallChem:
            self.estimate.dataBuiltUpPlyGIS.smallChemCurb = self.gis_smallChem.text.floatValue;
            NSLog(@"common %d",self.estimate.dataBuiltUpPlyGIS.smallChemCurb);
            NSLog(@"common %@",self.gis_smallChem.text);
            break;
        case GIS_largeChem:
            self.estimate.dataBuiltUpPlyGIS.largeChemCurb = self.gis_largeChem.text.floatValue;
            NSLog(@"common %d",self.estimate.dataBuiltUpPlyGIS.largeChemCurb);
            NSLog(@"common %@",self.gis_largeChem.text);
            break;
            
        case GNC_smallChem:
            self.estimate.dataBuiltUpPlyGNC.smallChemCurb = self.gnc_smallChem.text.floatValue;
            NSLog(@"common %d",self.estimate.dataBuiltUpPlyGNC.smallChemCurb);
            NSLog(@"common %@",self.gnc_smallChem.text);
            break;
        case GNC_largeChem:
            self.estimate.dataBuiltUpPlyGNC.largeChemCurb = self.gnc_largeChem.text.floatValue;
            NSLog(@"common %d",self.estimate.dataBuiltUpPlyGNC.largeChemCurb);
            NSLog(@"common %@",self.gnc_largeChem.text);
            break;
            
        case GNS_smallChem:
            self.estimate.dataBuiltUpPlyGNS.smallChemCurb = self.gns_smallChem.text.floatValue;
            NSLog(@"common %d",self.estimate.dataBuiltUpPlyGNC.smallChemCurb);
            NSLog(@"common %@",self.gns_smallChem.text);
            break;
        case GNS_largeChem:
            self.estimate.dataBuiltUpPlyGNS.largeChemCurb = self.gns_largeChem.text.floatValue;
            NSLog(@"common %d",self.estimate.dataBuiltUpPlyGNS.largeChemCurb);
            NSLog(@"common %@",self.gns_largeChem.text);
            break;
            
        case COATING_penetration:
            self.estimate.dataCoatings.penetrationsSeal = self.coating_penetration.text.floatValue;
            NSLog(@"common %d",self.estimate.dataCoatings.penetrationsSeal);
            NSLog(@"common %@",self.coating_penetration.text);
            break;
            
        case COATING_smallChem:
            self.estimate.dataCoatings.smallChemCurb = self.coating_smallChem.text.floatValue;
            NSLog(@"common %d",self.estimate.dataCoatings.smallChemCurb);
            NSLog(@"common %@",self.coating_smallChem.text);
            break;
        case COATING_largeChem:
            self.estimate.dataCoatings.largeChemCurb = self.coating_largeChem.text.floatValue;
            NSLog(@"common %d",self.estimate.dataCoatings.largeChemCurb);
            NSLog(@"common %@",self.coating_largeChem.text);
            break;
            
        case DL_wallsqs:
            self.estimate.dataDuroLast.wallSQS = self.dl_wallsqs.text.floatValue;
            NSLog(@"common %f",self.estimate.dataDuroLast.wallSQS);
            NSLog(@"common %@",self.dl_wallsqs.text);
            break;
        case DL_wallHeight:
            self.estimate.dataDuroLast.wallHeight = self.dl_wallHeight.text.floatValue;
            NSLog(@"common %f",self.estimate.dataDuroLast.wallHeight);
            NSLog(@"common %@",self.dl_wallHeight.text);
            break;
        case DL_curbFlash:
            self.estimate.dataDuroLast.curbFlashings = self.dl_curbFlash.text.floatValue;
            NSLog(@"common %d",self.estimate.dataDuroLast.curbFlashings);
            NSLog(@"common %@",self.dl_curbFlash.text);
            break;
        case DL_acUnits:
            self.estimate.dataDuroLast.acUnits = self.dl_acUnits.text.floatValue;
            NSLog(@"common %d",self.estimate.dataDuroLast.acUnits);
            NSLog(@"common %@",self.dl_acUnits.text);
            break;
        case DL_pipeBoots:
            self.estimate.dataDuroLast.pipeBoots = self.dl_pipeBoots.text.floatValue;
            NSLog(@"common %d",self.estimate.dataDuroLast.pipeBoots);
            NSLog(@"common %@",self.dl_pipeBoots.text);
            break;
        case DL_insuSQS:
            self.estimate.dataDuroLast.insuSQS = self.dl_insuSQS.text.floatValue;
            NSLog(@"common %f",self.estimate.dataDuroLast.insuSQS);
            NSLog(@"common %@",self.dl_insuSQS.text);
            break;
        case DL_slipSheet:
            self.estimate.dataDuroLast.slipSheet = self.dl_slipSheet.text.floatValue;
            NSLog(@"common %f",self.estimate.dataDuroLast.slipSheet);
            NSLog(@"common %@",self.dl_slipSheet.text);
            break;
        case DL_walkPad:
            self.estimate.dataDuroLast.walkPads = self.dl_walkPad.text.floatValue;
            NSLog(@"common %f",self.estimate.dataDuroLast.walkPads);
            NSLog(@"common %@",self.dl_walkPad.text);
            break;
        case DL_rollMem:
            self.estimate.dataDuroLast.rollsSixMembrane = self.dl_rollMem.text.floatValue;
            NSLog(@"common %f",self.estimate.dataDuroLast.rollsSixMembrane);
            NSLog(@"common %@",self.dl_rollMem.text);
            break;
        case DL_galBond:
            self.estimate.dataDuroLast.galBondingAdhesive = self.dl_galBond.text.floatValue;
            NSLog(@"common %f",self.estimate.dataDuroLast.galBondingAdhesive);
            NSLog(@"common %@",self.dl_galBond.text);
            break;
        case DL_screws:
            self.estimate.dataDuroLast.screws = self.dl_screws.text.floatValue;
            NSLog(@"common %d",self.estimate.dataDuroLast.screws);
            NSLog(@"common %@",self.dl_screws.text);
            break;
        case DL_polyPlates:
            self.estimate.dataDuroLast.polyPlates = self.dl_polyPlates.text.floatValue;
            NSLog(@"common %d",self.estimate.dataDuroLast.polyPlates);
            NSLog(@"common %@",self.dl_polyPlates.text);
            break;
        case DL_tubeCaulk:
            self.estimate.dataDuroLast.tubesCaulk = self.dl_tubeCaulk.text.floatValue;
            NSLog(@"common %d",self.estimate.dataDuroLast.tubesCaulk);
            NSLog(@"common %@",self.dl_tubeCaulk.text);
            break;
        case DL_pailStrip:
            self.estimate.dataDuroLast.pailsStripMastic = self.dl_pailStrip.text.floatValue;
            NSLog(@"common %d",self.estimate.dataDuroLast.pailsStripMastic);
            NSLog(@"common %@",self.dl_pailStrip.text);
            break;
        case DL_pitchPan:
            self.estimate.dataDuroLast.pitchPanFiller = self.dl_pitchPan.text.floatValue;
            NSLog(@"common %d",self.estimate.dataDuroLast.pitchPanFiller);
            NSLog(@"common %@",self.dl_pitchPan.text);
            break;
        case DL_cleaner:
            self.estimate.dataDuroLast.cleaner = self.dl_cleaner.text.floatValue;
            NSLog(@"common %f",self.estimate.dataDuroLast.cleaner);
            NSLog(@"common %@",self.dl_cleaner.text);
            break;
        case DL_bagBands:
            self.estimate.dataDuroLast.bagBands = self.dl_bagBands.text.floatValue;
            NSLog(@"common %f",self.estimate.dataDuroLast.bagBands);
            NSLog(@"common %@",self.dl_bagBands.text);
            break;
        case DL_woodBlock:
            self.estimate.dataDuroLast.woodBlocking = self.dl_woodBlock.text.floatValue;
            NSLog(@"common %d",self.estimate.dataDuroLast.woodBlocking);
            NSLog(@"common %@",self.dl_woodBlock.text);
            break;
        case DL_drainRings:
            self.estimate.dataDuroLast.drainRings = self.dl_drainRings.text.floatValue;
            NSLog(@"common %d",self.estimate.dataDuroLast.drainRings);
            NSLog(@"common %@",self.dl_drainRings.text);
            break;
        case DL_sheetCover:
            self.estimate.dataDuroLast.sheetsCoverBoard = self.dl_sheetCover.text.floatValue;
            NSLog(@"common %d",self.estimate.dataDuroLast.sheetsCoverBoard);
            NSLog(@"common %@",self.dl_sheetCover.text);
            break;
            
        case COLD_baseFlash:
            self.estimate.dataThreePlyCold.baseFlashSQS = self.cold_baseFlash.text.floatValue;
            NSLog(@"common %f",self.estimate.dataThreePlyCold.baseFlashSQS);
            NSLog(@"common %@",self.cold_baseFlash.text);
            break;
        case COLD_acUnits:
            self.estimate.dataThreePlyCold.acUnits = self.cold_acUnits.text.floatValue;
            NSLog(@"common %d",self.estimate.dataThreePlyCold.acUnits);
            NSLog(@"common %@",self.cold_acUnits.text);
            break;
        case COLD_pitchPans:
            self.estimate.dataThreePlyCold.pitchPans = self.cold_pitchPans.text.floatValue;
            NSLog(@"common %d",self.estimate.dataThreePlyCold.pitchPans);
            NSLog(@"common %@",self.cold_pitchPans.text);
            break;
        case COLD_roofJacks:
            self.estimate.dataThreePlyCold.roofJacks = self.cold_roofJacks.text.floatValue;
            NSLog(@"common %d",self.estimate.dataThreePlyCold.roofJacks);
            NSLog(@"common %@",self.cold_roofJacks.text);
            break;
        case COLD_drainScup:
            self.estimate.dataThreePlyCold.drainScuppers = self.cold_drainScup.text.floatValue;
            NSLog(@"common %d",self.estimate.dataThreePlyCold.drainScuppers);
            NSLog(@"common %@",self.cold_drainScup.text);
            break;
        case FOAM_baseFlash:
            self.estimate.dataFoam.baseFlashSQS = self.foam_baseFlash.text.floatValue;
            NSLog(@"common %f",self.estimate.dataFoam.baseFlashSQS);
            NSLog(@"common %@",self.foam_baseFlash.text);
            break;
        case FOAM_wallHeight:
            self.estimate.dataFoam.wallHeight = self.foam_wallHeight.text.floatValue;
            NSLog(@"common %f",self.estimate.dataFoam.wallHeight);
            NSLog(@"common %@",self.foam_wallHeight.text);
            break;
        case FOAM_pipes:
            self.estimate.dataFoam.pipes = self.foam_pipes.text.floatValue;
            NSLog(@"common %d",self.estimate.dataFoam.pipes);
            NSLog(@"common %@",self.foam_pipes.text);
            break;
        case FOAM_acUnits:
            self.estimate.dataFoam.acUnits = self.foam_acUnits.text.floatValue;
            NSLog(@"common %d",self.estimate.dataFoam.acUnits);
            NSLog(@"common %@",self.foam_acUnits.text);
            break;
        case FOAM_depth:
            self.estimate.dataFoam.foamDepth = self.foam_depth.text.floatValue;
            NSLog(@"common %f",self.estimate.dataFoam.foamDepth);
            NSLog(@"common %@",self.foam_depth.text);
            break;
            
        case PVC_pipeBoots:
            self.estimate.dataSinglePlyPVC.pipeBoots = self.pvc_pipeBoots.text.floatValue;
            NSLog(@"common %d",self.estimate.dataSinglePlyPVC.pipeBoots);
            NSLog(@"common %@",self.pvc_pipeBoots.text);
            break;
        case PVC_walkPads:
            self.estimate.dataSinglePlyPVC.walkPads = self.pvc_walkPads.text.floatValue;
            NSLog(@"common %f",self.estimate.dataSinglePlyPVC.walkPads);
            NSLog(@"common %@",self.pvc_walkPads.text);
            break;
            
        case TPO_pipeBoots:
            self.estimate.dataSinglePlyTPO.pipeBoots = self.tpo_pipeBoots.text.floatValue;
            NSLog(@"common %d",self.estimate.dataSinglePlyTPO.pipeBoots);
            NSLog(@"common %@",self.tpo_pipeBoots.text);
            break;
        case TPO_walkPads:
            self.estimate.dataSinglePlyTPO.walkPads = self.tpo_walkPads.text.floatValue;
            NSLog(@"common %f",self.estimate.dataSinglePlyTPO.walkPads);
            NSLog(@"common %@",self.tpo_walkPads.text);
            break;
        case TORCH_baseFlash:
            self.estimate.dataTorch.baseFlashSQS = self.torch_baseFlash.text.floatValue;
            NSLog(@"common %f",self.estimate.dataTorch.baseFlashSQS);
            NSLog(@"common %@",self.torch_baseFlash.text);
            break;
        case TORCH_acUnits:
            self.estimate.dataTorch.acUnits = self.torch_acUnits.text.floatValue;
            NSLog(@"common %d",self.estimate.dataTorch.acUnits);
            NSLog(@"common %@",self.torch_acUnits.text);
            break;
        case TORCH_pitchPans:
            self.estimate.dataTorch.pitchPans = self.torch_pitchPans.text.floatValue;
            NSLog(@"common %d",self.estimate.dataTorch.pitchPans);
            NSLog(@"common %@",self.torch_pitchPans.text);
            break;
        case TORCH_roofJacks:
            self.estimate.dataTorch.roofJacks = self.torch_roofJacks.text.floatValue;
            NSLog(@"common %d",self.estimate.dataTorch.roofJacks);
            NSLog(@"common %@",self.torch_roofJacks.text);
            break;
        case TORCH_drainLeads:
            self.estimate.dataTorch.drainLeads = self.torch_drainLeads.text.floatValue;
            NSLog(@"common %f",self.estimate.dataTorch.drainLeads);
            NSLog(@"common %@",self.torch_drainLeads.text);
            break;
        }
}


    
- (IBAction)saveDoc:(id)sender {
    
     NSLog(@"doc %@", estimate.dataCommon);
    Proposal *newdoc = [[Proposal alloc]initWithTitle:estimate.dataCommon.jobName estimate:estimate];
    
    NSLog(@"doc %@", newdoc);
     NSLog(@"doc %@", newdoc.data.title);
    estimate.saved = 1;
    NSString* docPath = [newdoc saveData];
    NSString *subject = [NSString stringWithFormat:@"%@%@" , @"Estimate for ", estimate.dataCommon.jobName];
    //SEND MAIIL
        MFMailComposeViewController *mailComposer = [[MFMailComposeViewController alloc] init];
    mailComposer.mailComposeDelegate = self;
       // [mailComposer setMailComposeDelegate:self];
        if ([MFMailComposeViewController canSendMail]) {
            [mailComposer setToRecipients:[NSArray arrayWithObjects:@"", nil]];
            [mailComposer setSubject:subject];
            [mailComposer setMessageBody:@" Enter message here" isHTML:NO];
            [mailComposer setModalTransitionStyle:UIModalTransitionStyleCrossDissolve];
            //[mailComposer ]
            
            
           // NSString *path = [[NSBundle mainBundle] pathForResource:@"Answer" ofType:@"plist"];
            NSData *myData = [NSData dataWithContentsOfFile:docPath];
            [mailComposer addAttachmentData:myData mimeType:@"application/xml" fileName:@"data.plist"];
            
            [self presentModalViewController:mailComposer animated:YES];
        }
}

-(void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error{
    if(error) NSLog(@"ERROR - mailComposeController: %@", [error localizedDescription]);
    [self dismissModalViewControllerAnimated:YES];
    
    MasterViewController *myController = [self.storyboard instantiateViewControllerWithIdentifier:@"Master"];
    [self.navigationController pushViewController: myController animated:YES];
    //application:didFinishLaunchingWithOptions:
    //[self.navigationController popToRootViewControllerAnimated:NO];
   //  self.window.rootViewController = [[MasterViewController alloc] initWithNibName:nil bundle:nil];
    
    //AppDelegate *delegate;
   // [delegate firstViewController];
    
    
//    AppDelegate *appDelegate = (AppDelegate *)([UIApplication sharedApplication].delegate);
//    [appDelegate.navigationController popToRootViewControllerAnimated:NO];
//    UIViewController *topViewController = appDelegate.navigationController.topViewController;
//    Class class = [topViewController class];
//    NSString *nibName = topViewController.nibName;
//    UIViewController *rootViewcontroller = (UIViewController *)([[class alloc] initWithNibName:nibName bundle:nil]);
//    [appDelegate.navigationController.view removeFromSuperview];
//    appDelegate.navigationController.viewControllers = [NSArray arrayWithObject:rootViewcontroller];
//    [appDelegate.window addSubview:appDelegate.navigationController.view];
//    [appDelegate.window makeKeyAndVisible];
    return;
}

-(void)tap:(UIGestureRecognizer*)gr{
    [self.view endEditing:YES];
    
}



-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField  {
    [textField resignFirstResponder];
    return NO;
}


@end
