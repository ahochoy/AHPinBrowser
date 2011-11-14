//  PROGRAMMER(S):  Andrew HoChoy
//  PANTHERID:      1569034
//  CLASS:          COP 4655
//  INSTRUCTOR:     Steven Luis ECS 282
//  ASSIGNMENT:     #5 Pin Browser
//  DUE:            Thursday 11/10

#import <UIKit/UIKit.h>
#import "PinBrowser.h"
#import "BrowserViewController.h"

@interface PinViewController : UIViewController <UIAlertViewDelegate> {
    NSArray *labelCollection;
    NSMutableArray *pin;
    PinBrowser *myPinBrowser;
    BrowserViewController *bvController;
}

@property (nonatomic, retain) IBOutlet UIButton *goButton;
@property (nonatomic, retain) IBOutletCollection(UILabel) NSArray *labelCollection;
@property (nonatomic, retain) NSMutableArray *pin;
@property (nonatomic, retain) PinBrowser *myPinBrowser;
@property (nonatomic, retain) BrowserViewController *bvController;


- (IBAction)goToURL:(id)sender; // Checks for Valid Pin, then sets URL in Browser View and swaps view...
- (IBAction)touchKey:(id)sender; // Registers key pad press

@end
