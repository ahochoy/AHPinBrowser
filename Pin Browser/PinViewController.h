//  PROGRAMMER(S):  Andrew HoChoy
//  PANTHERID:      1569034
//  CLASS:          COP 4655
//  INSTRUCTOR:     Steven Luis ECS 282
//  ASSIGNMENT:     #5 Pin Browser
//  DUE:            Thursday 11/10

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
