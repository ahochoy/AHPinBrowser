//  PROGRAMMER(S):  Andrew HoChoy
//  PANTHERID:      1569034
//  CLASS:          COP 4655
//  INSTRUCTOR:     Steven Luis ECS 282
//  ASSIGNMENT:     #5 Pin Browser
//  DUE:            Thursday 11/10

#import <UIKit/UIKit.h>

@class PinViewController;
@class BrowserViewController;
@class ListViewController;
@class EditViewController;
@class PinBrowser;

@interface Pin_BrowserViewController : UIViewController {
    
    PinViewController *pinViewController;
    BrowserViewController *browserViewController;
    ListViewController *listViewController;
    EditViewController *editViewController;
    PinBrowser *myPinBrowser;
    
}

@property (nonatomic, retain) PinViewController *pinViewController;
@property (nonatomic, retain) BrowserViewController *browserViewController;
@property (nonatomic, retain) ListViewController *listViewController;
@property (nonatomic, retain) EditViewController *editViewController;
@property (nonatomic, retain) PinBrowser *myPinBrowser;

-(IBAction)switchToPin:(id)sender;
-(IBAction)switchToBrowser:(id)sender;
-(IBAction)switchToList:(id)sender;
-(IBAction)switchToEdit:(id)sender;

@end
