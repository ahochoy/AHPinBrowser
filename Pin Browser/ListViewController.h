//
//  ListViewController.h
//  AHPinBrowser
//
//  Created by Andrew HoChoy on 11/21/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PinBrowser.h"

@interface ListViewController : UIViewController

@property (nonatomic, retain) PinBrowser *myPinBrowser;
@property (retain, nonatomic) IBOutletCollection(UILabel) NSArray *pinList;

@end
