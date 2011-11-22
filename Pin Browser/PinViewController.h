//
//  PinViewController.h
//  AHPinBrowser
//
//  Created by Andrew HoChoy on 11/21/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PinBrowser.h"
#import "BrowserViewController.h"

@interface PinViewController : UIViewController <UIAlertViewDelegate>{
    
    NSMutableArray *pin;
    
}

@property (nonatomic, retain) NSMutableArray *pin;
@property (nonatomic, retain) PinBrowser *myPinBrowser;
@property (retain, nonatomic) IBOutletCollection(UILabel) NSArray *pinDisplay;
@property (nonatomic, retain) BrowserViewController *bvController;

- (IBAction)pressKey:(id)sender;
- (IBAction)pressGo:(id)sender;

@end
