//
//  EditViewController.h
//  AHPinBrowser
//
//  Created by Andrew HoChoy on 11/21/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PinBrowser.h"
#import "PinViewController.h"


@interface EditViewController : PinViewController <UITextFieldDelegate>

@property (nonatomic, retain) PinBrowser *myPinBrowser;
@property (retain, nonatomic) IBOutlet UITextField *textFeild;

@end
