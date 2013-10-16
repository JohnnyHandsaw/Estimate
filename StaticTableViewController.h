//
//  StaticTableViewController.h
//  Estimate
//
//  Created by Daniel Hahn on 9/3/13.
//  Copyright (c) 2013 StarkWeather. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>
@class Estimate;
@class Proposal;

@interface StaticTableViewController : UITableViewController<UITextFieldDelegate, UIPickerViewDelegate,UIPickerViewDataSource> {
    Proposal* doc;
    UIView *release;
    UIButton *done;
    UIPickerView *pickerView;
    //UITextView *standardKeyBoard;
    NSMutableArray *cityOptions;
    NSMutableArray *deckTypeArray;
    NSMutableArray *pickerArray;
}
@property (strong, nonatomic) Estimate * estimate;
@property (strong, nonatomic) Proposal * doc;
@property (strong, nonatomic) NSArray *optionsArray;
@property (strong, nonatomic) NSArray *deckTypeArray;
@property (strong, nonatomic) NSArray *pickerArray;
@property (nonatomic) UIPickerView *pickerView;
@property (nonatomic, retain) UIView *inputView;
@property (nonatomic, retain) UIView *release;
@property (nonatomic, retain) UIView *done;
//@property  (nonatomic) UITextView *standardKeyBoard;
@property (nonatomic) NSMutableArray *cityOptions;

@property (weak, nonatomic) IBOutlet UITextField *city;
@property (weak, nonatomic) IBOutlet UITextField *projectName;
@property (weak, nonatomic) IBOutlet UITextField *deckType;
@property (weak, nonatomic) IBOutlet UITextField *roofSQS;
@property (weak, nonatomic) IBOutlet UITextField *baseFlash;
@property (weak, nonatomic) IBOutlet UITextField *wallsFeet;
@property (weak, nonatomic) IBOutlet UITextField *curbFeet;
@property (weak, nonatomic) IBOutlet UITextField *edgeFeet;
@property (weak, nonatomic) IBOutlet UITextField *copingFeet;
@property (weak, nonatomic) IBOutlet UITextField *curbUnit;
@property (weak, nonatomic) IBOutlet UITextField *slopeUnit;
@property (weak, nonatomic) IBOutlet UITextField *leadJacks;
@property (weak, nonatomic) IBOutlet UITextField *sealantPans;
@property (weak, nonatomic) IBOutlet UITextField *drains;
@property (weak, nonatomic) IBOutlet UITextField *pipes;
@property (weak, nonatomic) IBOutlet UITextField *cladScuppers;
@property (weak, nonatomic) IBOutlet UITextField *scuppers;
@property (weak, nonatomic) IBOutlet UITextField *tTopVents;
@property (weak, nonatomic) IBOutlet UITextField *corners;
@property (weak, nonatomic) IBOutlet UITextField *skylights;
@property (weak, nonatomic) IBOutlet UITextField *skylightsReplace;

@property (weak, nonatomic) IBOutlet UITextField *tearOff;
@property (weak, nonatomic) IBOutlet UITextField *roofComplex;
@property (weak, nonatomic) IBOutlet UITextField *safetyReqs;
@property (weak, nonatomic) IBOutlet UITextField *alum_seemsFeet;
@property (weak, nonatomic) IBOutlet UITextField *alum_sideLaps;
@property (weak, nonatomic) IBOutlet UITextField *alum_manualFasteners;
@property (weak, nonatomic) IBOutlet UITextField *gic_tearOff;
@property (weak, nonatomic) IBOutlet UITextField *gic_roofComplex;
@property (weak, nonatomic) IBOutlet UITextField *gic_safetyReq;
@property (weak, nonatomic) IBOutlet UITextField *gic_roofRec;
@property (weak, nonatomic) IBOutlet UITextField *gic_manuWarranty;
@property (weak, nonatomic) IBOutlet UITextField *gic_plysheet;
@property (weak, nonatomic) IBOutlet UITextField *gic_thickBase;
@property (weak, nonatomic) IBOutlet UITextField *gic_baseApply;
@property (weak, nonatomic) IBOutlet UITextField *gic_thick2nd;
@property (weak, nonatomic) IBOutlet UITextField *gic_apply2nd;
@property (weak, nonatomic) IBOutlet UITextField *gic_thickRec;
@property (weak, nonatomic) IBOutlet UITextField *gic_recApply;
@property (weak, nonatomic) IBOutlet UITextField *gic_galCoating;
@property (weak, nonatomic) IBOutlet UITextField *gic_coatingManu;
@property (weak, nonatomic) IBOutlet UITextField *gic_smallChemCurb;
@property (weak, nonatomic) IBOutlet UITextField *gic_largeChemCurb;
@property (weak, nonatomic) IBOutlet UITextField *gis_tearOff;
@property (weak, nonatomic) IBOutlet UITextField *gis_roofComplex;

