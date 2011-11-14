//  PROGRAMMER(S):  Andrew HoChoy
//  PANTHERID:      1569034
//  CLASS:          COP 4655
//  INSTRUCTOR:     Steven Luis ECS 282
//  ASSIGNMENT:     #5 Pin Browser
//  DUE:            Thursday 11/10

#import <UIKit/UIKit.h>
#include "PinViewController.h"


@interface EditViewController : PinViewController <UITextFieldDelegate> {
    
    UITextField *textBar;
    PinBrowser *myOtherPinBrowser;
    
}

@property (retain, nonatomic) IBOutlet UITextField *textBar;

@end
