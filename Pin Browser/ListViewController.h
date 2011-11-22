//  PROGRAMMER(S):  Andrew HoChoy
//  PANTHERID:      1569034
//  CLASS:          COP 4655
//  INSTRUCTOR:     Steven Luis ECS 282
//  ASSIGNMENT:     #5 Pin Browser
//  DUE:            Thursday 11/10

#import <UIKit/UIKit.h>
#import "PinBrowser.h"

@interface ListViewController : UIViewController

@property (nonatomic, retain) PinBrowser *myPinBrowser;
@property (retain, nonatomic) IBOutletCollection(UILabel) NSArray *pinList;

@end