@property (weak, nonatomic) IBOutlet UITextField *gis_safetyReq;
@property (weak, nonatomic) IBOutlet UITextField *gis_roofRec;
@property (weak, nonatomic) IBOutlet UITextField *gis_manuWarranty;
@property (weak, nonatomic) IBOutlet UITextField *gis_plysheet;
@property (weak, nonatomic) IBOutlet UITextField *gis_thickBase;
@property (weak, nonatomic) IBOutlet UITextField *gis_baseApply;
@property (weak, nonatomic) IBOutlet UITextField *gis_2ndThick;
@property (weak, nonatomic) IBOutlet UITextField *gis_apply2nd;
@property (weak, nonatomic) IBOutlet UITextField *gis_recThick;
@property (weak, nonatomic) IBOutlet UITextField *gis_applyRec;
@property (weak, nonatomic) IBOutlet UITextField *gis_galCoating;
@property (weak, nonatomic) IBOutlet UITextField *gis_galAsphalt;
@property (weak, nonatomic) IBOutlet UITextField *gis_coatingManu;
@property (weak, nonatomic) IBOutlet UITextField *gis_fasteners;
@property (weak, nonatomic) IBOutlet UITextField *gis_smallChem;
@property (weak, nonatomic) IBOutlet UITextField *gis_largeChem;
@property (weak, nonatomic) IBOutlet UITextField *gnc_tearOff;
@property (weak, nonatomic) IBOutlet UITextField *gnc_roofComplex;
@property (weak, nonatomic) IBOutlet UITextField *gnc_safetyReq;
@property (weak, nonatomic) IBOutlet UITextField *gnc_roofRec;
@property (weak, nonatomic) IBOutlet UITextField *gnc_warrantyManu;
@property (weak, nonatomic) IBOutlet UITextField *gnc_plysheet;
@property (weak, nonatomic) IBOutlet UITextField *gnc_galCoating;
@property (weak, nonatomic) IBOutlet UITextField *gnc_coatingManu;
@property (weak, nonatomic) IBOutlet UITextField *gnc_smallChem;
@property (weak, nonatomic) IBOutlet UITextField *gnc_largeChem;
@property (weak, nonatomic) IBOutlet UITextField *gns_tearOff;
@property (weak, nonatomic) IBOutlet UITextField *gns_roofComplex;
@property (weak, nonatomic) IBOutlet UITextField *gns_safetyReq;
@property (weak, nonatomic) IBOutlet UITextField *gns_roofRec;
@property (weak, nonatomic) IBOutlet UITextField *gns_warrantyManu;
@property (weak, nonatomic) IBOutlet UITextField *gns_plysheet;
@property (weak, nonatomic) IBOutlet UITextField *gns_galCoating;
@property (weak, nonatomic) IBOutlet UITextField *gns_galAshpalt;
@property (weak, nonatomic) IBOutlet UITextField *gns_coatingManu;
@property (weak, nonatomic) IBOutlet UITextField *gns_smallChem;
@property (weak, nonatomic) IBOutlet UITextField *gns_largeChem;
@property (weak, nonatomic) IBOutlet UITextField *coating_tearOff;
@property (weak, nonatomic) IBOutlet UITextField *coating_roofComplex;
@property (weak, nonatomic) IBOutlet UITextField *coating_safetyReq;
@property (weak, nonatomic) IBOutlet UITextField *coating_roofRec;
@property (weak, nonatomic) IBOutlet UITextField *coating_warrantyManu;

