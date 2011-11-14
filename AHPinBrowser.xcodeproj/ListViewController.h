//  PROGRAMMER(S):  Andrew HoChoy
//  PANTHERID:      1569034
//  CLASS:          COP 4655
//  INSTRUCTOR:     Steven Luis ECS 282
//  ASSIGNMENT:     #5 Pin Browser
//  DUE:            Thursday 11/10

#import <UIKit/UIKit.h>
@class PinBrowser;

@interface ListViewController : UIViewController {
    
    PinBrowser *myPinBrowser;
    NSArray *linkList;
    
}

@property (nonatomic, retain) PinBrowser *myPinBrowser;
@property (retain, nonatomic) IBOutletCollection(UILabel) NSArray *linkList;

@end
