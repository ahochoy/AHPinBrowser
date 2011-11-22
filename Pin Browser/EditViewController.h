//  PROGRAMMER(S):  Andrew HoChoy
//  PANTHERID:      1569034
//  CLASS:          COP 4655
//  INSTRUCTOR:     Steven Luis ECS 282
//  ASSIGNMENT:     #5 Pin Browser
//  DUE:            Thursday 11/10

#import <UIKit/UIKit.h>
#import "PinBrowser.h"
#import "PinViewController.h"


@interface EditViewController : PinViewController <UITextFieldDelegate>

@property (nonatomic, retain) PinBrowser *myPinBrowser;
@property (retain, nonatomic) IBOutlet UITextField *textFeild;

@end
