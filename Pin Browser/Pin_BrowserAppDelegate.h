//  PROGRAMMER(S):  Andrew HoChoy
//  PANTHERID:      1569034
//  CLASS:          COP 4655
//  INSTRUCTOR:     Steven Luis ECS 282
//  ASSIGNMENT:     #5 Pin Browser
//  DUE:            Thursday 11/10

#import <UIKit/UIKit.h>

@class Pin_BrowserViewController;

@interface Pin_BrowserAppDelegate : NSObject <UIApplicationDelegate> {
    
    UIWindow *window;
    Pin_BrowserViewController *viewController;

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet Pin_BrowserViewController *viewController;

@end
