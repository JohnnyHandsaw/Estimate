//
//  StaticTableViewController.h
//  Estimate
//
//  Created by Daniel Hahn on 9/3/13.
//  Copyright (c) 2013 StarkWeather. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Estimate;

@interface StaticTableViewController : UITableViewController<UITextFieldDelegate, UIPickerViewDelegate,UIPickerViewDataSource> {
    
    UIPickerView *pickerView;
    //UITextView *standardKeyBoard;
    NSMutableArray *cityOptions;
    NSMutableArray *deckTypeArray;
}
@property (strong, nonatomic) Estimate * estimate;
@property (strong, nonatomic) NSArray *optionsArray;
@property (strong, nonatomic) NSArray *deckTypeArray;
@property (nonatomic) UIPickerView *pickerView;
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


- (IBAction)city:(id)sender;
- (IBAction)deckTypeEdit:(id)sender;
-(IBAction)pickerDoneClicked:(id)sender;
-(IBAction)standardKeyBoardDone:(id)sender;
-(IBAction)decimalKeyBoard:(id)sender;
@end