@property (weak, nonatomic) IBOutlet UITextField *coating_primeDeck;
@property (weak, nonatomic) IBOutlet UITextField *coating_sqsBase;
@property (weak, nonatomic) IBOutlet UITextField *coating_sqsInt;
@property (weak, nonatomic) IBOutlet UITextField *coating_sqsTop;
@property (weak, nonatomic) IBOutlet UITextField *coating_coatingManu;
@property (weak, nonatomic) IBOutlet UITextField *coating_replaceMetal;
@property (weak, nonatomic) IBOutlet UITextField *coating_counterFlash;
@property (weak, nonatomic) IBOutlet UITextField *coating_newScup;
@property (weak, nonatomic) IBOutlet UITextField *coating_penetration;
@property (weak, nonatomic) IBOutlet UITextField *coating_smallChem;
@property (weak, nonatomic) IBOutlet UITextField *coating_largeChem;
@property (weak, nonatomic) IBOutlet UITextField *dl_wallsqs;
@property (weak, nonatomic) IBOutlet UITextField *dl_wallHeight;
@property (weak, nonatomic) IBOutlet UITextField *dl_curbFlash;
@property (weak, nonatomic) IBOutlet UITextField *dl_acUnits;
@property (weak, nonatomic) IBOutlet UITextField *dl_pipeBoots;
@property (weak, nonatomic) IBOutlet UITextField *dl_insuSQS;
@property (weak, nonatomic) IBOutlet UITextField *dl_slipSheet;
@property (weak, nonatomic) IBOutlet UITextField *dl_walkPad;
@property (weak, nonatomic) IBOutlet UITextField *dl_rollMem;
@property (weak, nonatomic) IBOutlet UITextField *dl_galBond;
@property (weak, nonatomic) IBOutlet UITextField *dl_screws;
@property (weak, nonatomic) IBOutlet UITextField *dl_polyPlates;
@property (weak, nonatomic) IBOutlet UITextField *dl_tubeCaulk;
@property (weak, nonatomic) IBOutlet UITextField *dl_pailStrip;
@property (weak, nonatomic) IBOutlet UITextField *dl_pitchPan;
@property (weak, nonatomic) IBOutlet UITextField *dl_cleaner;
@property (weak, nonatomic) IBOutlet UITextField *dl_bagBands;
@property (weak, nonatomic) IBOutlet UITextField *dl_woodBlock;
@property (weak, nonatomic) IBOutlet UITextField *dl_drainRings;
@property (weak, nonatomic) IBOutlet UITextField *dl_sheetCover;
@property (weak, nonatomic) IBOutlet UITextField *cold_baseFlash;
@property (weak, nonatomic) IBOutlet UITextField *cold_acUnits;
@property (weak, nonatomic) IBOutlet UITextField *cold_pitchPans;
@property (weak, nonatomic) IBOutlet UITextField *cold_roofJacks;
@property (weak, nonatomic) IBOutlet UITextField *cold_drainScup;
@property (weak, nonatomic) IBOutlet UITextField *foam_baseFlash;
@property (weak, nonatomic) IBOutlet UITextField *foam_wallHeight;
@property (weak, nonatomic) IBOutlet UITextField *foam_pipes;
@property (weak, nonatomic) IBOutlet UITextField *foam_acUnits;
@property (weak, nonatomic) IBOutlet UITextField *foam_depth;
@property (weak, nonatomic) IBOutlet UITextField *pvc_tearOff;
@property (weak, nonatomic) IBOutlet UITextField *pvc_roofComplex;
@property (weak, nonatomic) IBOutlet UITextField *pvc_safetyReq;
@property (weak, nonatomic) IBOutlet UITextField *pvc_roofRec;
@property (weak, nonatomic) IBOutlet UITextField *pvc_warrantyManu;
@property (weak, nonatomic) IBOutlet UITextField *pvc_millSheet;
@property (weak, nonatomic) IBOutlet UITextField *pvc_slipSheet;
@property (weak, nonatomic) IBOutlet UITextField *pvc_sheetManu;
@property (weak, nonatomic) IBOutlet UITextField *pvc_thickBase;
@property (weak, nonatomic) IBOutlet UITextField *pvc_baseApply;
@property (weak, nonatomic) IBOutlet UITextField *pvc_2ndthick;
@property (weak, nonatomic) IBOutlet UITextField *pvc_2ndApply;
@property (weak, nonatomic) IBOutlet UITextField *pvc_recThick;
@property (weak, nonatomic) IBOutlet UITextField *pvc_recApply;
@property (weak, nonatomic) IBOutlet UITextField *pvc_seamFast;
@property (weak, nonatomic) IBOutlet UITextField *pvc_cricket;
@property (weak, nonatomic) IBOutlet UITextField *pvc_perimSheet;
@property (weak, nonatomic) IBOutlet UITextField *pvc_pipeBoots;
@property (weak, nonatomic) IBOutlet UITextField *pvc_walkPads;
@property (weak, nonatomic) IBOutlet UITextField *tpo_tearOff;
@property (weak, nonatomic) IBOutlet UITextField *tpo_roofComplex;
@property (weak, nonatomic) IBOutlet UITextField *tpo_safetyReq;
@property (weak, nonatomic) IBOutlet UITextField *tpo_roofRec;
@property (weak, nonatomic) IBOutlet UITextField *tpo_warrantyManu;
@property (weak, nonatomic) IBOutlet UITextField *tpo_millSheet;
@property (weak, nonatomic) IBOutlet UITextField *tpo_slipSheet;
@property (weak, nonatomic) IBOutlet UITextField *tpo_sheetManu;
@property (weak, nonatomic) IBOutlet UITextField *tpo_thickbase;
@property (weak, nonatomic) IBOutlet UITextField *tpo_baseApply;
@property (weak, nonatomic) IBOutlet UITextField *tpo_2ndthick;
@property (weak, nonatomic) IBOutlet UITextField *tpo_2ndApply;
@property (weak, nonatomic) IBOutlet UITextField *tpo_recThick;
@property (weak, nonatomic) IBOutlet UITextField *tpo_recApply;
@property (weak, nonatomic) IBOutlet UITextField *tpo_seamFast;
@property (weak, nonatomic) IBOutlet UITextField *tpo_cricket;
@property (weak, nonatomic) IBOutlet UITextField *tpo_perimSheet;
@property (weak, nonatomic) IBOutlet UITextField *tpo_pipeBoots;
@property (weak, nonatomic) IBOutlet UITextField *tpo_walkPads;
@property (weak, nonatomic) IBOutlet UITextField *torch_baseFlash;
@property (weak, nonatomic) IBOutlet UITextField *torch_acUnits;
@property (weak, nonatomic) IBOutlet UITextField *torch_pitchPans;
@property (weak, nonatomic) IBOutlet UITextField *torch_roofJacks;
@property (weak, nonatomic) IBOutlet UITextField *torch_drainLeads;

-(IBAction)picker:(id)sender;
- (IBAction)fieldChange:(id)sender;
- (IBAction)textChange:(id)sender;

//- (IBAction)city:(id)sender;
//- (IBAction)deckTypeEdit:(id)sender;
//-(IBAction)pickerDoneClicked:(id)sender;
//-(IBAction)standardKeyBoardDone:(id)sender;
//-(IBAction)decimalKeyBoard:(id)sender;
//-(void)createAccessory;

//- (IBAction)tearOffEdit:(id)sender;
//- (IBAction)roofComplexEdit:(id)sender;
//- (IBAction)safetyReqsEdit:(id)sender;



-(IBAction)saveDoc:(id)sender;
- (void)mailComposeController:(MFMailComposeViewController*)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError*)error;
@end
